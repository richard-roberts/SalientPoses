---
layout: single
author_profile: false
permalink: /results/Mixamo_Baseball_Umpire
title: Baseball Umpire
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwPoFnFqAGRCeD3HhDTfkeZQ" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Baseball_Umpire/error-curves.png)]({{ site.url }}/data/Baseball_Umpire/error-curves.pdf) -->


| Animation                                                                             | Total Frames | Keyframes     | Compression   | Max Joint Error (mm) | Average Joint Error (mm) |
|:-------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:--------------------:|:------------------------:|
| [Compression 4]({{ site.url }}/data/Baseball_Umpire/Baseball_Umpire-4-keyframes.ma)   | 158          |   4           | 97.47%        |  268.58              |  81.87                   |
| [Compression 3]({{ site.url }}/data/Baseball_Umpire/Baseball_Umpire-8-keyframes.ma)   | 158          |   8           | 94.94%        |   35.08              |  10.87                   |
| [Compression 2]({{ site.url }}/data/Baseball_Umpire/Baseball_Umpire-16-keyframes.ma)  | 158          |  16           | 89.97%        |    6.18              |   1.91                   |
| [Compression 1]({{ site.url }}/data/Baseball_Umpire/Baseball_Umpire-32-keyframes.ma)  | 158          |  32           | 79.75%        |    1.99              |   0.41                   |
|      [Original]({{ site.url }}/data/Baseball_Umpire/Baseball_Umpire-158-keyframes.ma) | 158          | 158           | 00.00%        |    0.00              |   0.00                   |



## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Baseball_Umpire/approximation.pdf">
        <img src="{{ site.url }}/data/Baseball_Umpire/approximation.png">
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
    <a href="{{ site.url }}/data/Baseball_Umpire/compression.pdf">
        <img src="{{ site.url }}/data/Baseball_Umpire/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Baseball_Umpire/runtime.pdf">
        <img src="{{ site.url }}/data/Baseball_Umpire/runtime.png">
    </a>
</div>