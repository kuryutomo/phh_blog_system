# 初期化手順
1. GitHub で Fork する
1. `$ git clone クローンする URL ` とする
1. `$ cd クローンしたディレクトリ名`
1. `$ npm init` として初期化する
1. `$ mysql.server start` として MySQL サーバーを立ち上げる
1. `$ mysql -uroot -p < schema.sql` として データベースを初期化する 
1. `$ PHH_DB_USER='DB ユーザー名'; PHH_DB_PASSWD='DB パスワード'; node index.js`
1. Web ブラウザから `http://localhost:8000` にアクセスして動作を確認する

# 課題
+ 不完全な機能を動くようにする（記事の削除、変更など）
+ デザインを変更する
+ 機能を追加する（画像のアップロード、カレンダーなど）
+ セキュリティを強化する（ログイン機能など）
