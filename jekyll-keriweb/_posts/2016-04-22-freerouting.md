---
layout:		post
title:		KiCadで自動配線
category:	memo
tag:		[KiCad,配線,回路,電子工作,基板]
---

# 概要

## 自動配線ツールを使おう

KiCadが流行ってきて、使う人が増えてきている。

しかし、自動配線ツールを使っている人は少ない。

それでははもったいない！！

今回は自動配線ツールの使い方を説明する。

# 自動配線と手動配線の使い分け

## 自動配線だとなんか心配？

これを読んでいる方の中には、**「自動配線なんて使い物にならない。自分でやるのが一番」**と思っている人もいるだろう。

しかし、それは違う。自動配線と手動配線を**上手く使い分ける**ことで、最高の作品が出来上がるのだ。

## どう使い分けるのか

電源周りやアナログ回路、高周波通信回路などはあらかじめ手動配線で行っておく。

あとは余ったデジタル配線を自動配線ツールに任せる。

これなら電気的特性を考慮しつつ、効率的に作業をすることができる。

# 配線のコスト(重み)という考え方

## 片面基板でも大丈夫

片面基板(切削基板など)を使うとき、自動配線ツールは一般に使いにくい。なぜならば、片面限定配線にすると、「配線不可能」になり、両面配線にすると切削基板では作成できないからだ。

しかし、僕の使っている自動配線ツールには、「コスト」という考え方がある。

## 配線にコストをつける

表面配線のコストを100にして、裏面配線のコストを1にすれば、自然とコストを下げるために裏面配線が優先され、切削基板にぴったりの基板が出来上がるのだ。

また、ビアにもコストがつけられて、できるだけビアを減らすということもできる。

とても柔軟なのだ。

# 自動配線ツール使用の流れ

  1. KiCadで回路図を書いて部品の割り当てを行う。(いつも通り)
  1. 部品の配置を行う。(いつも通り)
  1. 重要な配線を手動で行う。(いつも通り)
  1. KiCadから自動配線用にファイルを出力する。
  1. 自動配線ツールでそのファイルを読み込み、自動配線を行う。
  1. 配線結果をKiCadに取り込み完成！

# 自動配線ツールのインストール

## 必要なもの

  * 自動配線ツール：Freerouting.exe
  * NetBeans 8.1
  * Jave Development Kit 8 (JDK8)

以下からダウンロードできます。  
[Freerouting](https://github.com/freerouting/freerouting/raw/master/binaries/FreeRouting.exe)  
[Netbeans with JDK8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)  

## インストール

  1. NetBeans with JDK8をインストールします。
  1. Freerouting.exeはインストールする必要はありません。使うときに起動するだけです。

# 使い方

