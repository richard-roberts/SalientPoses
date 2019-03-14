---
layout: single
author_profile: false
permalink: /
title: At a Glance
---

#### Overview

Salient Poses converts hard-to-edit mocap
into easy-to-edit keyframe animation. 
The idea is that you provide an animation,
which Salient Poses analyzes to find 
potential sets of
[keyframes]([keyframes](https://en.wikipedia.org/wiki/Key_frame)).
You choose any set of keyframes that's best for your use case
and, from there, Salient Poses creates a new easy-to-edit animation for you.
The new animation is similar to a
[blocked animation](https://en.wikipedia.org/wiki/Blocking_(animation)),
but with all the detail of a real performance.

![Before and After]({{ site.url }}/images/salient_before_and_after_small.png)

Before and after applying Salient Poses.
The white dots show the data;
one dot for each keyed in value.
Notice that the "after" image has fewer dots while
preserving the shape of each curve.

#### Why It's Good

After applying Salient Poses,
the simplified animation has fewer keyframes.
This is great for editing because
the simplified animation can be adjusted using
the time-tested keyframe animation techniques
build into most animation tools, such as 
[Maya](https://www.autodesk.co.nz/products/maya/overview)
or 
[Blender](https://www.blender.org/).
Having fewer keyframes is also great for compression
as the new animation contains fewer data.

#### How It works

Given mocap,
Salient Poses performs an **optimal keyframe-reduction**.
The idea of the reduction is that we keep only the
**most important keyframes**.
Salient Poses provides not only one solution
but an **entire range of solutions**
(the different solutions offer different levels of compression).
After you choose the right solution for you,
Salient Poses performs **curve fitting** to replace all non-keyframes with
[inbetweens](https://en.wikipedia.org/wiki/Inbetweening)
that are configured to best recreate the original animation.

<br />

# Getting Started

If you're a technical artist, a hobbyist, or are otherwise interested
in using Salient Poses I'd recommend starting with the interactive
[Maya Plugin](https://github.com/richard-roberts/SalientPosesMaya).
Otherwise, developers looking to automate the process might be more
interested in the 
[Command Line Interface](https://github.com/richard-roberts/SalientPosesPerformance). 

Otherwise, if you're want to read more about the algorithm 
you might be interested to check out
the [algorithm](/algorithm/) page for a more detailed overview
of Salient Poses
and also the [results](/results/) page to see some
interactive examples.

<br />

# Get in Touch

Beyond that, anyone is welcome to join our 
[Slack Community](https://join.slack.com/t/salientposes/shared_invite/enQtNDU1MTM0Nzk4Mjk0LWY5MzlhYTNkMjAzM2ZkYWNmNjY5YWViNWMzZDVkNzkxYTFlYmFjMjAxZWUzOGM4MzQ0OGU0YThmM2I5N2Y1MTI)
and talk with me directly - 
any of your questions, feature requests, critique,
or general chat are most welcome!

<br />

# Acknowledgments

[Richard Roberts](http://richardroberts.co.nz/)
developed Salient Poses during his doctorate study at
[Victoria University of Wellington](https://www.victoria.ac.nz/).
Taking inspiration from a 
[SIGGRAPH sketch](https://dl.acm.org/citation.cfm?id=1667198),
Richard designed the algorithm as a new approach to 
compressing and editing motion capture animation.

Throughout the process,
[John Lewis](http://www.scribblethink.org/)
supervised the project,
helping out with both the high-level theory
and also the nuts of bolts are the programming
(Lewis is now a lead researcher at [SEED, Electronic Arts](https://www.ea.com/seed)).
The research team at [OLM Digital](https://www.olm.co.jp/?lang=en) -
especially [Ken Anjyo](https://www.victoria.ac.nz/engineering/about/staff/ken-anjyo),
who created and lead the team -
contributed invaluable industry expertise and perspective to the research.
Finally,
Jaewoo Seo and Yeongho Seol
reviewed the work many times over
and contributed both feedback and code snippets from the sidelines.

Outside of the everyone above,
we call special thanks to
Ayumi Kimura and other staff at [OLM Digital](https://www.olm.co.jp/?lang=en),
along with artists and researchers at
[SEED, Electronic Arts](https://www.ea.com/seed),
[Weta Digital](https://www.wetafx.co.nz/),
and Victoria University of Wellington's 
[Computational Media Innovation Centre](https://www.victoria.ac.nz/engineering/research-centres/computational-media-innovation)
and [Virtual World's Lab](https://www.victoria.ac.nz/design/research/virtual-world-lab). 
With the help of these people, 
the research would have been able to succeed.
