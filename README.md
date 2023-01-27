# Ruby on Rails プロフィールアプリの作成
## 使い方
このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
```
$ git clone https://github.com/mizuki-28/profile_app
```
その後、次のコマンドで必要になる RubyGems をインストールします。
```
$ bundle install
```
その後、データベースへのマイグレーションを実行します。
```
$ rails db:migrate
```
Railsサーバーを立ち上げる準備が整っているはずです。
```
$ rails s
```
## MEMO
```
javascript レディーアクション
リダイレクト to のパラメータに表示したいデータをいれる
createアクション後にモーダル表示
```
<script>
{
  const openBtn = document.querySelector('.openBtn');
  const closeBtn = document.querySelector('.closeBtn');
  const modal = document.querySelector('.modal-destroy');
  const overlay = document.querySelector('.overlay-destroy');

  openBtn.addEventListener('click', function(event){
    event.preventDefault();
    modal.classList.add('active');
    overlay.classList.add('active');
  });

  closeBtn.addEventListener('click', function(){
    modal.classList.remove('active');
    overlay.classList.remove('active');
  });
}
</script>
```
