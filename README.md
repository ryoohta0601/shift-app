# Design DataBase scheme
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :shifts

## shiftsテーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|start_time|time|null: false|
|end_time|time|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user