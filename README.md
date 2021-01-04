# Book-Shelf
## 概要
本のレビューを投稿し共有できるアプリ

## 本番環境
URL:https://file-shelf.herokuapp.com/
テスト用アカウント
- メールアドレス: hogehoge@gmail.jp
- パスワード: pas123

## 制作背景
本を読む上でやりたいことしていることを
１つに合わせたサイトを作成したかった。

- 読んだ本の内容をメモしておきたい
- どの本を読むか参考にしているレビュー

## 工夫した点
本を登録する際にカテゴリーを設定することで
トップページでカテゴリーごとにフィルタリングされる

## 使用技術
- Rails on Rails
- Ruby
- haml
- scss
- jquery
- heroku

## 今後実装したい機能
- 閲覧するや評価をできる機能の実装

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
|email|string|null: false, unique:true|
|password|string|null: false|

### Association
- has_many :cards dependent: :destroy
- has_many :comments dependent: :destroy

## cardsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|image|string|null: false|
|title|string|null: false|
|type_id|integer|null: false|
|text|text||


### Association
- has_many :comments dependent: :destroy
- belongs_to :user
- belongs_to_active_hash :type

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|card_id|references|null: false, foreign_key: true|
|text|text||

### Association
- belongs_to :user
- belongs_to :card
