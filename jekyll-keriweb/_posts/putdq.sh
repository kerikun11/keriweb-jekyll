#!/bin/bash

sed -e '/^tag: \[[^"]/ {s/\[/["/g; s/]/"]/g}' 201* -i| grep tag:

