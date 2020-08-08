## ABCProblems_B_PHP

## https://kenkoooo.com/atcoder/#/table/

## 雛形

### url

### 問題文

```

```

##### アルゴリズム例

```

```

##### 回答　最速

```php

```

##### 回答　最遅

```php

```

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
