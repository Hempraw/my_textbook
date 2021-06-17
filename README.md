# README
### アプリケーション名
  MyTextBoook
### アプリケーション概要
  自身で勉強した内容を記録・整頓しておくためのアプリケーション
### URL
  https://my-textbook.herokuapp.com/
### テスト用アカウント
 E-mail:test@test
 pass  :1111
### 利用方法
  ユーザー登録をし、言語ごとにタイトルをつけて内容を記述する
### 目指した課題解決
  言語は日々使わなければ忘れてしまう。
  学習する際はこのアプリケーションに説明できる様に記述し
  忘れてしまった時や思い出せない時のの参考/教科書になる。
### 実装した機能について
  トップページ
  一覧表示機能
  投稿・詳細・編集・削除機能
  ユーザー認証機能
### 実装予定の機能
  非同期通信
  コメント機能
  検索機能
  UI改善
  タグ機能
# データベース設計
### user table
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
### アソシエーション
has_many :items
### item table
| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| language | integer    | null: false       |
| title    | string     | null: false       |
| content  | text       |                   |
| user     | references | foreign_key: true |
### アソシエーション
belongs_to :user