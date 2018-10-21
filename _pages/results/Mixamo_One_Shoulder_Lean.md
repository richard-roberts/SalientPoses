---
layout: single
author_profile: false
permalink: /results/Mixamo_One_Shoulder_Lean
title: One Shoulder Lean
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwf8Ysb7xWQvaPdZp_RwVFtg" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/One_Shoulder_Lean/error-curves.png)]({{ site.url }}/data/One_Shoulder_Lean/error-curves.pdf) -->

| Animation                                                                                   | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:-------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/One_Shoulder_Lean/One_Shoulder_Lean-3-keyframes.ma)     | 121          |   3           | 97.52%        |   2.32             |   0.94             |
| [Compression 3]({{ site.url }}/data/One_Shoulder_Lean/One_Shoulder_Lean-6-keyframes.ma)     | 121          |   6           | 95.04%        |   1.28             |   0.43             |
| [Compression 2]({{ site.url }}/data/One_Shoulder_Lean/One_Shoulder_Lean-12-keyframes.ma)    | 121          |  12           | 90.08%        |   0.44             |   0.12             |
| [Compression 1]({{ site.url }}/data/One_Shoulder_Lean/One_Shoulder_Lean-24-keyframes.ma)    | 121          |  24           | 80.17%        |   0.05             |   0.01             |
| [Original]({{ site.url }}/data/One_Shoulder_Lean/One_Shoulder_Lean-121-keyframes.ma)        | 121          | 121           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/One_Shoulder_Lean/approximation.pdf">
        <img src="{{ site.url }}/data/One_Shoulder_Lean/approximation.png">
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
    <a href="{{ site.url }}/data/One_Shoulder_Lean/compression.pdf">
        <img src="{{ site.url }}/data/One_Shoulder_Lean/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/One_Shoulder_Lean/runtime.pdf">
        <img src="{{ site.url }}/data/One_Shoulder_Lean/runtime.png">
    </a>
</div>