---
layout: post
title: "赤外線学習リモコン完成"
category: works
tag: ["電子工作","赤外線学習リモコン","WiFi","ESP8266","ESP-WROOM-02","Arduino","IR-Station","基板","KiCad","自動配線"]
icon: "icon.jpg"
---

## 祝・完成

[発注したプリント基板が基板が届き]({% post_url 2016-07-06-ir-station-board %})，とうとう赤外線学習リモコンが完成しました．

### 本体

![本体](body.jpg)

### 壁に取り付けました．

電源は，`USB-micro-B`コネクタから供給します．
![取り付け](attach.jpg)

### 操作画面

複数の機器のリモコンを1つにまとめて，スマホからコントロールすることができます．
![操作画面](display.png)

## 本体内部

### ふたを開けると

ESP8266マイコンを備えたWiFiモジュールである，ESP-WROOM-02が現れます．
![ふたを開けたところ](inside.jpg)

### 基板

![基板の表](top.jpg)
![基板の裏](back.jpg)

## 作り方

すべてのデータをGithubで公開しています．  
作り方は[ここ](https://github.com/kerikun11/IR-station)を参考にしてください．

## 最後に

この赤外線学習リモコンを使っていただけるテスターを募集しています．使ってみたい方は声をかけてください．(先着数名で打ち切ります)

赤外線学習リモコン「IR-Station」についての他の記事:

  * [2015年12月30日 ESP8266で赤外線学習リモコン]({% post_url 2015-12-30-ir-station %})
  * [2016年03月11日 IR-Station Reference]({% post_url 2016-03-11-ir-station-reference %})
  * [2016年07月06日 赤外線学習リモコンの基板が届きました]({% post_url 2016-07-06-ir-station-board %})

