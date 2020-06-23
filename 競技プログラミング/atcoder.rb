x, y = gets.split.map(&:to_i)  # スペースで区切られた複数の整数

t = 0
k = 0

answer = "No"

(0..x).each do |i|
  t = i
  k = x - i
  p "t"
  p t
  p "k"
  p k
  amnt_legs = (2 * t) + (4 * k)
  p "amnt_legs"
  p amnt_legs
  if amnt_legs == y
    answer = "Yes"
    break
  end
end

puts answer