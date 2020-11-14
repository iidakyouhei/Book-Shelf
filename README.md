## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|

### Association
- has_many :files dependent: :destroy
- has_many :histories dependent: :destroy

## filesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|url|string|null: false|
|title|string|null: false|
|date|string|null: false|
|type_id|integer|null: false, foreign_key: true|


### Association
- has_many :histories dependent: :destroy
- belongs_to :user
- has_many :freeTags dependent: :destroy
- belongs_to_active_hash :type

## historiesテーブル

|Column|Type|Options|
|------|----|-------|
|file_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :file

## freeTagsテーブル

|Column|Type|Options|
|------|----|-------|
|file_id|references|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :file
- belongs_to_active_hash :tag
