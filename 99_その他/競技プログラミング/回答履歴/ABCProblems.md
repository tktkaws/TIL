テンプレ
~~~
自分の回答
時間：5分
結果：WA

他の方の回答

差分

~~~



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

171_c
~~~
自分の回答
時間：5分
結果：WA

c = gets.chomp

alf = []
("a".."z").each do |i|
  alf << i
end

alf_aa = []
aa = 0
("a".."z").each do |i|
  ("a".."z").each do |n|
    #p "i : #{i}"
    #p "n : #{n}"
    aa = i.to_s + n.to_s
    alf_aa << aa
  end
end

new = alf + alf_aa
p new
max_number = 1000000000000001
p new.length
p(max_number -new.length)


alf_aaa = []
aaa = 0
("a".."z").each do |i|
  ("a".."z").each do |j|
    ("a".."z").each do |k|
      aaa = i.to_s + j.to_s + k.to_s
      alf_aaa << aaa
    end
  end
end



他の方の回答

n=gets.to_i
a=[*'a'..'z']
res= ''
while n > 0
  n-=1
  res += a[n%26]
  n/=26
end
puts res.reverse


差分

~~~



https://atcoder.jp/contests/abc170/tasks/abc170_a
~~~
自分の回答
時間：10分
結果：AC

line = gets.split(' ')
p line.index('0') + 1

他の方の回答

arr = gets.split.map(&:to_i)

cnt = 1

arr.each do |x|
    if x == 0
        puts cnt
        break
    end
    cnt += 1
end

差分
繰り返しで探索して、答えに当たったら終了
~~~



170_b

~~~
自分の回答
時間：10分
結果：AC

x, y = gets.split.map(&:to_i)

t = 0
k = 0

answer = "No"

(0..x).each do |i|
  t = i
  k = x - i
  amnt_legs = (2 * t) + (4 * k)
  if amnt_legs == y
    answer = "Yes"
    break
  end
end

puts answer


他の方の回答

X,Y = gets.chomp.split.map(&:to_i)
 
if (4*X-Y) < 0
  puts "No"
else
if (4*X-Y)%2 == 0
if (4*X-Y)/2 <= X
  puts "Yes"
else
  puts "No"
end
else
  puts "No"
end
end

差分
もっと早く"No"と確定できるポイントがあるのに、それが実装できていなかった。
~~~

