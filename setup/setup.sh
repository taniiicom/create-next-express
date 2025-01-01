# ディレクトリ構造のセットアップ

# 必要なディレクトリの作成
mkdir -p packages/front
mkdir -p packages/server/prisma
mkdir -p packages/shared/api/types
mkdir -p packages/shared/prisma-types
mkdir -p scripts

# フォルダの移動
mv api packages/server/
mv front packages/
mv server packages/server/

# OpenAPI 定義ファイルの作成
cat <<EOL > packages/server/api/openapi.yaml
openapi: 3.0.0
info:
  title: Example API
  version: 1.0.0
paths:
  /example:
    get:
      summary: Example endpoint
      responses:
        '200':
          description: Successful response
          content:
            application/json:
              schema:
                type: object
                properties:
                  message:
                    type: string
EOL

# 型生成用スクリプトの作成 (scripts ディレクトリに集約)
cat <<EOL > scripts/generate-openapi-types.sh
#!/bin/bash

# 必要なパッケージのインストール
npm install -g openapi-typescript

# OpenAPI 型の生成
openapi-typescript ./packages/server/api/openapi.yaml --output ./packages/shared/api/types/api.d.ts
EOL
chmod +x scripts/generate-openapi-types.sh

cat <<EOL > scripts/generate-prisma-types.sh
#!/bin/bash

# Prisma クライアントのインストールと型生成
npm install --save-dev prisma
npx prisma generate

# 型のコピーまたはシンボリックリンク作成
cp -r packages/server/node_modules/.prisma/client packages/shared/prisma-types
EOL
chmod +x scripts/generate-prisma-types.sh

# 完了メッセージ
echo "ディレクトリと初期ファイルのセットアップが完了しました"
