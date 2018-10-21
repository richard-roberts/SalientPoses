---
layout: single
author_profile: false
permalink: /results/Mixamo_LongLeftSideStep
title: Long Left Side Step
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwg5xgDUEHTaSaH_Nkw1Tk_g" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Long_Left_Side_Step/error-curves.png)]({{ site.url }}/data/Long_Left_Side_Step/error-curves.pdf) -->

| Animation                                                                                       | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 2]({{ site.url }}/data/Long_Left_Side_Step/Long_Left_Side_Step-5-keyframes.ma)     | 48           |   5           | 89.58%        |  12.86             |   3.93             |
| [Compression 1]({{ site.url }}/data/Long_Left_Side_Step/Long_Left_Side_Step-10-keyframes.ma)    | 48           |  10           | 79.17%        |   1.64             |   0.71             |
| [Original]({{ site.url }}/data/Long_Left_Side_Step/Long_Left_Side_Step-48-keyframes.ma)         | 48           |  48           | 00.00%        |   0.00             |   0.00             |





## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Long_Left_Side_Step/approximation.pdf">
        <img src="{{ site.url }}/data/Long_Left_Side_Step/approximation.png">
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
    <a href="{{ site.url }}/data/Long_Left_Side_Step/compression.pdf">
        <img src="{{ site.url }}/data/Long_Left_Side_Step/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Long_Left_Side_Step/runtime.pdf">
        <img src="{{ site.url }}/data/Long_Left_Side_Step/runtime.png">
    </a>
</div>