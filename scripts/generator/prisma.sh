#!/bin/bash

# Prisma クライアントのインストールと型生成
npm install --save-dev prisma
npx prisma generate

# 型のコピーまたはシンボリックリンク作成
cp -r packages/server/node_modules/.prisma/client packages/shared/prisma-types
