# 山口県 新型コロナウイルス感染症対策サイト

[](
![](https://github.com/tokyo-metropolitan-gov/covid19/workflows/production%20deploy/badge.svg)
)

[![山口県 新型コロナウイルス感染症対策サイト](https://user-images.githubusercontent.com/42875682/76772976-17a3bd80-67e5-11ea-8f4e-ab01df696fc6.png)](https://covid19-yamaguchi.netlify.com/)

## Slackワークスペースへの参加

このサイトを運営・改善していくためのSlackワークスペースを解説しています。  
山口県 新型コロナウイルス感染症対策サイトの開発に興味がある方は、[こちらから登録](https://join.slack.com/t/covid19-yamaguchi/shared_invite/zt-dpiqhr12-LgiU8gAKZ_02Alkc5BoV8w)してご参加ください。

## ブランチについて

基本的に、`development`と`master`の2つのブランチをベースとして運用を行います。

- `development`

開発用ブランチです。  
このブランチにPRを発行し、動作確認を行ってください。

- `master`

本番用ブランチです。  
`development`ブランチで動作確認が終わったもののみをマージしていきます。

## ブランチの運用について

ブランチの運用については以下のように定めます。

- 機能追加やエンハンス系について
`feature/{issueNumber}-{branchName}` Ex) `feature/52-add_new_cards`

- 緊急のバグ修正等（issueを作る場合）
`hotfix/{issueNumber}-{branchName}` Ex) `hotfix/55-fix_nuxt_build_error`

- 緊急のバグ修正等（issueを作らない場合）
`hotfix/{branchName}` Ex) `hotfix/fix_nuxt_build_error`

## 貢献の仕方

上記を遵守いただいた上で、issueを作成していただき `development`へPRを発行してください。

※ `development`以外へのPRは禁止です。



## ライセンス
本ソフトウェアは、[MITライセンス](./LICENSE.txt)の元提供されています。

## 開発者向け情報

### 環境構築の手順

- 必要となるNode.jsのバージョン: 10.19.0以上

**yarn を使う場合**
```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev
```

**docker compose を使う場合**
```bash
# serve with hot reload at localhost:3000
$ docker-compose up --build
```

### `Cannot find module ****` と怒られた時

**yarn を使う場合**
```bash
$ yarn install
```

**docker compose を使う場合**
```bash
$ docker-compose run --rm app yarn install
```

### ステージング・本番環境への反映

`master` ブランチがアップデートされると、自動的に `production` ブランチにHTML類がbuildされます。そして、本番サイト https://yamaguchi.stopcovid19.jp/ が更新されます。

~~`staging` ブランチがアップデートされると、自動的に `gh-pages` ブランチにHTML類がbuildされます。そして、ステージングサイト https://stg-covid19-yamaguchi.netlify.com/ が更新されます。~~

`development` ブランチがアップデートされると、自動的に `dev-pages` ブランチにHTML類がbuildされます。そして、開発用サイト https://dev-covid19-yamaguchi.netlify.com/ が更新されます。
