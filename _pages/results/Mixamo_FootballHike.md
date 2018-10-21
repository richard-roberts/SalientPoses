---
layout: single
author_profile: false
permalink: /results/Mixamo_FootballHike
title: Football Hike
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwIoiaXfaUTQeXQBtuzKEPpw" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Football_Hike/error-curves.png)]({{ site.url }}/data/Football_Hike/error-curves.pdf) -->

| Animation                                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Football_Hike/Football_Hike-5-keyframes.ma)     | 197          |   5           | 97.46%        |  73.14             |  31.53             |
| [Compression 3]({{ site.url }}/data/Football_Hike/Football_Hike-10-keyframes.ma)    | 197          |  10           | 94.92%        |  27.14             |   6.76             |
| [Compression 2]({{ site.url }}/data/Football_Hike/Football_Hike-20-keyframes.ma)    | 197          |  20           | 89.95%        |   5.62             |   0.88             |
| [Compression 1]({{ site.url }}/data/Football_Hike/Football_Hike-39-keyframes.ma)    | 197          |  39           | 80.20%        |   1.15             |   0.20             |
| [Original]({{ site.url }}/data/Football_Hike/Football_Hike-197-keyframes.ma)        | 197          | 197           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Football_Hike/approximation.pdf">
        <img src="{{ site.url }}/data/Football_Hike/approximation.png">
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
    <a href="{{ site.url }}/data/Football_Hike/compression.pdf">
        <img src="{{ site.url }}/data/Football_Hike/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Football_Hike/runtime.pdf">
        <img src="{{ site.url }}/data/Football_Hike/runtime.png">
    </a>
</div>