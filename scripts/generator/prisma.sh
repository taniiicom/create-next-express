#!/bin/bash

# Prisma クライアントのインストールと型生成
npm install --save-dev prisma

# server 内に移動
cd packages/server

# prisma client の生成
npx prisma generate

# ルートディレクトリに移動
cd ../../

# 型のコピーまたはシンボリックリンク作成
cp -r packages/server/node_modules/.prisma/client packages/shared/prisma/types
