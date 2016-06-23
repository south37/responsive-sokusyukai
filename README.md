# Setup

```
$ git clone git://github.com/south37/responsive-sokusyukai.git && cd responsive-sokusyukai
$ bundle install
$ bin/rails server
```

# 課題は以下
## 1. width を固定しない
- master か step_1 から start
- project の 281px
  - width: 25% に変更
- cover-image の 240px, 135px
  - width: 100% に変更

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
