---
title: Thiết kế website với wowchemy
author: Duc Nguyen
date: '2022-07-08'
slug: thiet-ke-website
categories:
  - kỹ năng website
tags:
  - blogdown
  - hugo theme
  - wowchemy
  - github
  - netlify
toc: yes
type: book
---

## Cài đặt bước đầu

- Cài đặt RStudio
- Cài đặt package `blogdown`
- Sau đó gõ đoạn code này:

```r
library(blogdown)
new_site(theme = "wowchemy/starter-academic") 

# Sau đó cho tạo site
blogdown::serve_site() # Lệnh này chỉ cần dùng 1 lần mỗi khi vào session
# Và xây dựng site
blogdown::build_site()

# Các lệnh khác
blogdown::check_gitignore()  
blogdown::check_content()
```

- File `.gitignore` thì bổ sung các folder này vào: 

```r
.Rproj.user
.Rhistory
.RData
.Ruserdata
.DS_Store
Thumbs.db
```

- Trong `Tools/Project Options/Build Tools` chọn turn off `Preview site after building`.

- Sau khi upload lên Github và deploy ở Netlify, có được URL chính thức thì sửa ở đoạn `baseURL:` trong file `config.yaml`.


```r
rstudioapi::navigateToFile("config/_default/config.yaml", line = 7, column = 10)
```

## Chỉnh sửa site

- Thay đổi các nút chia sẻ ở file này `Root\themes\github.com\wowchemy\wowchemy-hugo-modules\wowchemy\v5\data\page_sharer.toml`


```r
[[buttons]]
  id = "telegram"
  url = "https://t.me/share/url?url={url}&title={title}"
  title = "Telegram"
  icon_pack = "fab"
  icon = "telegram"
  enable = true
```

- Khi cần tạo table thì để thẻ `<style>...</style>` trong nội dung văn bản giống như vầy để tạo ra bảng đơn giản.


```r
|        |      |         |
|:------:|:----:|:-------:|
| $W$    | $-X$ | $Y$     |
| $P(W)$ | $p$  | $1 - p$ |

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
```

Kết quả là:

|        |      |         |
|:------:|:----:|:-------:|
| `\(W\)`    | `\(-X\)` | `\(Y\)`     |
| `\(P(W)\)` | `\(p\)`  | `\(1 - p\)` |

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

- Những cấu trúc lặt vặt khác thì khi thay đổi cần để ý đồng bộ giữa file đang nằm trong folder với các đường dẫn ở `config.yaml, menus.yamal`.

- Khi đưa thêm thư mục mới vào thì cần bổ sung đường dẫn ở mục `PAGE OPTIONS` trong file `config.yaml`.

## Cấu hình mặc định cho bài viết

- Thêm các thông tin mặc định cho bài viết ở file này `Root\themes\github.com\wowchemy\wowchemy-hugo-modules\wowchemy\v5\archetypes\default.md`

## Tạo mục lục

- Thay đổi chỗ này `blogdown.method = 'markdown'` trong file `.Rprofile`. Tuy nhiên mục lục chỉ hiển thị từ secondary heading trở đi. Trong `post` thì thêm dòng code sau:


```r
toc: yes
type: book
```

## Kiểm tra website

- Để đảm bảo việc hiện trang khi có sự thay đổi thông tin thì ta cần vào thư mục chứa bài viết mà xóa các file không liên quan, chỉ giữ lại file `.Rmd` gốc ban đầu. Khi `serve_site` thì hệ thống sẽ từ file gốc này mà xuất ra các file thứ cấp.

## Tham khảo

[Alison Hill's method](https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/)

<iframe width="560" height="315" src="https://www.youtube.com/embed/c7vpcqA6SEQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>