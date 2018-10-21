---
layout: single
author_profile: false
permalink: /results/Mixamo_ClimbingToTop
title: Climbing To Top
---

*The original animation was obtained from Adobe's [Mixamo](https://www.mixamo.com/) animation
library.*



## Reconstruction Performance 

*The 3D viewer presents the original animation
(right-most, with orange indicator overhead)
along with a series of animations
constructed using Salient Poses.
See the table below for further information.*

<div style="position:relative;padding-bottom:56.25%;"><iframe src="https://moveshelf.com/embed/TW9jYXBDbGlwd95JjU2MTfqOWEtcxeplXQ" style="position:absolute;top:0;left:0;width:100%;height:100%;" scrolling="no" frameborder="0" allowfullscreen allow="vr"></iframe></div>

<!-- [![Error Curves (image)]({{ site.url }}/data/Climbing_To_Top/error-curves.png)]({{ site.url }}/data/Climbing_To_Top/error-curves.pdf) -->

| Animation                                                                               | Total Frames | Keyframes     | Compression   | Maximum Error (mm) | Average Error (mm) |
|:---------------------------------------------------------------------------------------:|:------------:|:-------------:|:-------------:|:------------------:|:------------------:|
| [Compression 4]({{ site.url }}/data/Climbing_To_Top/Climbing_To_Top-6-keyframes.ma)     | 241          |   6           | 97.51%        | 430.03             | 129.84             |
| [Compression 3]({{ site.url }}/data/Climbing_To_Top/Climbing_To_Top-12-keyframes.ma)    | 241          |  12           | 95.02%        | 140.16             |  26.37             |
| [Compression 2]({{ site.url }}/data/Climbing_To_Top/Climbing_To_Top-24-keyframes.ma)    | 241          |  24           | 90.04%        |  38.55             |   5.22             |
| [Compression 1]({{ site.url }}/data/Climbing_To_Top/Climbing_To_Top-48-keyframes.ma)    | 241          |  48           | 80.08%        |   7.50             |   0.95             |
| [Original]({{ site.url }}/data/Climbing_To_Top/Climbing_To_Top-241-keyframes.ma)        | 241          | 241           | 00.00%        |   0.00             |   0.00             |




## Comparisons

#### Approximation Error: Greedy vs Optimal 

*A comparison between Salient Poses and a
greedy approximation algorithm
showing how approximation error reduces as
keyframes are added.*

<div class="results-image">
    <a href="{{ site.url }}/data/Climbing_To_Top/approximation.pdf">
        <img src="{{ site.url }}/data/Climbing_To_Top/approximation.png">
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
    <a href="{{ site.url }}/data/Climbing_To_Top/compression.pdf">
        <img src="{{ site.url }}/data/Climbing_To_Top/compression.png">
    </a>
</div>

<br/>

#### Runtime

*The time required for the algorithm
to obtain a selection of N keyframes.*

<div class="results-image">
    <a href="{{ site.url }}/data/Climbing_To_Top/runtime.pdf">
        <img src="{{ site.url }}/data/Climbing_To_Top/runtime.png">
    </a>
</div>