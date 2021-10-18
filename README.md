# サーバーサイド開発ハンズオン

## 環境構築

[docker-compose](https://docs.docker.jp/compose/install.html)のインストールが前提

```
// コンテナのビルド
docker-compose build

// railsアプリに対応するDBやテーブルを作るrailsコマンド
docker-compose run web rails db:create
docker-compose run web rails db:migrate
// マスターデータを投入するrailsコマンド
docker-compose run web rails db:seed

// コンテナの起動
// コンテナ設定でアプリの起動も自動で行われるようになっている
docker-compose up

// 別ターミナルで下記スクリプトを実行して疎通確認
./test.sh
```

下記のメッセージが表示されたら well done :tada:

```
{"message":"Implement me!"}
```

## API 一覧

- ガチャ一覧取得
  - `GET /gachas`
- ガチャ取得 (id 指定)
  - `GET /gachas/1`
- 単発ガチャ抽選 (未実装)
  - `POST /gachas/1/draw`

一覧は下記の rails コマンドで確認することもできます

```
docker-compose run --rm web rails routes
```

GET API はブラウザから `localhost:3000/gachas` のようにアクセスすることで json が出力されることを確認できます。

POST API は環境構築の時に叩いた `test.sh` のように `curl` コマンドでアクセスするか[Postman](https://www.postman.com/)のようなツールを使って確認できます。
