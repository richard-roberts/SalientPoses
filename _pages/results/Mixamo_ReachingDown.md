---
layout: single
author_profile: false
permalink: /results/Mixamo_ReachingDown
title: Reaching Down
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwA3_D_ctFTb69VLCgkKTQxQ" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Reaching_Down/error-curves.png)]({{ site.url }}/data/Reaching_Down/error-curves.pdf) -->

| Animation                                                                           | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-----------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Reaching_Down/Reaching_Down-5-keyframes.ma)     | 181          |   5           | 97.24%        |  80.19             |  34.25             |
| [Compression 3]({{ site.url }}/data/Reaching_Down/Reaching_Down-9-keyframes.ma)     | 181          |   9           | 95.03%        |  59.01             |  14.33             |
| [Compression 2]({{ site.url }}/data/Reaching_Down/Reaching_Down-18-keyframes.ma)    | 181          |  18           | 90.06%        |  11.84             |   2.63             |
| [Compression 1]({{ site.url }}/data/Reaching_Down/Reaching_Down-36-keyframes.ma)    | 181          |  36           | 80.11%        |   2.02             |   0.34             |
| [Original]({{ site.url }}/data/Reaching_Down/Reaching_Down-181-keyframes.ma)        | 181          | 181           | 00.00%        |   0.00             |   0.00             |





## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Reaching_Down/approximation.pdf">
        <img src="{{ site.url }}/data/Reaching_Down/approximation.png">
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
    <a href="{{ site.url }}/data/Reaching_Down/compression.pdf">
        <img src="{{ site.url }}/data/Reaching_Down/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Reaching_Down/runtime.pdf">
        <img src="{{ site.url }}/data/Reaching_Down/runtime.png">
    </a>
</div>