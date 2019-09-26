
「Tourly」 - 旅をシェアするアプリケーション -
https://planyy.herokuapp.com/

概要
旅のルートをシェアすることで、旅の体験を共有することができるアプリケーションです。

テストユーザーとしてログインすることができます。

【環境】docker + Ruby on Rails + MySQL + Circle CI(テスト自動化)
※本番環境ではDBにPostgresqlを採用しています
【インフラ】Heroku
【主な機能】
・ユーザーや記事のCRUD処理
・ログイン機能
・画像投稿機能 (Active Strage + S3)
・記事検索機能 (ransack)
・フォロー機能
・いいね機能
・お気に入り機能
・ページネーション (kaminari)
・Ajax
・SNS認証機能 (devise)
【これから実装する機能】GoogleMap APIを使ったピンと経路の表示(現時点でローカルでは実装済み)、画像複数枚投稿機能

言語・フレームワーク
Ruby 2.5.5
Rails 5.2.1