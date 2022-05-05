#!/usr/bin/env bash

## export https_proxy=http://192.168.8.253:1081;export http_proxy=http://192.168.8.253:1081;export all_proxy=socks5://192.168.8.253:1080
## ql repo https://github.com/vc5/wool.git "dd_|ks_|mt_"  "sync|cookie" "dd_cookie|mtCookie"  main


## passerby-b

#快手果园
git clone --depth 1 https://github.com/passerby-b/ks_fruit.git  upstream/passerby-b/ks_fruit
cp upstream/passerby-b/ks_fruit/ks_fruit.js ./ks_fruit.js
sed -i '/task_local/i\const $ = new Env("快手果园");\n' ./ks_fruit.js

#滴滴果园
git clone --depth 1 https://github.com/passerby-b/didi_fruit.git  upstream/passerby-b/didi_fruit
cp upstream/passerby-b/didi_fruit/dd_fruit.js ./dd_fruit.js
cp upstream/passerby-b/didi_fruit/dd_cookie.js ./dd_cookie.js
sed -i '/task_local/i\const $ = new Env("滴滴果园");\n' ./dd_fruit.js

#美团买菜果园
git clone --depth 1 https://github.com/passerby-b/mt_fruit.git  upstream/passerby-b/mt_fruit
cp upstream/passerby-b/mt_fruit/mt_fruit.js ./mt_fruit.js
cp upstream/passerby-b/mt_fruit/mtCookie.js ./mtCookie.js
sed -i '/task_local/i\const $ = new Env("美团买菜果园");\n' ./mt_fruit.js

## 清理
rm upstream/* -rf