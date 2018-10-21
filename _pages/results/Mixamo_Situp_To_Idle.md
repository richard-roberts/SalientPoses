---
layout: single
author_profile: false
permalink: /results/Mixamo_Situp_To_Idle
title: Situp To Idle
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwGBx6fvwISWCwOAu5m99F6g" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Situp_To_Idle/error-curves.png)]({{ site.url }}/data/Situp_To_Idle/error-curves.pdf) -->

| Animation                                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Situp_To_Idle/Situp_To_Idle-7-keyframes.ma)     |  265         |    7          | 97.36%        | 152.60             |  43.73             |
| [Compression 3]({{ site.url }}/data/Situp_To_Idle/Situp_To_Idle-13-keyframes.ma)    |  265         |   13          | 95.09%        |  32.44             |   7.96             |
| [Compression 2]({{ site.url }}/data/Situp_To_Idle/Situp_To_Idle-27-keyframes.ma)    |  265         |   27          | 89.81%        |   6.31             |   1.37             |
| [Compression 1]({{ site.url }}/data/Situp_To_Idle/Situp_To_Idle-53-keyframes.ma)    |  265         |   53          | 80.00%        |   2.86             |   0.38             |
| [Original]({{ site.url }}/data/Situp_To_Idle/Situp_To_Idle-265-keyframes.ma)        |  265         |  265          | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Situp_To_Idle/approximation.pdf">
        <img src="{{ site.url }}/data/Situp_To_Idle/approximation.png">
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
    <a href="{{ site.url }}/data/Situp_To_Idle/compression.pdf">
        <img src="{{ site.url }}/data/Situp_To_Idle/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Situp_To_Idle/runtime.pdf">
        <img src="{{ site.url }}/data/Situp_To_Idle/runtime.png">
    </a>
</div>