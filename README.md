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

### Association
- has_many :histories dependent: :destroy
- belongs_to :user

## historiesテーブル

|Column|Type|Options|
|------|----|-------|
|file_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :file

## tagsテーブル

|Column|Type|Options|
|------|----|-------|
|file_id|references|null: false, foreign_key: true|
|TagName_id|integer|null: false, foreign_key: true|
|TagData_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :file
- belongs_to_active_hash :TagName
- belongs_to_active_hash :TagData