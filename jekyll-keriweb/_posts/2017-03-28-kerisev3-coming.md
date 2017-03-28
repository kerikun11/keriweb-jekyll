---
layout: post
title: "KERISE v3 ができました！"
category: "works"
tags:
  - "KERISEv3"
  - "マイクロマウス"
icon: "icon.jpg"
---

## KERISEv3

![KERISEv3](kerisev3-front-side.jpg){: .img-small}

### 3台目のマウス

マイクロマウスを始めて8か月目になりました．けりです．  
作っては壊しを繰り返してはや3台目になります．なぜこんなに壊れるのでしょうか...

### ハーフサイズ

さて，今回のマウスは完全にハーフマウスです．とても小さいです．かわいいです．

ハーフサイズのいいところは部品1つ1つが小さくて安いことです．壊してしまっても金銭的にはあまり痛くありません．精神的には痛いですが...

### 初の吸引機構

マイクロマウスでは吸引をすると圧倒的速度を出すことができるようなので，初めて吸引に挑戦しました！自重は支えられませんが，ある程度の吸引力があります．

### 初の変則4輪

吸引の力をタイヤでしっかり支えるために変則4輪にも挑戦しました．制御が難しそうです...

### 新しいことだらけ

今回のマウスは，今までの設計をすべて一から見直して完全に新しく作りました．さらに，マイコンもより小型の新しいものにしました．初めて触るマイコンです．新しいことだらけで大変ですが，頑張ります！

## Fusion360で設計

Fusion360が流行っています．習得するにはまず使わないといけないので，今回のマウスはFusion360で設計してみました．

![KERISEv3-fusion](kerisev3-fusion.png){: .img-small}

### Fusionの埋め込み表示

Fusion360はクラウド上にデータを保存できるので，HTMLに埋め込んで表示できブログに貼り付けられます．  
※ロードに時間がかかるのでご注意ください．右下にフルスクリーンボタンがあるのでそれを押すと使いやすいです．

<div class="fusion">
<iframe src="https://myhub.autodesk360.com/ue2805ff3/shares/public/SH7f1edQT22b515c761e3ce317261c9e9ee5?mode=embed" width="640" height="480" allowfullscreen="true" webkitallowfullscreen="true" mozallowfullscreen="true"  frameborder="0"></iframe>
</div>


### Fusion360のレンダリング

Fusion360にはレンダリングという機能があり，設計した立体の光の反射などを計算して実物みたいな画像を生成してくれます．

![KERISEv3-fusion](kerisev3-rendering.png){: .img-medium}

## 写真集

![KERISEv3](kerisev3-front-side.jpg){: .img-small}
![KERISEv3](kerisev3-no-battery.jpg){: .img-small}
![KERISEv3](kerisev3-front.jpg){: .img-small}
![KERISEv3](kerisev3-back.jpg){: .img-small}
![KERISEv3](kerisev3-up.jpg){: .img-small}
![KERISEv3](kerisev3-left.jpg){: .img-small}
![KERISEv3](kerisev3-right.jpg){: .img-small}
![KERISEv3](kerisev3-coin.jpg){: .img-small}

## 重量

16.48gでした．ハーフの中では重い方でしょうか...  
もう少し容量が小さくて軽いバッテリーを探しているので，見つかれば少し軽くなるかもです．

![KERISEv3](kerisev3-weight.jpg){: .img-small}
![KERISEv3](battery.jpg){: .img-small}

## 走る様子

前の機体のパラメータを少しいじって走らせてみました．壁は見ていません．  
機体は変わっても制御方法はあまり変わらないので，以前のコードを使いまわせそうです．

<div class="video">
<iframe width="560" height="315" src="https://www.youtube.com/embed/p1KPrC8PSVU" frameborder="0" allowfullscreen></iframe>
</div>

## まとめ

KERISEv2が壊れてしまって，動くマウスがない状態が続きとても悲しかったので，動くマウスができて本当によかったです．ハーフマウスについていろいろ教えてくれたTwitterの方々，ありがとうございました．  
まだまだやることは山積みですが．まずはPIDパラメータの選定からやっていこうと思います．

![KERISEv3](kerisev3-hand.jpg){: .img-medium}
