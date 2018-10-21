---
layout: single
author_profile: false
permalink: /results/Mixamo_Put_Back_Rifle_Behind_Shoulder
title: Put Back Rifle Behind Shoulder
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwrXE_dKNUTSCeb3XWjM-mIQ" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/error-curves.png)]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/error-curves.pdf) -->

| Animation                                                                                                             | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:---------------------------------------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/Put_Back_Rifle_Behind_Shoulder-6-keyframes.ma)     | 239          |   6           | 97.49%        |  54.66             |  13.21             |
| [Compression 3]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/Put_Back_Rifle_Behind_Shoulder-12-keyframes.ma)    | 239          |  12           | 94.98%        |  11.64             |   3.33             |
| [Compression 2]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/Put_Back_Rifle_Behind_Shoulder-24-keyframes.ma)    | 239          |  24           | 89.96%        |   3.67             |   0.54             |
| [Compression 1]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/Put_Back_Rifle_Behind_Shoulder-48-keyframes.ma)    | 239          |  48           | 79.92%        |   0.97             |   0.14             |
| [Original]({{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/Put_Back_Rifle_Behind_Shoulder-239-keyframes.ma)        | 239          | 239           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/approximation.pdf">
        <img src="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/approximation.png">
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
    <a href="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/compression.pdf">
        <img src="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/runtime.pdf">
        <img src="{{ site.url }}/data/Put_Back_Rifle_Behind_Shoulder/runtime.png">
    </a>
</div>