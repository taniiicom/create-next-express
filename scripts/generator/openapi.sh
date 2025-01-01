#!/bin/bash

# 必要なパッケージのインストール
npm install -g openapi-typescript

# OpenAPI 型の生成
openapi-typescript ./packages/server/api/openapi.yaml --output ./packages/shared/api/types/api.d.ts
