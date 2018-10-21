---
layout: single
author_profile: false
permalink: /results/Mixamo_SearchingPockets
title: Searching Pockets
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwLTe2_B0ZSqGEcx13_6Ew6g" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Searching_Pockets/error-curves.png)]({{ site.url }}/data/Searching_Pockets/error-curves.pdf) -->

| Animation                                                                                   | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Searching_Pockets/Searching_Pockets-8-keyframes.ma)     |  301         |    8          | 97.34%        |  70.07             |  23.19             |
| [Compression 3]({{ site.url }}/data/Searching_Pockets/Searching_Pockets-15-keyframes.ma)    |  301         |   15          | 95.02%        |  54.23             |   8.72             |
| [Compression 2]({{ site.url }}/data/Searching_Pockets/Searching_Pockets-30-keyframes.ma)    |  301         |   30          | 90.03%        |  13.40             |   1.32             |
| [Compression 1]({{ site.url }}/data/Searching_Pockets/Searching_Pockets-60-keyframes.ma)    |  301         |   60          | 80.07%        |   2.16             |   0.26             |
| [Original]({{ site.url }}/data/Searching_Pockets/Searching_Pockets-301-keyframes.ma)        |  301         |  301          | 00.00%        |   0.00             |   0.00             |





## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Searching_Pockets/approximation.pdf">
        <img src="{{ site.url }}/data/Searching_Pockets/approximation.png">
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
    <a href="{{ site.url }}/data/Searching_Pockets/compression.pdf">
        <img src="{{ site.url }}/data/Searching_Pockets/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Searching_Pockets/runtime.pdf">
        <img src="{{ site.url }}/data/Searching_Pockets/runtime.png">
    </a>
</div>