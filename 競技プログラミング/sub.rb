N,K = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
squere = []
N.times do
  line = gets.split.map(&:to_i)
  squere << line
end

p squere

down_pixcel = N / K
p "down_pixcel is #{down_pixcel}"
down_squere = []
down_ary = []
down_pixcel.times do
  down_ary = []
  down_pixcel.times do
    down_ary << 0
  end
  down_squere << down_ary
end

p down_squere

i = 0
n = 0
down_squere.each do |ds|
  down_pixcel.times do
    ds[n] = i
    i += 1
    n += 1
  end
  n = 0
end
p "new down_squere"
p down_squere

ans_ary = down_squere.flatten
p "ans_ary"
p ans_ary


i=0
new_ans_ary = []
down_pixcel.times do
  new_ans_ary = []
  i=0
  down_pixcel.times do
    new_ans_ary　<< ans_ary[i]
    i+=1
  end
  puts
  puts "#{new_ans_ary[]}#{}"


end


#i=0
#down_pixcel.times do
#  puts "#{down_squere[i]}"
#  i += 1
#end

#avr_ary = []
#i=0
#down_squere.length.times do
#  avr =
#    avr_ary << avr
#i+=0
#end