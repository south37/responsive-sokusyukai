# Setup

```
$ git clone git://github.com/south37/responsive-sokusyukai.git && cd responsive-sokusyukai
$ bundle install
$ bin/rails server
```

# 課題は以下
## 0. viewport を指定
- master か step_0 から start
- layouts/application.html.haml を開いて、 `%meta{:name => "viewport", :content => "width=device-width, initial-scale=1.0" }` を追記
- この指定をしないと、画面サイズが横幅 980px として扱われてしまう。

## 1. width を固定しない
- step_1 から start
- project の width: 281px
  - width: 25% に変更
- cover-image の width: 240px
  - max-width: 100% に変更

##  2. 幅が狭くなってきたら sidebar を消す
- step_2 から start
- とりあえず、 780px で media query で display: none してみる

## 3. 幅が狭くなってきたら、行数を変える
- step_3 から start
- width の % 指定を、 media query で変える
  - 自分は 1280px, 1024px, 640px でやりました

## 4. header の要素を消すのではなく、toggle 出来るようにする
- step_4 から start
- media query で、並べた要素を hover する layer 状にする
    - display: none で消しておく
- fa-list を toggle button にして、 js で表示
