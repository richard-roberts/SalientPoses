---
layout: single
author_profile: false
permalink: /
---

<h4>Salient Poses</h4> converts hard-to-edit mocap
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

<h2 id="academicwork">Academic Work</h2> 

[A tool for analyzing animation through the relative importance of keyposes](https://dl.acm.org/citation.cfm?id=3365155)<br>
Nicolas Nghiem, Richard Roberts, J.P. Lewis, Junyong Noh<br>
SIGGRAPH Asia '19<br>
2019.11


[Optimal and Interactive Keyframe Selection for Motion Capture](https://link.springer.com/journal/41095)<br>
Richard Roberts, J.P. Lewis, Ken Anjyo, Jaewoo Seo, and Yeongho Seol<br>
Computational Visual Media<br>
2019.06


[Optimal and Interactive Keyframe Selection for Motion Capture](https://dl.acm.org/citation.cfm?id=3283256)<br>
Richard Roberts, J.P. Lewis, Ken Anjyo, Jaewoo Seo, and Yeongho Seol<br>
SIGGRAPH Asia '18<br>
2018.12

