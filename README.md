# Book-Shelf

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
