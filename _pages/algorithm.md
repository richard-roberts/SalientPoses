---
layout: single
author_profile: false
permalink: /algorithm/
title: Algorithm
---

As briefly outlined on the [home page](/),
the Salient Poses algorithm first analyzes
the motion capture animation to identity
potential sets of keyframes
that can be used to reconstruct the animation.
As the user,
you are expected to choose the particular set of keyframes
best to your editing task.
From there,
the algorithm creates a simplified animation
using contains only these keyframes.
In the simplified animation,
the inbetweens are tweaked to best
recreate the original animation.

In this page, 
we dive deeper into the technical details of the algorithm.
Next we will outline the steps used during execution,
and then describe each one in detail.
If you're looking for more information,
don't forget to check out the 
[paper](/paper).

![[Image, Steps of the Algorithm]](/images/salient_steps.png)

The steps performed by of the Salient Poses
are best described as **analysis**, **selection**, **user choice**,
and **reduction**.

Analysis is the
process of evaluating
how well each pair of keyframes describes the motion.
In selection, we use
[dynamic programming](https://en.wikipedia.org/wiki/Dynamic_programming)
to compose an **optimal set of keyframes** for
each level of compression.
Next, the user chooses
the particular set of keyframes
best suited to their task.
And, finally, reduction is
the process of replacing non-keyframes
with automatically generated in-betweens.

## Analysis

The first step is to evaluate
how important each of the mocap's keyframes are.
In our current design,
we do this by estimating how well every possible pair of keyframes
approximates the motion between them.
In particular, 
we form high-dimensional points from the poses of these keyframes
and then interpolate them to form a high-dimensional line.
We then compare this line against each of the poses of the
frames between those keyframes, 
in which each pose forms another high-dimensional point.
This formulation is useful, 
because it provides a geometric definition of what it means for
keyframes to be important: 
a pair of keyframes is important
when all poses between the keyframes
are close to the interpolating line.

With the definition given above,
this first analysis step can be performed by iterating
through the pairs of keyframes and measuring the
point-to-line distance described above.

Here's the idea written down in [Python](https://www.python.org/) code, 
in which we build an `error table` that records the error
between the line spanning the keyframes and
the frames between them.
In this case error corresponds to the point-to-line distance 
and important is high when the error is low.

```python
# Create a table of measuring error for each
# pair of keyframes.
def create_error_table():

    table = {}
    for pair in pairs_of_keyframes:

        # Calculate error as the largest point-to-line distance
        error = 0
        line = interpolate(pair)
        for frame in frames_between(pair):
            distance = point_to_line_distance(pair, frame)
            if distance > error:
                error = distance

        # Save the error to the table
        table[pair] = error

    return table
```

And that's it for the first step.
Note that there is no reason why we have to use this 
particular definition of *importance*. 
In fact, inspired by optimization methods, 
we intentionally designed Salient Poses to be able
to use other definitions. 
We will explore other possible
criteria for quantifying the
**usefulness of a keyframes**
in future work.

## Selection

The second step performed by Salient Poses is selection,
which is the process of choosing an optimal set of keyframes
for each level of compression
(a set of two keyframes,
a set of three keyframes, a set of four,
of five, and so on).
Here the word optimal means that each keyframe is important
or, in other words, 
that the set of keyframes minimize the total error from
the table provided by the first analysis step.

### Why is it hard?

A brute-force approach 
to find all optimal sets of keyframes -
such as iterating through all possible combinations -
is not possible.
There are simply too many possible combinations
for any computer, even a very fast one,
to step through each of the alternatives.
For what it's wroth,
the problem of finding an optimal set of keyframes
is related to the infamous NP-hard
[Travelling Salesman Problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem).

### How can we solve it then?

Thankfully,
[dynamic programming](https://en.wikipedia.org/wiki/Dynamic_programming)
comes to rescue.
By adding the constraint that the
problem has a beginning and an end -
in our case this constraints
means the first and last frames must be keyframes  -
we are able to express the problem to have something called an
[optimal substructure](https://en.wikipedia.org/wiki/Optimal_substructure).


![[Image, Dividing an Animation]](/images/salient-divide-an-animation.png)

This idea of **optimal substructure** really just means that
we can **divide the problem into smaller pieces**.
To illustrate how this division works,
imagine that we already have a simplified animation:
an animation with just, say, nine optimal keyframes.
Let's say we cut the animation in half,
with the split occurring at the fifth keyframe.
Both halves now have five keyframes.
If the original nine keyframes
for the complete animation were as good as possible,
then are the five keyframes for each half still as good as possible?
It can be hard to see at first,
but the answer is yes,
the keyframes are optimal for both halves - 
nothing has changed about the underlying motion,
there is no way that they cannot be optimal.

### And now the solution!

Being sure that we can divide the problem into smaller pieces,
we apply the dynamic programming to compose 
the optimal sets of keyframes.
The **key idea** is to solve the
smallest possible problem
and then **use the solution to help with
solving the bigger problem**.

### Now for the hard part

Okay, so now we need to put together all the pieces.
This is hardest part of the algorithm to understand.
Try to read it over a couple of times, 
but don't worry if you don't get it right away - 
it took me years to come to terms with it.
Feel free to join the
[Slack Community](https://join.slack.com/t/salientposes/shared_invite/enQtNDU1MTM0Nzk4Mjk0LWY5MzlhYTNkMjAzM2ZkYWNmNjY5YWViNWMzZDVkNzkxYTFlYmFjMjAxZWUzOGM4MzQ0OGU0YThmM2I5N2Y1MTI) 
and ask me about directly if you'd like more information.

In practice, we solve the problem by starting off small
(as small as possible)
and grow the problem bigger until we've solved the problem.

As small as possible means we slice off
just the first three keyframes of the animation.
What's the best choice of two keyframes for an
animation containing just three keyframes?
Because of the constraint we described above, 
we have to choose `{1, 3}`.
And how about three keyframes?
Well,
there's only
one choice: `{1, 2, 3}`.
<span style="color:red">
Yes, this sounds crazy,
just keep reading because it gets better.</span>
Moving up to an animation of four keyframes:
the best choice of:

- 2 keyframes is `{1, 4}`,
- 3 keyframes is `{1, ?, 4}`, and
- 4 keyframes is `{1, 2, 3, 4}`.

Hey, what about that question mark?
This is where **the magic happens**.
We already know the answer. 
We simply look back and see whether the error
(remember the analysis table) of 
`{1, 2}` 
or `{1, 3}`
was lower.
We choose the one with the least error, and 
plug that in as our solution of 3 keyframes for
this animation of 4 frames.

Moving on to five keyframes, we've got:

- 2 keyframes is `{1, 5}`,
- 3 keyframes is `{1, ?, 5}`,
- 4 keyframes is `{1, ??, 5}`, and
- 5 keyframes is `{1, 2, 3, 4, 5}`.

For the problem of 3 keyframes,
we compare `{1, 2, 3}` and `{1, ?, 4}`.
Remember,
we already solved the problem of `{1, ?, 4}`,
so we can recall that from above. 
We then solve the problem of `{1, ??, 5}` by 
examining which of the smaller solutions has the least
error: is it `{1, 2, 3}` or `{1, ?, 4}`? 

<span style="color:red">
What's happening here is that we are **substituting**
solutions from the small problems into the larger ones.
This substitution means that we are able to save
on computation by recycling previous computations.</span>

Here's another [Python](https://www.python.org/) code example,
which implements the selection step:

```python
# Use substitution to compose optimal sets of keyframes
def select_keyframes(animation):

    # Do selection for increasing number of keyframes
    for _ in range(3, len(animation)):

        # Iterate over animations, from smallest to largest
        for (start, end) in animation.slices():

            # Iterate over the inbetween frames to find
            #  the best solution of `n` keyframes for this slice
            best_error = INFINITY
            best_selection = None

            for frame in (start + 1, end):
                smaller_selection = animation.get_best_selection_between(start, frame)
                additional_error = animation.get_error_between(frame, end)

                error_for_selection = max ( small_selection.error(), additional_error )
                if error_for_selection < best_error:
                    best_error = error_for_selection
                    best_selection = animation.create_selection(smaller_selection, frame)
            
            animation.save_selection(best_selection)
```

In summary of the selection step, 
Salient Poses employs dynamic programming
to substitute choices of keyframes from
smaller slices of the animation into the choice
for successively larger slices.
By doing this,
Salient Poses can make optimal choices without sacrificing performance
(at least for the scope of problems we focus on).

## User Choice

After the selection step has finished, 
all solutions -
each optimal set of keyframes - 
are saved.
It is up to the user to decide on the particular
set that's the best for them.
There are many possible approaches to here, such as
choosing a selection by choosing a number of keyframes or perhaps
choosing the selection with the fewest keyframes that has an acceptable error.
In our [Maya implementation](https://github.com/richard-roberts/SalientPosesMaya),
the user can interactively browse the potential selections.

![[Image, Choosing a Selection]](/images/salient-choosing-a-selection.gif)

## Reduction

After the user has identified a particular set of keyframes,
the last step is to perform the reduction.
The idea of this step is to replace non-keyframes with inbetweens.

![[Image, Curves Before And After]](/images/salient-before-and-after.png)

Animation programs generate inbetweens by
interpolating through keyframes using a special type of curve
(you can see them in the image above).
Each animated property -
such as the bend of the elbow or the height of the foot -
is assigned one curve. 
Each value along these curves corresponds to the data behind
a keyframe.
From this perspective,
we can perform the reduction step
by first removing keyed values from these curves
and then tweaking the left-overs to best preserve the detail 
of our motion capture.

In practice,
Salient Poses removes everything that's not a keyframe.
One that's done, it uses the
iterative fitting step from a famous
[Graphics Gem's algorithm](https://dl.acm.org/citation.cfm?id=90941) -
its used in program's like [Adobe's Illustator](https://www.adobe.com/nz/products/illustrator.html)
to smooth hand-drawn curves -
to tweak the resulting curves so
that the best represent the original animation.

# Summary

And that's it. In summary,
Salient Poses converts 
hard-to-edit motion capture into 
easy-to-edit keyframe animation by first
assigning an error value to each pair of keyframes,
composing potential sets of keyframes using that error information,
and then performs the reduction given a particular set of keyframes.

If you're looking for more information,
you might be interested to check out the [paper](/paper).
The [results](/results) page contains a collection of before/after examples,
and finally don't forget to join the
[Slack Community](https://join.slack.com/t/salientposes/shared_invite/enQtNDU1MTM0Nzk4Mjk0LWY5MzlhYTNkMjAzM2ZkYWNmNjY5YWViNWMzZDVkNzkxYTFlYmFjMjAxZWUzOGM4MzQ0OGU0YThmM2I5N2Y1MTI) 
if you've got questions!


