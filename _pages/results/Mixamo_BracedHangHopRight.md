---
layout: single
author_profile: false
permalink: /results/Mixamo_BracedHangHopRight
title: Braced Hang Hop Right
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwaumvFbhzTmiD7DSP7dlxeg" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Braced_Hang_Hop_Right/error-curves.png)]({{ site.url }}/data/Braced_Hang_Hop_Right/error-curves.pdf) -->

| Animation                                                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:---------------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Braced_Hang_Hop_Right/Braced_Hang_Hop_Right-3-keyframes.ma)     | 101          |   3           | 97.03%        | 467.02             | 221.34             |
| [Compression 3]({{ site.url }}/data/Braced_Hang_Hop_Right/Braced_Hang_Hop_Right-5-keyframes.ma)     | 101          |   5           | 95.05%        | 156.36             |  43.55             |
| [Compression 2]({{ site.url }}/data/Braced_Hang_Hop_Right/Braced_Hang_Hop_Right-10-keyframes.ma)    | 101          |  10           | 90.10%        |  67.07             |  11.45             |
| [Compression 1]({{ site.url }}/data/Braced_Hang_Hop_Right/Braced_Hang_Hop_Right-20-keyframes.ma)    | 101          |  20           | 80.20%        |  17.11             |   2.40             |
| [Original]({{ site.url }}/data/Braced_Hang_Hop_Right/Braced_Hang_Hop_Right-101-keyframes.ma)        | 101          | 101           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Braced_Hang_Hop_Right/approximation.pdf">
        <img src="{{ site.url }}/data/Braced_Hang_Hop_Right/approximation.png">
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
    <a href="{{ site.url }}/data/Braced_Hang_Hop_Right/compression.pdf">
        <img src="{{ site.url }}/data/Braced_Hang_Hop_Right/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Braced_Hang_Hop_Right/runtime.pdf">
        <img src="{{ site.url }}/data/Braced_Hang_Hop_Right/runtime.png">
    </a>
</div>