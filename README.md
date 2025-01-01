# create-nexpress-app

1 アプリ / 1 ヶ月リリース を実現するための Next.js x Express x Prisma x OpenAPI の高速開発モノレポテンプレート

an "express" development monorepo template with Next.js x Express x Prisma x OpenAPI to release 1app / 1month.

## つかいかた / howto.

```bash
npx create-nexpress-app
```

## スタック / stack.

- nextjs v14
- chakra-ui v2
- express
- prisma
- openapi

## 特徴 / features.

- `server`, `front` それぞれ `packages` で管理するスタンダードなモノレポ構成
- `server` 側で, `prisma`, `openapi` を定義することで管理をシンプルにしつつ, 生成された型定義を `shared` パッケージで共有
- 自動生成スクリプトをルート直下の `scripts` に集約
