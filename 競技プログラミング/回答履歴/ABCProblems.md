https://atcoder.jp/contests/abc171/tasks/abc171_a
~~~
自分の回答
時間：5分
結果：WA

N = gets
puts N.downcase

他の方の回答
a = gets.chomp
if a == a.upcase
  puts "A"
else
  puts "a"
end

差分
出力はputs "A"　puts "a"
問題を読み間違えた
~~~

    
https://atcoder.jp/contests/abc171/tasks/abc171_b
~~~
自分の回答
時間：10分
結果：ac

N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sorted = ary.sort
puts sorted[0..(K-1)].sum


他の方の回答

N, K = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
sorted = ary.sort
puts sorted[0..(K-1)].sum

差分
なし！
~~~



テンプレ
~~~
自分の回答
時間：5分
結果：WA

他の方の回答

差分

~~~