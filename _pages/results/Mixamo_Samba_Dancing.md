---
layout: single
author_profile: false
permalink: /results/Mixamo_Samba_Dancing
title: Samba Dancing
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwcWvrXSClRv26q1p2lzun4Q" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Samba_Dancing/error-curves.png)]({{ site.url }}/data/Samba_Dancing/error-curves.pdf) -->

| Animation                                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Samba_Dancing/Samba_Dancing-27-keyframes.ma)    | 1092         |   27          | 97.53%        | 472.94             | 152.72             |
| [Compression 3]({{ site.url }}/data/Samba_Dancing/Samba_Dancing-55-keyframes.ma)    | 1092         |   55          | 94.96%        | 245.96             |  38.61             |
| [Compression 2]({{ site.url }}/data/Samba_Dancing/Samba_Dancing-109-keyframes.ma)   | 1092         |  109          | 90.02%        | 141.66             |   6.16             |
| [Compression 1]({{ site.url }}/data/Samba_Dancing/Samba_Dancing-218-keyframes.ma)   | 1092         |  218          | 80.04%        |  23.42             |   1.16             |
| [Original]({{ site.url }}/data/Samba_Dancing/Samba_Dancing-1092-keyframes.ma)       | 1092         | 1092          | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Samba_Dancing/approximation.pdf">
        <img src="{{ site.url }}/data/Samba_Dancing/approximation.png">
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
    <a href="{{ site.url }}/data/Samba_Dancing/compression.pdf">
        <img src="{{ site.url }}/data/Samba_Dancing/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Samba_Dancing/runtime.pdf">
        <img src="{{ site.url }}/data/Samba_Dancing/runtime.png">
    </a>
</div>