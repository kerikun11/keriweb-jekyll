#!/bin/sh
tmpdir=/home/kerikun11/Downloads/keriweb
repo=https://github.com/kerikun11/keriweb.git
rsyncfrom=./jekyll-keriweb/_site/
rsyncto=/var/keriweb
rsync='rsync -vrtl --delete'

if [ -d "$tmpdir" ];then
	echo "found keriweb directory"
	cd "$tmpdir"
	if git pull; then
		$rsync "$rsyncfrom" "$rsyncto"
		echo "end"
		exit 0
	fi
fi

dirname=`dirname "$tmpdir"`
basename=`basename "$tmpdir"`

mkdir -p "$dirname"
cd "$dirname"
rm -rf "$basename"

if git clone "$repo" "$basename"; then
	echo "clone keriweb"
	cd "$basename"
	$rsync "$rsyncfrom" "$rsyncto"
fi

