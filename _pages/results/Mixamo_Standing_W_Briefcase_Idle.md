---
layout: single
author_profile: false
permalink: /results/Mixamo_Standing_W_Briefcase_Idle
title: Standing With Briefcase Idle
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwPHifHOBBQ6OyziVaQ4Rrqg" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Standing_W_Briefcase_Idle/error-curves.png)]({{ site.url }}/data/Standing_W_Briefcase_Idle/error-curves.pdf) -->

| Animation                                                                                                   | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Standing_W_Briefcase_Idle/Standing_W_Briefcase_Idle-21-keyframes.ma)    |  837         |   21          | 97.49%        |   5.06             |   1.25             |
| [Compression 3]({{ site.url }}/data/Standing_W_Briefcase_Idle/Standing_W_Briefcase_Idle-42-keyframes.ma)    |  837         |   42          | 94.98%        |   1.59             |   0.24             |
| [Compression 2]({{ site.url }}/data/Standing_W_Briefcase_Idle/Standing_W_Briefcase_Idle-84-keyframes.ma)    |  837         |   84          | 89.96%        |   0.54             |   0.07             |
| [Compression 1]({{ site.url }}/data/Standing_W_Briefcase_Idle/Standing_W_Briefcase_Idle-167-keyframes.ma)   |  837         |  167          | 80.05%        |   0.17             |   0.02             |
| [Original]({{ site.url }}/data/Standing_W_Briefcase_Idle/Standing_W_Briefcase_Idle-837-keyframes.ma)        |  837         |  837          | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Standing_W_Briefcase_Idle/approximation.pdf">
        <img src="{{ site.url }}/data/Standing_W_Briefcase_Idle/approximation.png">
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
    <a href="{{ site.url }}/data/Standing_W_Briefcase_Idle/compression.pdf">
        <img src="{{ site.url }}/data/Standing_W_Briefcase_Idle/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Standing_W_Briefcase_Idle/runtime.pdf">
        <img src="{{ site.url }}/data/Standing_W_Briefcase_Idle/runtime.png">
    </a>
</div>