---
date: "2016-09-01"
title: "ラズパイでミュージックサーバー"
slug: "raspi-music-server"
categories:
  - "works"
tags:
  - "ラズパイ"
  - "ミュージックサーバー"
  - "Volumio"
thumbnail: "/posts/2016-09-01-raspi-music-server/icon.jpg"
---

## 作ったもの

### ラズパイミュージックサーバー

スマートフォンでコントロールできるステレオコンポです．

{{< postfig src="music-server.jpg" title="ミュージックサーバー" width="360px" >}}

<!--more-->

## 構成

### Raspberry Pi 3 Type B

[http://akizukidenshi.com/catalog/g/gM-10414/](http://akizukidenshi.com/catalog/g/gM-10414/)

{{< postfig src="raspi3.jpg" title="ラズパイ3" width="360px" >}}

### Micro SDXC 64GB
[https://www.amazon.co.jp/dp/B010SERHJY](https://www.amazon.co.jp/dp/B010SERHJY)

{{< postfig src="sd.jpg" title="micro SD" width="360px" >}}

### AKI.DAC-U2704 REV.C

[http://akizukidenshi.com/catalog/g/gK-05369/](http://akizukidenshi.com/catalog/g/gK-05369/)

{{< postfig src="dac.jpg" title="DAC" width="360px" >}}

### アキバのジャンク街で買ったウーハー付きアンプ

5年前くらいにアキバのジャンク街で新品2,000円程で買ったウーハー付きアンプ．音がいいんだな．

{{< postfig src="amp.jpg" title="アンプ" width="360px" >}}

### 家にあったBOSEのスピーカー

{{< postfig src="speaker.jpg" title="スピーカー" width="360px" >}}

### 2.5A出力ACアダプタ

[http://akizukidenshi.com/catalog/g/gM-10507/](http://akizukidenshi.com/catalog/g/gM-10507/)

{{< postfig src="acadapter.jpg" title="ACアダプタ" width="360px" >}}

### マイクロUSBケーブル

[http://akizukidenshi.com/catalog/g/gC-09314/](http://akizukidenshi.com/catalog/g/gC-09314/)

{{< postfig src="usb.jpg" title="USB-micro-Bケーブル" width="360px" >}}

### 短いミニUSBケーブル

家に転がっていました．

{{< postfig src="miniusb.jpg" title="USB-mini-Bケーブル" width="360px" >}}

### RCA-ステレオミニジャック変換ケーブル

{{< postfig src="rca.jpg" title="RCAケーブル" width="360px" >}}

## ソフトウェア

### Volumio

Volumioとはラズパイ用OSであるraspbeanをもとに作られたミュージックサーバーOSです．ダウンロードしたimgファイルをマイクロSDカードに焼くだけで即使うことができます．

[Volumio.org](https://volumio.org/)よりダウンロードできます．

## 作り方

  1. SDカードにVolumioのOSを焼いて，ラズパイにセットする．
  1. ラズパイにDACとスピーカーをつなぐ．
  1. ラズパイにLANケーブルをさして，電源を投入する．
  1. パソコンでネットワーク上のPCを検索し，Volumioを見つける．
  1. 見つけたVolumioドライブに曲をコピーする．
  1. ブラウザで[http://volumio.local/](http://volumio.local/)にアクセスする．
  1. あとは使えばわかる．

## 操作画面

### ブラウザから操作

わかりやすいGUIで，直感的に操作できます．

{{< postfig src="browser.png" title="ブラウザ" width="360px" >}}

### MPDクライアントから操作

もちろん，MPDクライアントにも対応しています．

{{< postfig src="mpd.png" title="MPDクライアント" width="360px" >}}

## まとめ

スマホからコントロールできるミュージックサーバーがとても簡単にできちゃいました！Volumioはすごいです．

次はDACやアンプを作りたいです．
