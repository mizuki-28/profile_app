# Ruby on Rails チュートリアルのサンプルアプリケーション

これは、次の教材で作られたサンプルアプリケーションです。
[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
（第7版）
[Michael Hartl](https://www.michaelhartl.com/) 著

## ライセンス

[Ruby on Rails チュートリアル](https://railstutorial.jp/)内にある
ソースコードはMITライセンスとBeerwareライセンスのもとで公開されています。
詳細は [LICENSE.md](LICENSE.md) をご覧ください。

## 使い方

このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
その後、次のコマンドで必要になる RubyGems をインストールします。

```
$ gem install bundler -v 2.3.14
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
```

その後、データベースへのマイグレーションを実行します。

```
$ rails db:migrate
```

最後に、テストを実行してうまく動いているかどうか確認してください。

```
$ rails test
```

テストが無事にパスしたら、Railsサーバーを立ち上げる準備が整っているはずです。

```
$ rails server
```

詳しくは、[*Ruby on Rails チュートリアル*](https://railstutorial.jp/)
を参考にしてください。

## MEMO
```
    <canvas id="mychart-bar"></canvas>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
    var ctx = document.getElementById('mychart-bar');
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: ['January', 'February', 'March'],
        datasets: [{
          label: 'バックエンド',
          data: <%= @dataset_1 %>,
          backgroundColor: '#ffc0cb',
        }, {
          label: 'フロントエンド',
          data: <%= @dataset_2 %>,
          backgroundColor: '#ffd5bf',
        }, {
          label: 'インフラ',
          data: <%= @dataset_3 %>,
          backgroundColor: '#fff4bf',
        }],
      },
    });
    </script>
```
```
<script>
  const btn = document.getElementById('modalOpen');
  const modal = document.getElementById('modalCreate');
  const btnClose = document.getElementsById('modalClose');

  btn.addEventListener('click', function() {
    modal.style.display = 'block';
  })

  btnClose.addEventListener('click', function() {
    modal.style.display = 'none';
  })
</script>
```
```
<script>
{
  const openBtn = document.querySelector('.open');
  const modal = document.querySelector('.modal');
  const closeBtn = document.querySelector('.close');
  const overlay = document.querySelector('.overlay');

  openBtn.addEventListener('click', function(e){
    e.preventDefault();
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
```
  <!-- モーダル -->
  <div class="overlay"></div>
  <div class="modal">
    <div class="modal-content">
      <p>インフラの項目を削除しました！</p>
      <div class="center-button">
        <%= link_to "スキル編集ページに戻る", user_skills_path, class: "nomal button close" %>
      </div>
    </div>
  </div>
  <!-- モーダルおわり -->
```
```
{
  const openBtn = document.querySelector('.open');
  const modal = document.querySelector('.modal');
  const closeBtn = document.querySelector('.close');
  const overlay = document.querySelector('.overlay');

  openBtn.addEventListener('click', function(e){
    e.preventDefault();
    modal.classList.add('active');
    overlay.classList.add('active');
  });

  closeBtn.addEventListener('click', function(){
    modal.classList.remove('active');
    overlay.classList.remove('active');
  });
}
```
```
/* MODAL */
/* オーバーレイ（黒の背景） */
.overlay {
  /* 位置を固定 */
  position: fixed;
  top: 0;
  left: 0;
  /* 画面いっぱいに広がるようにする */
  width: 100%;
  height: 100vh;
  /* rgbaを使って60%の黒いオーバーレイにする */
  background: rgba(0, 0, 0, 0.6);  
  /* デフォルトでは見えないようにする */
  opacity: 0;
  visibility: hidden;
  /* 表示する際の変化の所要時間 */
  transition: .3s;
}
/* activeクラスのついたオーバーレイ */
.overlay.active {
  /* activeクラスがついたときにオーバーレイを表示する */
  opacity: 1;
  visibility: visible;
}
/* モーダルウィンドウ */
.modal {
  max-width: 500px;
  width: 86%;
  padding: 15px 20px;
  background: #fff;
  /* 位置の調整(真ん中に表示) */
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  /* デフォルトでは非表示にしておく */
  opacity: 0;
  visibility: hidden;
  /* 表示の変化にかかる時間 */
  transition: .3s;
}
/* activeクラスのついたモーダルウィンドウ */
.modal.active {
  opacity: 1;
  visibility: visible;
}
.modal p {
  font-size: 13px;
}
/* スクロールできる高さを出すための設定 */
section {
  height: 200vh;
}
```
