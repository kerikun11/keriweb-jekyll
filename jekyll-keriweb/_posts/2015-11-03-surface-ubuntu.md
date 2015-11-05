---
layout: post
title: Surface Pro 3 に Ubuntu15.10を入れる(UEFI環境のデュアルブート)
category: memo
---
## UEFIとは  
　BIOSの代わりに最近のパソコンに導入されたインターフェース。BIOS特有の制約を解消したものと言える。

## 今現在できること、できないこと  

### できること  

  * Surface Pro 3 に Ubuntu 15.10 を入れること。
  * Surface Type cover のキーボードを使うこと。
  * Surface Type cover のタッチパッドを使うこと。
  * タッチ画面を使うこと。
  * Surface Pen を使うこと。

### できないこと

  * Surface Type cover のタッチパッドの２本指スクロール。
  * スリープボタン、音量ボタン
  * 電力効率が悪い

## 用意するもの

  * Surface Pro 3
  * Ubuntuインストール用のUSBメモリ（4GB以上）
  * USBハブ
  * USBキーボード（最初はSurface Type coverを認識しません）


## ホームディレクトリのフォルダを日本語から英語に変える  

　Ubuntuを日本語でインストールすると、ホームディレクトリのフォルダ類（ドキュメントやダウンロードなど）が日本語になっている。このままだと、ターミナルでのアクセスが少し面倒である。これらを英語に変える方法がある。

```
$ LANG=C xdg-user-dirs-gtk-update
```

を実行して、現れたダイアログで「Don't ask me again」にチェックを入れて、「Update Names」を押す。

