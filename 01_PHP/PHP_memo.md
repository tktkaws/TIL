# PHP



## 学習計画

##### 基礎

##### 　ドットインストール

　知識をこのメモに集約する　＝　重要な知識をピックアップして編集して残すことがアウトプットの基礎なのでは？



##### 応用

##### 　ドットインストール

　　アプリを作成

##### 　ABC

　　問題を解く



**Udemy**



## Memo

~~~php
 #03 メッセージを表示してみよう (02:44)
<?php

echo 'Hello taguchi' . PHP_EOL;
echo 'Hi taguchi' . PHP_EOL;

/*
改行を入れるには、いくつかの方法がありますが PHP_EOL; というキーワードを使ってあげれば、環境に応じて適切に改行をしてくれます。
ただし文字列のあとにつなげるには、 . （ピリオド）という記号が必要です。
また、前後に空白を入れることもできるので、このように見やすくしておきましょう。
*/

 #04 コメントを使ってみよう (01:19)
コメントの書き方
コメントの使い方

  // comment

# comment

/*
comment
comment
comment
*/


 #05 変数を使ってみよう (02:55)
変数と文字列の連結
  
<?php

// $name = 'taguchi';
$name = 'dotinstall';

// echo 'Hello taguchi' . PHP_EOL;
// echo 'Hi taguchi' . PHP_EOL;

echo 'Hello ' . $name . PHP_EOL;
// echo 'Hi ' . $name . PHP_EOL;
echo 'Hi ' . $Name . PHP_EOL;


 #06 文字列の扱いを見ていこう (02:06)
""による文字列の表現
変数の埋め込み
特殊文字の表現
<?php

$name = 'taguchi';

// echo 'It's Sunday. Hello ' . $name . PHP_EOL;
// echo "It's Sunday. Hello " . $name . PHP_EOL;
// echo "It's Sunday. Hello $name" . PHP_EOL;
// echo "It's \"Sunday\". Hello $name" . PHP_EOL;
echo "It's \"Sunday\".\t Hello $name" . PHP_EOL;

 #07 ヒアドキュメントを使ってみよう (02:18)
ヒアドキュメント
ナウドキュメント
ここで変数を展開しない書き方を nowdoc 、展開するほうの書き方は heredoc と呼ぶ  
<?php

$name = 'taguchi';

// $text = <<<'EOT' // nowdoc
// $text = <<<"EOT" // heredoc
  $text = <<<EOT
  hello! $name
    this is looooong
  text!
  
  EOT;

echo $text;
 #08 数値の計算をしてみよう (02:42)
+ - * / % **
計算の優先順位
  
<?php

// echo 10 + 3 . PHP_EOL; // 13
// echo 10 - 3 . PHP_EOL; // 7
// echo 10 * 3 . PHP_EOL; // 30
// echo 10 / 3 . PHP_EOL; // 3.3333...

// echo 10 % 3 . PHP_EOL; // 1
// echo 10 ** 3 . PHP_EOL; // 1000

// echo 2 + 10 * 3 . PHP_EOL; // 32
// echo (2 + 10) * 3 . PHP_EOL; // 36

echo 2 + '3' . PHP_EOL; // 5
PHP では数値っぽい文字列を計算に使うと、なるべく数値に変換しようとします。

 #09 変数を使った計算をしてみよう (01:51)
代入を伴う演算子
++ --
  
<?php

$price = 500;

// $price = $price + 100;
$price += 100; // 600
$price *= 100; // 60000

$price++; // 60001
$price--; // 60000

echo $price . PHP_EOL;


 #10 定数を使ってみよう (02:41)
define()
const
  
<?php

// $name = 'taguchi';
// $name = 'dotinstall';

// define('NAME', 'taguchi');
// define('NAME', 'dotinstall'); エラー
// echo NAME . PHP_EOL;

const NAME = 'taguchi';
const NAME = 'dotinstall';
echo NAME . PHP_EOL;	

 #11 データ型を整理しよう (01:24)
主なデータ型
 #12 変数の型を調べてみよう (01:54)
var_dump()　型を調べる
キャスト　型を変更する
  
<?php

$a = 'hello';
$b = 10;
$c = -1.3;
$d = null;
$e = true;

// var_dump($a);
// var_dump($b);
// var_dump($c);
// var_dump($d);
// var_dump($e);

$x = (float)5;
$y = (string)3.2;

var_dump($x);
var_dump($y);
 #13 ifで条件分岐をしてみよう (02:33)
if ...
if ... else ...
if ... elseif ... else ...
  
<?php

// $score = 85;
// $score = 70;
$score = 40;

if ($score >= 80) {
  echo 'Great!' . PHP_EOL;
} elseif ($score >= 60) {
  echo 'Good!' . PHP_EOL;
} else {
  echo 'OK!' . PHP_EOL;
}
 #14 比較演算子と真偽値について見ていこう (02:33)
>= <= > <
=== !==
単一の値の評価
単一の値が false と評価されるのは、ここに書いたとおり真偽値の false や数値や文字列の 0 、空文字や null 、空の配列といった場合
 #15 論理演算子を使ってみよう (02:56)
&&
||
!
  
// && and なおかつ
// || or もしくは
// ! 〜ではない
  
 #16 switchで条件分岐をしてみよう (02:36)
switch
case
break
  
switch ($signal) {
  case 'red':
    echo 'Stop!' . PHP_EOL;
    break;
  case 'yellow':
    echo 'Caution!' . PHP_EOL;
    break;
  case 'blue':
    echo 'Go!' . PHP_EOL;
    break;
}

 #17 switchを使いこなしてみよう (02:27)
複数条件の指定
default
breakに関する注意点
break を書き忘れてしまった場合、 red の処理が break が出てくるまで続くので、こちらの Caution! も表示されてしまうはずです
  
<?php

$signal = 'red';
// $signal = 'blue';
// $signal = 'green';
// $signal = 'pink';

switch ($signal) {
  case 'red':
    echo 'Stop!' . PHP_EOL;
    // break;
  case 'yellow':
    echo 'Caution!' . PHP_EOL;
    break;
  case 'blue':
  case 'green':
    echo 'Go!' . PHP_EOL;
    break;
  default:
    echo 'Wrong signal!!' . PHP_EOL;
    break;
}

 #18 forを使ったループ処理をしよう (01:42)
for
カウンターの表示
  
<?php

for ($i = 1; $i <= 5; $i++) {
  // echo 'Hello' . PHP_EOL;
  echo "$i - Hello" . PHP_EOL;
}

 #19 whileを使ったループ処理をしよう (02:40)
while
do ... while
  とりあえず 1 回は実行して条件次第でまた実行してほしいという場合は do-while を使ってあげてください。
    
<?php

// $hp = 100;
$hp = -50;

// while ($hp > 0) {
//   echo "Your HP: $hp" . PHP_EOL;
//   $hp -= 15;
// }

do {
  echo "Your HP: $hp" . PHP_EOL;
  $hp -= 15;
} while ($hp > 0);


    
 #20 continue､breakを使ってみよう (02:30)
continue 処理をスキップ
break　処理を中断
  
<?php

for ($i = 1; $i <= 10; $i++) {
  // if ($i === 4) {
  // if ($i % 3 === 0) {
  //   continue;
  // }
  if ($i === 4) {
    break;
  }
  echo $i . PHP_EOL;
}
 #21 関数で処理をまとめてみよう (02:49)
関数の定義
関数の呼び出し
  
<?php

function showAd() 
{
  echo '----------' . PHP_EOL;
  echo '--- Ad ---' . PHP_EOL;
  echo '----------' . PHP_EOL;
}

showAd();
echo 'Tom is great!' . PHP_EOL;
echo 'Bob is great!' . PHP_EOL;
showAd();
echo 'Steve is great!' . PHP_EOL;
echo 'Bob is great!' . PHP_EOL;
showAd();


 #22 引数を使ってみよう (02:21)
引数
仮引数と実引数
引数のデフォルト値 $message = 'Ad'
  
  <?php

function showAd($message = 'Ad')  // 仮引数
{
  echo '----------' . PHP_EOL;
  echo '--- ' . $message . ' ---' . PHP_EOL;
  echo '----------' . PHP_EOL;
}

showAd('Header Ad'); // 実引数
echo 'Tom is great!' . PHP_EOL;
echo 'Bob is great!' . PHP_EOL;
// showAd('Ad');
showAd();
echo 'Steve is great!' . PHP_EOL;
echo 'Bob is great!' . PHP_EOL;
showAd('Footer Ad');


 #23 returnで値を返してみよう (02:37)
return
  重要なポイントとして、関数内で return と書くと、その時点で値が戻されて、それ以降の処理は無視されます。
  
<?php

function sum($a, $b, $c)
{
  // echo $a + $b + $c . PHP_EOL;
  return $a + $b + $c;
  echo 'Here' . PHP_EOL;
}

// sum(100, 200, 300); // 600
// sum(300, 400, 500); // 1200

echo sum(100, 200, 300) + sum(300, 400, 500) . PHP_EOL; // 1800


 #24 変数のスコープを理解しよう (02:41)
global
ローカルスコープ
  
グローバルスコープ
  1:12
ただ、この global を使ってしまうとコードが長くなったときに、どこで変数の値が変更されているか追いにくくなります。
    そこで、この関数内で使う変数は引数で渡してあげるか、その関数内で定義してあげるほうがいいでしょう。
  
<?php

$rate = 1.1; // グローバルスコープ 関数の外全てで有効なのでグローバルスコープ

function sum($a, $b, $c)
{
  // global $rate;
  $rate = 1.08; // ローカルスコープ 関数内だけで有効なのでローカルスコープ
  return ($a + $b + $c) * $rate;
}

echo sum(100, 200, 300) + sum(300, 400, 500) . PHP_EOL; // 1944



 #25 無名関数を作ってみよう (01:52)
無名関数
  無名関数、もしくはクロージャー
  無名関数を使えるようになると関数自体を別の関数の引数にして渡すことができたり、いろいろ便利
<?php

// function sum($a, $b, $c)
// {
//   return $a + $b + $c;
// }

$sum = function ($a, $b, $c) { // 無名関数
  return $a + $b + $c;
};

echo $sum(100, 300, 500) . PHP_EOL;


  
 #26 条件演算子を使ってみよう (02:19)
条件演算子
    return $total < 0 ? 0 : $total;
  
<?php

function sum($a, $b, $c) 
{
  $total = $a + $b + $c;
  
  // if ($total < 0) {
  //   return 0;
  // } else {
  //   return $total;
  // }
  return $total < 0 ? 0 : $total;
}

echo sum(100, 300, 500) . PHP_EOL; // 900
echo sum(-1000, 300, 500) . PHP_EOL; // 0


 #27 引数の型を指定しよう (02:58)
引数の型付け
  この型指定ですが、デフォルトでは弱い型付けという方式になっていて、実は違った型でも可能な限り正しい型に変換してしまうという点に注意しておいてください。
返り値の型付け
  
<?php

declare(strict_types=1); // 強い型付け

function showInfo(string $name, int $score): void
{
  echo $name . ': ' . $score . PHP_EOL;
}

// showInfo('taguchi', 40);
// showInfo('taguchi', 'dotinstall');
showInfo('taguchi', '4');



 #28 nullも渡せるようにしよう (02:32)
?型名
  PHP では型の前に ? マークを付けてあげると、 null かその型かという意味になります。
  
<?php

declare(strict_types=1);

function getAward(?int $score): ?string
{
  return $score >= 100 ? 'Gold Medal' : null;
}

echo getAward(150) . PHP_EOL;
echo getAward(40) . PHP_EOL;
 #29 配列を使ってみよう (02:11)
配列の作り方
インデックスによるアクセス
  
<?php

// $score1 = 90;
// $score2 = 40;
// $score3 = 100;

$scores = [
  90,
  40,
  100,
];

$scores[1] = 60;
echo $scores[1] . PHP_EOL;


 #30 配列のキーを指定しよう (02:19)
print_r()
配列のキー
配列のデータ構造
  
<?php

$scores = [
  'first'  => 90, 
  'second' => 40, 
  'third'  => 100,
];

// var_dump($scores); // 詳細表示
// print_r($scores); // 詳細表示

echo $scores['third'] . PHP_EOL;


 #31 foreachで配列を操作しよう (01:43)
foreach ($arr as $value)
foreach ($arr as $key => $value)
  
<?php

$scores = [
  'first'  => 90, 
  'second' => 40, 
  'third'  => 100,
];

// foreach ($scores as $value) {
// foreach ($scores as $score) {
//   echo $score . PHP_EOL;
// }

foreach ($scores as $key => $score) {
  echo $key . ' - ' . $score . PHP_EOL;
}


 #32 配列の要素を展開しよう (02:25)
...$arr
配列の中の配列へのアクセス
  
<?php

$moreScores = [
  55,
  72,
  'perfect',
  [90, 42, 88],
];

$scores = [
  90,
  40,
  ...$moreScores,
  100,
];

// print_r($scores);

echo $scores[5][2] . PHP_EOL;

 #33 可変長引数を表現しよう (01:39)
可変長引数
  function sum(...$numbers)
  
<?php

// function sum($a, $b, $c)
function sum(...$numbers)
{
  // return $a + $b + $c;
  $total = 0;
  foreach ($numbers as $number) {
    $total += $number;
  }
  return $total;
}

echo sum(1, 3, 5) . PHP_EOL;
echo sum(4, 2, 5, 1) . PHP_EOL;


 #34 複数の返り値を受け取ってみよう (01:57)
配列の返り値
  1:42
このように配列を使えば、複数の返り値を受け取ることもできる
list()
    
<?php

function getStats(...$numbers)
{
  $total = 0;
  foreach ($numbers as $number) {
    $total += $number;
  }
  return [$total, $total / count($numbers)];
}

// print_r(getStats(1, 3, 5));

// list($sum, $average) = getStats(1, 3, 5);
[$sum, $average] = getStats(1, 3, 5);

echo $sum . PHP_EOL;
echo $average . PHP_EOL;
~~~