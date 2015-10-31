#!/bin/sh
tmpdir=/home/kerikun11/temp/
repo=git://github.com/kerikun11/keriweb.git
rsyncto=/var/keriweb/
rsync='rsync -e "ssh -i ~/.ssh/id_ecdsa" -vrtl --delete'

if [ -d "$tmpdir" ];then
    cd "$tmpdir"
    if git pull; then
        $rsync ./ "$rsyncto"
        exit 0
    fi
fi

dirname=`dirname "$tmpdir"`
basename=`basename "$tmpdir"`

mkdir -p "$dirname"
cd "$dirname"
rm -rf "$basename"

if git clone "$repo" "$basename"; then
    cd "$basename"
    $rsync ./ "$rsyncto"
fi

