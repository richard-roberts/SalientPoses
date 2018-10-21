---
layout: single
author_profile: false
permalink: /results/Mixamo_Taunt
title: Taunt
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlw8ux3aUO7QHidwet53UPSkg" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Taunt/error-curves.png)]({{ site.url }}/data/Taunt/error-curves.pdf) -->

| Animation                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 3]({{ site.url }}/data/Taunt/Taunt-5-keyframes.ma)     |  99         |    5           | 94.95%        | 119.06             |   43.38            |
| [Compression 2]({{ site.url }}/data/Taunt/Taunt-10-keyframes.ma)    |  99         |   10           | 89.9%         |   9.39             |   2.79             |
| [Compression 1]({{ site.url }}/data/Taunt/Taunt-20-keyframes.ma)    |  99         |   20           | 79.8%         |   2.43             |   0.68             |
| [Original]({{ site.url }}/data/Taunt/Taunt-99-keyframes.ma)         |  99         |   99           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Taunt/approximation.pdf">
        <img src="{{ site.url }}/data/Taunt/approximation.png">
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
    <a href="{{ site.url }}/data/Taunt/compression.pdf">
        <img src="{{ site.url }}/data/Taunt/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Taunt/runtime.pdf">
        <img src="{{ site.url }}/data/Taunt/runtime.png">
    </a>
</div>