---
layout: single
author_profile: false
permalink: /results/Mixamo_Wall_Run
title: Wall Run
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlw3oKAFuhtR3aosGYLUzhNNw" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Wall_Run/error-curves.png)]({{ site.url }}/data/Wall_Run/error-curves.pdf) -->

| Animation                                                                 | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 3]({{ site.url }}/data/Wall_Run/Wall_Run-3-keyframes.ma)     |   56         |    3          | 95.09%        | 555.95             |  272.1             |
| [Compression 2]({{ site.url }}/data/Wall_Run/Wall_Run-6-keyframes.ma)     |   56         |    6          | 89.81%        | 159.87             |  45.21             |
| [Compression 1]({{ site.url }}/data/Wall_Run/Wall_Run-11-keyframes.ma)    |   56         |   11          | 80.00%        |  22.71             |   6.58             |
| [Original]({{ site.url }}/data/Wall_Run/Wall_Run-56-keyframes.ma)         |   56         |   56          | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Wall_Run/approximation.pdf">
        <img src="{{ site.url }}/data/Wall_Run/approximation.png">
    </a>
</div>

<br/>

#### Reconstruction Accuracy: SP vs Maya vs PCA

*A comparison of
how effectively animations can
be reconstructed over a range of compression levels
using 
Salient Poses,
[PCA](https://en.wikipedia.org/wiki/Principal_component_analysis)
(over the poses, not the curves), and 
Maya's [Simplify Curves](https://knowledge.autodesk.com/support/maya/learn-explore/caas/CloudHelp/cloudhelp/2018/ENU/Maya-Animation/files/GUID-4CF93211-0E3B-4B0D-9C1D-1E164C9DFFEE-htm.html)
algorithm.*

<div class="results-image">
    <a href="{{ site.url }}/data/Wall_Run/compression.pdf">
        <img src="{{ site.url }}/data/Wall_Run/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Wall_Run/runtime.pdf">
        <img src="{{ site.url }}/data/Wall_Run/runtime.png">
    </a>
</div>