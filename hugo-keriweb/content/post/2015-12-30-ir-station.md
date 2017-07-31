---
date: "2015-12-30"
title: "ESP8266で赤外線学習リモコン"
slug: "ir-station"
categories:
  - "works"
tags: ["IR-Station","ESP8266","ESP-WROOM-02","電子工作","Arduino","WiFi"]
thumbnail: "/posts/2015-12-30-ir-station/icon.jpg"
---

## ESP8266とは 

### 日本の技適を取得済みWiFiモジュール！！

ESP8266とはWiFi制御用マイコンです。もともと中国で流行っていました。そのマイコンを内蔵したESP-WROOM-02というWiFiモジュールが日本の技適を取得したので、日本でも人気になりました。

### とにかく安い！

その価格はなんと、たったの**550円**です！！  
[ESP-WROOM-02](http://akizukidenshi.com/catalog/g/gM-09607/)←秋月電子などで売っています。  
[![ESP8266](esp8266.jpg)](http://akizukidenshi.com/catalog/g/gM-09607/)
<!--more-->

### 開発の簡単さも流行りの理由

このマイコンのすごいところは、**Arduino IDE**で開発ができることです。とても簡単に開発ができます。関数もArduinoで使われているものと同じ名前です。Arduinoと同じように書き込みボタンを押せば書き込みができます。

さらに、Arduinoをよく使う人は知っている通り、Arduino IDEに付属したサンプルプログラムがとても充実しています。それを書き込むだけでそれなりのことができます。

それを少しずついじっているといつの間にかオリジナルのプログラムが完成しているという感じです。

### スペックが十分すぎる…

しかも、このESP8266マイコンはスペックがかなり高く、WiFiモジュールとしてだけでなく格安マイコンとしても十分使うことができるほどです。メモリが十分にあるので、自由なプログラムを書くことができます。

マイコンは、**32bit**マイコンです。  
動作周波数は、**160MHz**まで対応しています。  
外付けのSPIFlashがついていて、プログラムメモリが**１MB**ほどあります。  
RAMも大量にあって、**81kB**もあります。

参考までにPICやAVRマイコンなどはROMが32kBくらい、RAMは4kBほどです。


今回はこのWiFiモジュールで遊びます。


## 赤外線学習リモコン

赤外線学習リモコンとは自作の赤外線リモコンです。一番最初に本物のリモコンの信号を記憶して、2回目からはその記憶した赤外線を発します。こうしてリモコンを複製することができるのです。

今回は**WiFi経由**でスマホからコントロールできる赤外線学習リモコンを作りました。

## 作ったもの

### 本体

今回は試作なのでブレッドボードで作りました。  
右に４つの赤外線LEDがついています。

{{< postfig src="body.jpg" title="ESP8266-Remocon" width="360px" >}}

### WiFiの設定

電源を入れるとまずWiFiのアクセスポイントになって、「ESP8266-Remocon」というWiFi電波を発します。スマホなどでそれにつないで、「http://esp8266.local」に接続すると下の画面が表示されます。

ここで、家のWiFiのSSIDを選んでパスワードを入力すると、家のWiFiにアクセスを試みます。

{{< postfig src="page_wifi.png" title="ESP8266-Remocon" width="360px" >}}

### スマホでの操作画面

うまく接続できると、下の画面が出てきて、リモコンが使えるようになります。

リモコンを登録するときは下の好きなチャンネルの欄にボタンの名前を書いて「Recode」ボタンを押すとリモコンのサンプリングを開始します。リモコンの登録がうまくいくと、上のボタンにさっき入力した名前が表示されてボタンが使えるようになります。

{{< postfig src="page_button.png" title="ESP8266-Remocon" width="360px" >}}


## 作り方

Githubに公開しているのでそちらをご覧下さい。  
[Github - IR-station](https://github.com/kerikun11/IR-station)

## まとめ

**IoT(Internet of Things)**という言葉があります。  
**人と人が**インターネットにつなぐだけでなく**ものとものが**互いにインターネットでつながり、相互に作用し合うということです。  
ESP8266 WiFiモジュールはIoTに最適です。より多くのものがインターネットによりつながるといいですね！

このWiFiモジュールを使ってとりあえず実用的なものができました。  
ESP8266はとにかくすごいマイコンです！みなさんもぜひ使ってみてください！  
