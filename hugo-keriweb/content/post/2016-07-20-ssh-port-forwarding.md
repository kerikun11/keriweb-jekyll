---
date: "2016-07-20"
title: "SSHのPort Forwarding"
slug: "ssh-port-forwarding"
categories:
  - "memos"
tags: ["SSH", "サーバー"]
---

## Port Forwardingとは

SSHは通常ターミナル上で使うが，接続をlocalhostの適当なポートに転送してくれるのがPort Forwardingらしい．これにより，ブラウザからLAN内にアクセスできる．

LANの外からLAN内のルータの設定やNASなどを使えるようになるのだ．

<!--more-->

## 使い方


	$ ssh -L 8080:192.168.11.1:80 user_name@server_hostname

ブラウザでlocalhost:8080にアクセスすると，LAN内の192.168.11.1:80にアクセスしたのと同じことになる．

