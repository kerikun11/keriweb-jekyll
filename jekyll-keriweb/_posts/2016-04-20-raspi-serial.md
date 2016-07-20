---
layout: "post"
title: "ラズパイでシリアルモニタを使うには"
category: "memos"
tags: ["Raspberry Pi", "ラズパイ", "シリアル", "電子工作", "Arduino", "ターミナル"]
---

## 概要

ラズパイのシリアルを使うときや、ラズパイにFT232などをつないだ時にターミナルをシリアルモニタにする。
<!--more-->

## インストールするもの

    $ sudo apt-get install cu

## 使い方

### 接続されているか確認する

    $ lsusb

### デバイス名を調べる

    $ ls /dev/tty*

ここでUSBシリアルは`/dev/ttyUSB0`や`/dev/ttyUSB1`で、ラズパイのシリアルは`/dev/ttyAMA0`などになります。

### 一般ユーザが扱えるようにする

	$ sudo chmod 666 /dev/ttyUSB*
	or
	$ sudo chmod 666 /dev/ttyAMA0

### シリアルモニタを開く

	$ cu -s <ボーレート> -l <デバイス名>

たとえば、

	$ cu -s 115200 -l /dev/ttyUSB0

### 終わらせ方
	
素早く以下のように打つと終了する。

	~.

