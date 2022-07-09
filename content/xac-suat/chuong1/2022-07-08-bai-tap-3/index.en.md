---
title: "Bài tập 3"
author: "Duc Nguyen"
date: '2022-07-08'
output: pdf_document
categories: xác suất thống kê
tags: bài tập
subtitle: ''
summary: ''
authors: []
lastmod: '2022-07-08T23:19:48+07:00'
featured: no
bibliography: D:/GITHUB/v5/zoterobib/xacsuat.bib
link-citations: yes
nocite: |
  @R-bookdown
image:
  caption: ''
  focal_point: ''
  preview_only: no
projects: []
toc: yes
type: book
slug: bai-tap-3
---

**Đề bài**: Tưởng tượng rằng bạn đang chơi trò gieo đồng xu với 1 người bạn. Nếu bạn gieo đồng xu có mặt **ngửa** thì bạn **thua** và phải đưa cho bạn ấy `\(X\)` dollar, còn nếu ngược lại đồng xu có mặt **úp** thì bạn **thắng** và bạn kia sẽ đưa bạn `\(Y\)` dollar. Vì đồng xu không cân xứng mà bị lệch một chút, giá trị odds khi đồng xu <span style="color:blue">*ngửa*</span> là `\(d\)`. Dự đoán xem bạn sẽ thắng được bao nhiêu tiền?

> You are playing a game with a friend where you flip a coin and if it comes up heads you give her `\(X\)` dollars and if it comes up tails she gives you `\(Y\)` dollars. The odds that the coin is heads is `\(d\)`. What is your expected earnings? ([Caffo, n.d.](#ref-CaffoStatistical))

**Đáp án**: Gọi `\(p\)` là xác suất mà bạn sẽ **thua** (khi có mặt **ngửa**), do đó `\(1 - p\)` là xác suất mà bạn **thắng** (khi có mặt **úp**). Gọi `\(W\)` là số tiền mà bạn *thu* được, do đó `\(-X\)` là số tiền bạn thua, còn `\(Y\)` là số tiền bạn thắng, `\(P(W)\)` là xác suất **thu/earning/winning** được số tiền trong mỗi lần gieo đồng xu. Ta trình bày mối quan hệ của các tham số này trong Table <a href="#tab:manual">1</a>.

|            |          |             |
|:----------:|:--------:|:-----------:|
|  `\(W\)`   | `\(-X\)` |   `\(Y\)`   |
| `\(P(W)\)` | `\(p\)`  | `\(1 - p\)` |

Table 1: Các tham số bài toán.

<style>
table {
    border-collapse: collapse;
    width: 100%;
}
table, th, td {
   border: 1px solid black;
}
blockquote {
    border-left: solid blue;
    padding-left: 10px;
}
</style>

Do vậy, số tiền thắng của *mỗi ván* là `\(W = -X \times p + Y \times (1 - p)\)` khi tính đến xác suất thắng, thua như đã trình bày ở trên.

Vì đồng xu không đều, có giá trị odds khi ngửa là `\(d\)` hay nói cách khác:

Giá trị odds `\(d\)` mà bạn sẽ thua trên 1 lần gieo đồng xu là:

`$$d = \frac{p}{1 - p} \Leftrightarrow d \times (1 - p) = p \Leftrightarrow p = \frac{d}{1 + d}$$`

Vậy bạn sẽ thua `\(X\)` dollar với xác suất `\(p = d/(1 + d)\)` và thắng `\(Y\)` dollar với xác suất `\(1 - p = 1/(1 + d)\)`. Do vậy nếu bạn chơi 1 ván thì số lượng dollar bạn nhận được là nhiêu đây. Còn chơi 10 ván thì nhân lên.

$$
W = -X \frac{d}{1 + d} + Y \frac{1}{1+d}
$$

<iframe width="560" height="315" src="https://www.youtube.com/embed/5J88Zq0q81o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

### Tài liệu tham khảo

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-CaffoStatistical" class="csl-entry">

Caffo, Brian. n.d. “Statistical Inference.” https://www.coursera.org/learn/statistical-inference.

</div>

</div>
