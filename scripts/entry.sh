#!/bin/bash
set -eux

####################
# ディレクトリを作成する
# 例: 202506130916_23
####################

cd `dirname $0`
cd ..

timestamp=$(date +"%Y%m%d%H%M")

# 既存の最新番号を取得（形式: YYYYMMDDHHMM_N）
latest_number=$(find . -maxdepth 1 -type d -regextype posix-extended -regex './[0-9]{12}_[0-9]+?' |
    sed -E 's|.*/[0-9]{12}_([0-9]+?)$|\1|' |
    sort -n | tail -n 1)

# 採番
if [[ -z $latest_number ]]; then
  new_number=1
else
  new_number=$((latest_number + 1))
fi

dirname="./${timestamp}_${new_number}"

# ディレクトリ作成
mkdir $dirname
touch "${dirname}/README.md"
