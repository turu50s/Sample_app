# Ruby on Rails チュートリアルのサンプルアプリケーション

これは、次の教材で作られたサンプルアプリケーションです。
[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
[Michael Hartl](http://www.michaelhartl.com) 著

## ライセンス

[Ruby on Rails チュートリアル](https://railstutorial.jp/)内にある
ソースコードはMITライセンスのもとで公開されています。
詳細は[LICENSE.md](LICENSE.md)を御覧ください。

## 使い方

このアプリケーションを動かす場合は、まずレポジトリを手元にクローンして下さい。その後、次のコマンドで必要になるRubyGemsをインストールします。
```
$ bundle install --without production
```
その後、データベースへのマイグレーションを実行します。
```
% rails db:migrate
```
最後に、テストを実行して上手く動いているか確認して下さい。
```
$ rails test
```
テストが無事に通ったら、Railsサーバーを立ち上げる準備が整っているはずです。
```
$ rails server
```
詳しくは、[*Ruby on Railsチュートリアル*](https://railstutorial.jp/)を
参考にして下さい。
* Ruby version v5.4.1
