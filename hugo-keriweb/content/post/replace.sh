#!/bin/sh
echo $1
for filename in $@
do
	echo file: $filename
	date=${filename:0:10}
	slug=${filename%.*}
	slug=${slug:11}

#		-i -e 's/^\(title: .*\)/\1\nslug: "'$slug'"\naliases:\n  - "\/posts\/'$date'-'$slug'\/"/g' \
	sed \
		-i -e 's/layout: .*/date: "'$date'"/g' \
		-i -e 's/^\(title: .*\)/\1\nslug: "'$slug'"/g' \
		-i -e 's/category: "\(.\+\)"/categories:\n  - "\1"/g' \
		-i -e 's/^icon: "\(.\+\)"/thumbnail: "\/posts\/'$date'-'$slug'\/\1"/g' \
		-i -e 's/{% highlight \(.\+\) %}/~~~\1/g' \
		-i -e 's/{% endhighlight %}/~~~/g' \
		-i -e 's/^!\[\(.\+\)\](\(.\+\))/{{< postfig src="\2" title="\1" width="360px" >}}/g' \
		-i -e 's/^\[!\[\([^\]]*\)\](\([^)]*\))\](\([^)]*\))/{{< postfig src="\2" title="\1" width="360px" link="\3" >}}/g' \
		-i -e 's/{:\s\?\.img-small}\s*//g' \
		-i -e 's/{:\s\?\.img-medium}\s*//g' \
		-i -e 's/{% post_url \(.\+\) %}/\/posts\/\1\//g' \
		$filename
done
