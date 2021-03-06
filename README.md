# README

# アプリ名　app-neme 

*　My Business card　

# リポジトリ　repository 

*　yossy0201/Business-Card
 
# 詳細　details

* 名刺管理アプリを開発しました。このアプリを使用することで、紙の名刺を管理する必要が無くなります。

* I developed My Business card . By using this app, you no longer need to manage paper business cards.
 
# 魅力が直感的に伝えわるデモ動画や図解　Demo videos and illustrations that intuitively convey the charm

* トップページ画面　top page
  https://gyazo.com/d8f672982421da212f3ae237d9ae05dd　

* 詳細画面の動画　details page video
  https://gyazo.com/01bcaf97e8d908601b15dc96596ce5f7　

# セールスポイントや差別化などを説明　Features

* 名刺を管理するだけでなく、顧客の詳細情報を登録することができるため明確な顧客情報を管理することができます。

* you can register not only detailed customer information but also manage clear customer information.

# 使用方法　Usage

*　git clone　https://github.com/yossy0201/Business-Card
 
# My Business cardを動かすのに必要なライブラリなどを列挙する Requirement My Business card
 
* ruby 2.5.1

# 本番環境(デプロイ先) Production environment

* https://masaki-app.herokuapp.com/

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :posts_tags
- has_many  :tags,  through:  :posts_tags

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
### Association
- has_many :posts_tags
- has_many  :posts,  through:  :posts_tags

## posts_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user
 
# 作成情報を列挙する　Author
 
* 作成者　yossy0201
