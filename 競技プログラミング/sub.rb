word = "hqomq".chars

T = "qwertyuiopasdfghjklzxcvbnm"

qwerty = T.chars

p qwerty
p qwerty.index("w")

ary_index = []
word.each do |w|
  ary_index << qwerty.index(w)
end
p ary_index

alphabet = "abcdefghijklmnopqrstuvwxyz"
ary_alphabet = alphabet.chars
p ary_alphabet
p ary_alphabet[1]


ary_new_word = []

ary_index.each do |a|
  ary_new_word << ary_alphabet[a]
end
p ary_new_word.join

2 qwertyuiopasdfghjklzxcvbnm
hqomq gfsoft iqeaqzigf

1 qwertyuiopasdfghjklzxcvbnm
hqomq gfsoft iqeaqzigf