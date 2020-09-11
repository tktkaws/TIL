B040:たのしい暗号解読
問題：B040:たのしい暗号解読

受験結果 受験言語： Ruby 解答時間： 87分43秒 バイト数： 822 Byte スコア： 71点
問題集計 受験者数： 6,827人 正解率： 53.51％ 平均解答時間： 39分10秒 平均スコア： 70.71点 
難易度： 1668 ±5
~~~
n, T = gets.split(' ')
ary_words = gets.split(' ')

number = n.to_i
ary_alphabet = "abcdefghijklmnopqrstuvwxyz".chars
ary_T = T.chars

number.times do |n|

  ary_word = []
  ary_words_sliced = []
  ary_words.each do |aw|  #"hqomq"
    ary_word = aw.chars
    ary_words_sliced << ary_word
  end

  p ary_words_sliced
  puts "------------------------------------------"

  ary_word_index = []
  ary_index = []

  ary_words_sliced.each do |aws|
    ary_index = []
    aws.each do |a|
      ary_index << ary_T.index(a)
    end
    ary_word_index << ary_index
  end

  p ary_word_index
  puts "------------------------------------------"

  ary_New_Words = []
  ary_new_word = []
  ary_word_index.each do |awi|
    ary_new_word = []
    awi.each do |a|
      ary_new_word << ary_alphabet[a]
    end
    ary_New_Words << ary_new_word.join
  end

  ary_words = ary_New_Words
  puts "-----これが#{n+1}回-------------------------------------"
end

p ary_words
newArray = ary_words.join(' ')
puts newArray




#p "標準出力"
#ans1 = "ans1"
#ans2 = "ans2"
#ans3 = "ans3"
#puts ("#{ans1} #{ans2} #{ans3}")

#first = "qwertyuiopasdfghjklzxcvbnm"
~~~

~~~
ary = gets.chomp.split('')
n = 0
p ary

new_ary = ary.uniq
p new_ary

if new_ary.length == 4
  n = 0
  if ary.include?("*")
    n = 1
  end
elsif new_ary.length == 3
  n = 1
  if ary.include?("*")
    n = 3
  end
elsif new_ary.length == 1
  n = 4
else
  #"2"
  p ary.uniq[0]
  p ary.uniq[1]
  p ary.grep(ary.uniq[0])
  p ary.grep(ary.uniq[1])

  if ary.grep(ary.uniq[0]).length == 2
    n = 2
  else
    n = 3
    if ary.include?("*")
      n = 4
    end
  end
end
p n
~~~
