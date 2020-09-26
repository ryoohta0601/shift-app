# shift-app
 このツールは、登録シフトを一元管理することができます。<br>
 This tool allows you to centrally manage your registered shifts.<br>
 アプリURL↓<br>
 https://shift-app-246.herokuapp.com/<br>
 ログイン,メールアドレス↓<br>
 test@test.jp<br>
 ログインパスワード↓<br>
 password
 <br>

# アプリ説明（Description）
 登録したシフトがカレンダーに表示されます。<br>
 The registered shift is displayed on the calendar.
<br>
# 制作背景（Production background）
 アルバイトをしているレストランでシフトを作りながら、全員のシフトを自動管理できれば、時間の節約になると思いました。<br>
 I thought that if I could automatically manage work shifts for all while creating a shift at a restaurant where I was a part-time job, I would think it would save time.
<br>
# デモ（Demo）
## 登録（New post action）
![readme用_new](https://user-images.githubusercontent.com/63589113/92761820-feaf4a00-f3cc-11ea-95da-df8921629818.gif)
## 編集（Edit action）
![readme用_edit](https://user-images.githubusercontent.com/63589113/92758818-10dbb900-f3ca-11ea-9c27-33e542cc27f7.gif)
## 削除（Delete action）
![readme用_destroy](https://user-images.githubusercontent.com/63589113/92761914-1686ce00-f3cd-11ea-96be-04b45c7d135d.gif)


# 開発環境（Requirements）
 rails 6.0.3.2<br>
 psql (PostgreSQL) 12.4<br>
 devise 4.7.2<br>
 simple_calendar 2.4.1
 <br>
 
# データベース設計（Design DataBase scheme）
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
|start_time|datetime|null: false|
|out_time|time|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
