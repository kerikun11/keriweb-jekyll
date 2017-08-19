#!/bin/sh
for filename in $@
do
	echo file: $filename
	date=${filename:0:10}
	slug=${filename%.*}
	slug=${slug:11}

#		-i -e 's/^\(title: .*\)/\1\nslug: "'$slug'"\naliases:\n  - "\/posts\/'$date'-'$slug'\/"/g' \
#		-i -e 's/{:\s\?\.img-small}\s*//g' \
#		-i -e 's/{:\s\?\.img-medium}\s*//g' \
#		-i -e 's/category: "\(.\+\)"/categories:\n  - "\1"/g' \

	sed \
		-i -e '/^slug:/d' \
		-i -e '/^  - "電子工作"/d' \
		$filename
	sed \
		-i -e 's/layout: .*/date: "'$date'"/g' \
		-i -e 's/^\(title: .*\)/\1\nslug: "'$slug'"/g' \
		-i -e 's/category: "\?works"\?/categories:\n  - "作品紹介"/g' \
		-i -e 's/category: "\?memos"\?/categories:\n  - "備忘録"/g' \
		-i -e 's/category: "\?explanations"\?/categories:\n  - "紹介記事"/g' \
		-i -e 's/category: "\?blogs"\?/categories:\n  - "イベント"/g' \
		-i -e 's/^icon: "\(.\+\)"/thumbnail: "\/posts\/'$date'-'$slug'\/\1"/g' \
		-i -e 's/{% highlight \(.\+\) %}/~~~\1/g' \
		-i -e 's/{% endhighlight %}/~~~/g' \
		-i -e 's/^!\[\(.\+\)\](\(.\+\)){:\s*.img-small\s*}/{{< postfig src="\2" title="\1" width="240px" >}}/g' \
		-i -e 's/^!\[\(.\+\)\](\(.\+\)){:\s*.img-medium\s*}/{{< postfig src="\2" title="\1" width="480px" >}}/g' \
		-i -e 's/^!\[\(.\+\)\](\(.\+\))/{{< postfig src="\2" title="\1" >}}/g' \
		-i -e 's/^\[!\[\([^]]*\)](\([^)]*\))](\([^)]\+\))/{{< postfig src="\2" title="\1" width="240px" link="\3" >}}/g' \
		-i -e 's/^\[!\[\([^]]*\)](\([^)]*\)){:\s*\.img-small\s*}.*](\([^)]\+\))/{{< postfig src="\2" title="\1" width="240px" link="\3" >}}/g' \
		-i -e 's/^\[\([^<]*\)<br\/>!\[[^]]*](\([^)]*\))](\(.*\))/{{< postfig src="\2" title="\1" link="\3" >}}/g' \
		-i -e 's/{% post_url \(.\+\) %}/\/posts\/\1\//g' \
		-i -e 's/~~~conf.*/~~~kconfig/g' \
		$filename
done
