#!/bin/bash
# rm -rf quartz
# git clone https://github.com/mssrprad/quartz
cd quartz;
npm i;
rm -rf content/*;
~/.cargo/bin/obsidian-export "/home/anirudh/Documents/Obsidian Vault" ./content --frontmatter=always --no-recursive-embeds;
npx quartz build
rm -rf ../website
mkdir ../website
mkdir ../website/dist
mkdir ../website/content
cp -r content/* ../website/content
cp -r public/* ../website/dist
npx quartz build --serve