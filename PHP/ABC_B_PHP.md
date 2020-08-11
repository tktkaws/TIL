## ABCProblems_B_PHP

## https://kenkoooo.com/atcoder/#/table/

## 雛形

---

### url

### 問題文

```

```

##### アルゴリズム例

```
標準入力

標準出力
```

##### 回答　最速

```php

```

##### 回答　最遅

```php

```

---

## https://atcoder.jp/contests/abc174/tasks/abc174_b

### 問題文

2 次元平面上に NN 個の点があります。 ii 個目の点の座標は (Xi,Yi)(Xi,Yi) です。

これらのうち、原点からの距離が DD 以下であるような点は何個ありますか？

なお、座標 (p,q)(p,q) にある点と原点の距離は √p2+q2p2+q2 で表されます。

##### アルゴリズム例

標準入力

ハッシュを作成

ハッシュから距離を計算した配列を作成

平方根

for 文で配列<=距離であればカウントアップ

そのカウントを標準出力

##### 回答　最速

```php
<?php
fscanf(STDIN, "%d %d", $N, $D);
$s = 0;
$D *= $D;

for ($i = 0; $i < $N; $i++) {
  fscanf(STDIN, "%f %f", $x, $y);
  if ((pow($x, 2.0) + pow($y, 2.0)) <= $D) $s++;
}

echo $s;

```

##### 回答　最遅

```php
<?php
// 複数行の標準入力を一行ずつ配列に代入する
$stdins = array();
while (true) {
    $input = trim(fgets(STDIN));
    $stdin = explode(' ', $input);
    if ($input == '') {
        break;
    }
    $stdins[] = $stdin;
}

$count = 0;
for ($i = 1; $i <= $stdins[0][0]; $i++) {
    $x = sqrt(($stdins[$i][0] ** 2) + ($stdins[$i][1] ** 2));

    if ($x <= $stdins[0][1]) {
        $count ++;
    }
}

echo $count;
?>

```

### https://atcoder.jp/contests/abc173/tasks/abc173_b

### 問題文

```
高橋君は、プログラミングコンテスト AXC002 に参加しており、問題 A にコードを提出しました。

この問題には
N
 個のテストケースがあります。

各テストケース
i
 (
1
≤
i
≤
N
) について、ジャッジ結果を表す文字列
S
i
 が与えられるので、ジャッジ結果が AC, WA, TLE, RE であったものの個数をそれぞれ求めてください。

出力形式は、出力欄を参照してください。

```

##### アルゴリズム例

```
標準入力

入力に対してfor文
if文でAC, WA, TLE, REそれぞれカウント
変数に代入

出力
```

##### 回答　最速

```php
<?php
$input = file_get_contents('php://stdin');
$list = ['AC', 'WA', 'TLE', 'RE'];

foreach($list as $row) {
  echo $row .' x ' . substr_count($input, $row) . "\n";
}


```

##### 回答　最遅

```php
<?php
class Scanner {
    private $arr = [];
    private $count = 0;
    private $pointer = 0;
    public function next() {
        if($this->pointer >= $this->count) {
            $str = trim(fgets(STDIN));
            $this->arr = explode(' ', $str);
            $this->count = count($this->arr);
            $this->pointer = 0;
        }
        $result = $this->arr[$this->pointer];
        $this->pointer++;
        return $result;
    }
    public function hasNext() {
        return $this->pointer < $this->count;
    }
    public function nextInt() {
        return (int)$this->next();
    }
    public function nextDouble() {
        return (double)$this->next();
    }
}
class out {
    public static function println($str = "") {
        echo $str . PHP_EOL;
    }
}

$AC=$WA=$TLE=$RE=0;
$sc = new Scanner();
$a = $sc->nextInt();
for($i=0;$i<$a;$i++){
  $b = $sc->next();
  $$b++;
}
out::println("AC x {$AC}");
out::println("WA x {$WA}");
out::println("TLE x {$TLE}");
out::println("RE x {$RE}");


```

### https://atcoder.jp/contests/abc172/tasks/abc172_b

### 問題文

```
文字列
S
,
T
 が与えられます。次の操作を繰り返して
S
 を
T
 に変更するとき、操作回数の最小値を求めてください。

操作：
S
 の
1
 文字を選んで別の文字に書き換える

```

##### アルゴリズム例

```
標準入力

文字列A
文字列B
の配列を作成、
同じインデックス同士で比較して、違ったらカウント
標準出力
```

##### 回答　最速

```php
<?php
  $s = trim(fgets(STDIN));
  $t = trim(fgets(STDIN));
  $cnt = 0;
  for($i=0; $i<strlen($s); $i++){
      if($s[$i] != $t[$i]){
          $cnt++;
      }
  }
  echo $cnt;

```

##### 回答　最遅

```php
<?php
fscanf(STDIN, "%s", $S);
fscanf(STDIN, "%s", $T);
printf("%d", array_sum(array_map(function($x, $y){return ($x !== $y) * 1;}, str_split($S), str_split($T))));


```

### https://atcoder.jp/contests/abc171/tasks/abc171_b

##### アルゴリズム例

```
標準入力
価格の配列を作成
価格の低い順にソート
K個を抽出してsum
標準出力
```

##### 回答　最速

```php
<?php

$input = trim(fgets(STDIN));
$input_array = explode(" ", $input);

$input = trim(fgets(STDIN));
$kane_array = explode(" ", $input);
sort($kane_array);

$sum = 0;
for ($i = 0; $i < $input_array[1]; $i++) {
    $sum += $kane_array[$i];
}
echo $sum;
```

##### 回答　最遅

```php
<?php

fscanf(STDIN, "%d %d", $a, $b);
$line = fgets(STDIN);
$arr = array_map('intval', explode(' ', $line));
$sum = 0;
$num = count($arr);

for ($i = 0; $i < $b; $i++) {
  $min = min($arr);
  $min_key = array_search($min, $arr);
  $sum += $min;
  unset($arr[$min_key]);
  $arr = array_values($arr);

}

echo $sum;

```
