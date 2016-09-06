---
layout: post
title: "ラズパイでミュージックサーバー"
category: "works"
tags:
  - "ラズパイ"
  - "ミュージックサーバー"
  - "Volumio"
icon: "icon.jpg"
---

## 作ったもの

### ラズパイミュージックサーバー

スマートフォンでコントロールできるステレオコンポです．

![ミュージックサーバー](music-server.jpg){: .img-medium}

## 構成

### Raspberry Pi 3 Type B

[http://akizukidenshi.com/catalog/g/gM-10414/](http://akizukidenshi.com/catalog/g/gM-10414/)

![ラズパイ3](raspi3.jpg){: .img-small}

### Micro SDXC 64GB
[https://www.amazon.co.jp/dp/B010SERHJY](https://www.amazon.co.jp/dp/B010SERHJY)

![micro SD](sd.jpg){: .img-small}

### AKI.DAC-U2704 REV.C

[http://akizukidenshi.com/catalog/g/gK-05369/](http://akizukidenshi.com/catalog/g/gK-05369/)

![DAC](dac.jpg){: .img-small}

### アキバのジャンク街で買ったウーハー付きアンプ

5年前くらいにアキバのジャンク街で新品2,000円程で買ったウーハー付きアンプ．音がいいんだな．

![アンプ](amp.jpg){: .img-small}

### 家にあったBOSEのスピーカー

![スピーカー](speaker.jpg){: .img-small}

### 2.5A出力ACアダプタ

[http://akizukidenshi.com/catalog/g/gM-10507/](http://akizukidenshi.com/catalog/g/gM-10507/)

![ACアダプタ](acadapter.jpg){: .img-small}

### マイクロUSBケーブル

[http://akizukidenshi.com/catalog/g/gC-09314/](http://akizukidenshi.com/catalog/g/gC-09314/)

![USB-micro-Bケーブル](usb.jpg){: .img-small}

### 短いミニUSBケーブル

家に転がっていました．

![USB-mini-Bケーブル](miniusb.jpg){: .img-small}

### RCA-ステレオミニジャック変換ケーブル

![RCAケーブル](rca.jpg){: .img-small}

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

![ブラウザ](browser.png){: .img-medium}

### MPDクライアントから操作

もちろん，MPDクライアントにも対応しています．

![MPDクライアント](mpd.png){: .img-medium}

## まとめ

スマホからコントロールできるミュージックサーバーがとても簡単にできちゃいました！Volumioはすごいです．

次はDACやアンプを作りたいです．

