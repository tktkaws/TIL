N,M = gets.split.map(&:to_i)  # スペースで区切られた複数の整数

a = M.times.map{gets.to_i}

p N
p M
p a

money = N

point = 0

i = 0
a.length.times do
  p "money is #{money}"
  p "point is #{point}"
  p "a#{i} is #{a[i]}"
  if point > a[i] || point == a[i]
    point = point - a[i]
  else
    money = money - a[i]
    point = point + (a[i] / 10 )
  end
  i += 1
  puts "#{money} #{point}"
end