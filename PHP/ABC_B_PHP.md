## ABCProblems_B_PHP

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
