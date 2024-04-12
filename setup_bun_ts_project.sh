#!/bin/bash

# プロジェクト名を引数から受け取る
PROJECT_NAME=$1

# プロジェクトディレクトリを作成して移動
mkdir $PROJECT_NAME
cd $PROJECT_NAME

# Bunでプロジェクトを初期化
bun init

# TypeScriptをインストール
bun add typescript

# tsconfig.jsonを作成
echo '{
  "compilerOptions": {
    "target": "esnext",
    "module": "esnext",
    "strict": true,
    "jsx": "preserve",
    "esModuleInterop": true
  },
  "include": ["src/**/*"],
  "exclude": ["node_modules"]
}' > tsconfig.json

# サンプルのTypeScriptファイルを作成
mkdir src
echo 'console.log("Hello, Bun!");' > src/index.ts

# .gitignoreファイルを作成
echo "node_modules/" > .gitignore
echo "bun.lockb" >> .gitignore
echo "dist/" >> .gitignore

# プロジェクトの基本的な設定が完了
echo "Bunを使用したTypeScriptプロジェクトの雛形が準備されました。"

