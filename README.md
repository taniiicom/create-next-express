# create-nexpress-app

Next.js x Express x Prisma x OpenAPI x TS の高速開発モノレポテンプレート

an "express" development monorepo template with Next.js x Express x Prisma x OpenAPI x TS to release 1app / 1month.

## つかいかた / howto.

```bash
npx create-nexpress-app
```

## スタック / stack.

- typescript

front
- nextjs v14
- chakra-ui v2

server
- express
- docker

shared
- prisma
- openapi

## 特徴 / features.

- `server`, `front` それぞれ `packages` で管理するスタンダードなモノレポ構成
- `server` 側で, `prisma`, `openapi` を定義することで管理をシンプルにしつつ, 生成された型定義を `shared` パッケージで共有
- 自動生成スクリプトをルート直下の `scripts` に集約
