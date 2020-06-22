https://atcoder.jp/contests/abc171/tasks/abc171_b
自分の回答
時間：10分
結果：ac
~~~
N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sorted = ary.sort
puts sorted[0..(K-1)].sum
~~~

他の方の回答
~~~
N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sorted = ary.sort
puts sorted[0..(K-1)].sum
~~~

差分
なし！
