#!/usr/bin/env bash

## export https_proxy=http://192.168.8.253:1081;export http_proxy=http://192.168.8.253:1081;export all_proxy=socks5://192.168.8.253:1080
## ql repo https://github.com/vc5/wool.git "dd_|ks_"  "sync|cookie" "dd_cookie"  main


## passerby-b

#快手果园
git clone --depth 1 https://github.com/passerby-b/ks_fruit.git  upstream/passerby-b/ks_fruit
cp upstream/passerby-b/ks_fruit/ks_fruit.js ./ks_fruit.js
sed -i '/task_local/i\const $ = new Env("快手果园");' ./dd_fruit.js

#滴滴果园
git clone --depth 1 https://github.com/passerby-b/didi_fruit.git  upstream/passerby-b/didi_fruit
cp upstream/passerby-b/didi_fruit/dd_fruit.js ./dd_fruit.js
cp upstream/passerby-b/didi_fruit/dd_cookie.js ./dd_cookie.js
sed -i '/task_local/i\const $ = new Env("滴滴果园");' ./dd_fruit.js

## 清理
rm upstream/* -r