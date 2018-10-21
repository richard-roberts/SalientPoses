---
layout: single
author_profile: false
permalink: /results/Mixamo_Opening_Door_Inwards
title: Opening Door Inwards
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlw1bl5xT2WQbKrH-Dyc_yvHQ" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Opening_Door_Inwards/error-curves.png)]({{ site.url }}/data/Opening_Door_Inwards/error-curves.pdf) -->

| Animation                                                                                         | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-------------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Opening_Door_Inwards/Opening_Door_Inwards-10-keyframes.ma)    | 383          |  10           | 97.39%        | 245.39             |  58.95             |
| [Compression 3]({{ site.url }}/data/Opening_Door_Inwards/Opening_Door_Inwards-19-keyframes.ma)    | 383          |  19           | 95.04%        |  45.87             |  10.47             |
| [Compression 2]({{ site.url }}/data/Opening_Door_Inwards/Opening_Door_Inwards-38-keyframes.ma)    | 383          |  38           | 90.08%        |  12.36             |   2.41             |
| [Compression 1]({{ site.url }}/data/Opening_Door_Inwards/Opening_Door_Inwards-77-keyframes.ma)    | 383          |  77           | 79.90%        |   5.51             |   0.57             |
| [Original]({{ site.url }}/data/Opening_Door_Inwards/Opening_Door_Inwards-383-keyframes.ma)        | 383          | 383           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Opening_Door_Inwards/approximation.pdf">
        <img src="{{ site.url }}/data/Opening_Door_Inwards/approximation.png">
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
    <a href="{{ site.url }}/data/Opening_Door_Inwards/compression.pdf">
        <img src="{{ site.url }}/data/Opening_Door_Inwards/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Opening_Door_Inwards/runtime.pdf">
        <img src="{{ site.url }}/data/Opening_Door_Inwards/runtime.png">
    </a>
</div>