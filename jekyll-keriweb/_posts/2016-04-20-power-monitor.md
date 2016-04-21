---
layout:		post
title:		ソーラー発電量モニター
category:	blog
tag:		[ThingSpeak,IoT,ESP8266,ESP-WROOM-02,Arduino,Solar Power,ソーラー,太陽光発電]
pickup:		true
image:		img.jpg
---

# 概要

[100W級ソーラーシステム]({% post_url 2014-09-14-solar-system %})の発電量を[ThingSpeak.com](https://thingspeak.com/)というサイトに送ってグラフ化しました。

データの送信には、自作の[中継型電力計]({% post_url 2016-03-23-relay-sensor %})を使用しています。

# リアルタイム発電量モニター

ThingSpeakで発行したフレームをHTMLに埋め込む形式なので、自動で更新されます。

## 電圧

<div class="graph">
<iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/110012/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Solar+Voltage&type=line&yaxis=Voltage+%5BV%5D"></iframe>
</div>

## 電流

<div class="graph">
<iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/110012/charts/2?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Solar+Current&type=line&yaxis=Current+%5BA%5D"></iframe>
</div>

## 電力

<div class="graph">
<iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/110012/charts/3?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Solar+Power&type=line&yaxis=Power+%5BW%5D"></iframe>
</div>

## 今日の発電量

<div class="graph">
<iframe width="450" height="260" style="border: 1px solid #cccccc;" src="https://thingspeak.com/channels/110012/charts/4?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Time+Integration+of+Solar+Power+a+Day&type=line&yaxis=Integration+%5BWh%5D"></iframe>
</div>

# まとめ

こんなに簡単にグラフ化できるサービスがあるなんてすごいですね！MATLAB解析機能もあるみたいなので使ってみたいです。

