---
title: Bài tập 2
author: Duc Nguyen
date: '2022-07-08'
slug: bai-tap-2
categories:
  - xác suất thống kê
tags:
  - bài tập
subtitle: ''
summary: ''
authors: []
lastmod: '2022-07-08T23:08:01+07:00'
featured: no
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
bibliography: D:/GITHUB/v5/zoterobib/xacsuat.bib
link-citations: yes
nocite: |
  @R-bookdown
toc: yes
type: book
---

**Đề bài**: Một biến ngẫu nhiên `\(X\)` đồng nhất, có hàm phân bố xác suất từ 0 đến 1, chiều cao 1. Hỏi giá trị media của biến đó là bao nhiêu?

> A random variable, `\(X\)`, is uniform, a box from `\(0\)` to `\(1\)` of height `\(1\)`. (So that its density is `\(f(x) = 1\)` for `\(0\leq x \leq 1\)`.) What is its median expressed to two decimal places? ([Caffo, n.d.](#ref-CaffoStatistical))

**Đáp án**: The median is the point so that 50% of the density lies below it. This density looks like a box. So, notice that `\(P(X \leq x) = width\times height = x\)`. We want `\(0.5 = P(X\leq x) = x\)`.

<iframe width="560" height="315" src="https://www.youtube.com/embed/UXcarD-1xAM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

### Tài liệu tham khảo

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-CaffoStatistical" class="csl-entry">

Caffo, Brian. n.d. “Statistical Inference.” https://www.coursera.org/learn/statistical-inference.

</div>

</div>
