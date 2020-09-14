**## Python メモ**

**\*\*参考書：『いちばんやさしい Python の教本 人気講師が教える基礎からサーバサイド開発まで』\*\***

**## 基本文法**

標準入力を受け付ける input()関数

year⎵=⎵input()

Python では、数値や文字列など複数のデータをま とめて格納することができるリスト型（list）が存在 します。

eto_list⎵=⎵['子',⎵'丑',⎵'寅',⎵'卯']

eto_name = eto_list[2] ･････ リストの[2]のデータ(寅)を eto_name 変数に代入

eto_list⎵=⎵['子',⎵'丑',⎵'寅',⎵'卯',⎵'辰',⎵'巳',⎵'午',⎵'未',⎵'申',⎵'酉',⎵'戌',⎵'亥']

eto_list.append('猫') ････ リストにデータを追加する

eto_list.remove('丑') ････ 丑を削除する

不変なデータには「タプル」を使う

タプルを変更する には、プログラム内のタプルを定義している部分を 書き替えるしかありません。

eto_tuple⎵=⎵('子',⎵'丑',⎵'寅',⎵'卯')

eto_tuple⎵=⎵('子',⎵'丑',⎵'寅',⎵'卯',⎵'辰',⎵'巳',⎵'午',⎵'未',⎵'申',⎵'酉',⎵'戌 ',⎵'亥')

eto_name⎵=⎵eto_tuple[1] ･････ タプルでもデータを参照するときは[ ]を使う

1 つずつ改行すると読みやすい

最後のデータにもカンマを付けておくと修正が容易

演算子は基本 ruby と同じだが

17 // 4 → 4 # 割り算の結果から小数点以下を切り捨てる

2 \*\* 3 → 8 # べき乗

演算の順番は左から

()で囲めば優先度が上がる

0 個以上を指定可能な引数を、可変長引数という。

print() 改行のみが表示される

print('aaa')　 aaa と表示される

print('aaa', 'bbb', 'ccc')　 aaa bbb ccc と表示される

名前＝値、の形式の引数をキーワード引数という

print('aaa', 'bbb', 'ccc')　 aaa bbb ccc と表示される

print('aaa', 'bbb', 'ccc', sep=',')　 aaa,bbb,ccc と表示される

print('aaa', 'bbb', 'ccc', sep='---')　 aaa---bbb---ccc と表示される

format()

name = 'tanaka'

age = 22

text_template = '名前は{}です。年齢は{}です。'

text = text_template.format(name, age)

print(text) #名前は tanaka です。年齢は 22 です。

あるいは

name = 'tanaka'

age = 22

print('名前は{}です。年齢は{}です。'.format(name, age)) #名前は tanaka です。年齢は 22 です。

インデントで処理の範囲が決まる

インデントされている部分がブロック

len()関数

aaa_list = [a, a, a]

len(aaa_list) #3

for number in range(10) #0,1,...10

for number in range(1, 100) #1,2,...100

for index, color in enumerate([a, b, c])

インデックスと要素を同時に取得できる

比較演算子は ruby と一緒なはず

if point >= 80:

print('すごい')

複数条件　 and, or

if point >= 80 and other_point >= 80:

print('めっちゃすごい')

if point >= 80 or other_point >= 80:

print('そこそこすごい')

split(,) 文字列を","で分割する

if a > b:

print()

elif c > a:

print()

else:

print()

辞書　 dict 型

{key: value}

ruby でいうハッシュ

データの追加

student_dict['004'] = 'yasuda' #新しいキーに対して代入

辞書にデータを追加　同じキーに対して別のバリューを追加したら上書きされる

バリュー：どんな型でも ok

キー：不変な値のみ

多重代入

japanese, english, mathmatics = points #右辺にタプルやリスト

for 文の中でまとめて代入できる

## ファイル操作

ファイルを開く

Read_file = open('point.txt')

ファイルの中身を読み込む

raw_data = read_file.read()

ファイルを閉じる

Read_file.close()

ファイルを開いたら必ず閉じる

ファイルを同時に開ける数には上限があるため

ファイルが存在しない時

FileNotFoundError

**ファイルを書き込みモードで開く**

write_file ⎵ = ⎵ open('output.txt', ⎵ 'w')

**ファイルにデータを書き込む\*\***write\***\*()メソッド**

write_file.write(text)

**書き込みモードは上書き保存**

ファイルが存在しない場合はファイルを 新規作成する

p r i n t ( ) 関 数 と は 異 な り 、 w r i t e ( ) メ ソ ッド で フ ァ イ ル に書き込んだ場合には、文字列は自動では改行さ れ ま せ ん 。 複 数 行 の 文 字 列 をファイル に 書 き 込 む ためには改行コードを書き込む必要があります。

write_file.write('Hello ⎵ World!\n')

文字列中のバックスラッシュの働き

```
print('\\') ・・・・・・・・・・・・ \と出力される
```

他にタブを表す \t などもあります。文字列 にバックスラッシュを含めたい場合は \\ とバ ックスラッシュを 2 つ書きます。

with 文を使えばファイルを使い終わったところ で自動的に閉じることができます。

```
with⎵open('point.txt')⎵as⎵open_file: ・・・・・・・・・ with文でファイルを開く
⎵ ⎵ ⎵ ⎵raw_data⎵=⎵open_file.read()
print(raw_data)・・・・・・・・・・・・・・ インデントから抜けるとファイルを自動的に閉じる
```

**追記モードでファイルを開く**

append_file ⎵ = ⎵ open('output.txt', ⎵ 'a')

追 記 モ ード は モ ー ドを表す文字列として 'a(' append の頭文字)を指 定します。

書 き 込 み に は こ れ ま で と 同 様 に w r i t e ( ) メ ソ ッド を 使 用します。なお、追記モードもファイルが存在しな い場合は、ファイルを新規に作成します。

ファイルにデータを追記する

```
append_file ⎵ = ⎵ open('output.txt', ⎵ 'a')
append_file.write('Hello⎵Atom!\n')
append_file.close()
```

Python では in 演算子によって、任 意の文字列が含まれているかどうかを調べます。

（ページ 142).

if⎵'こんにちは'⎵in⎵'こんにちは、お元気ですか': ･･･「こんにちは」が含まれているので True

⎵⎵⎵⎵print('コンニチハ')

（ページ 142).

繰り返し処理を抜けるには break 文を使用します。

（ページ 143).

変数の中身を 直接判定する書き方も使えます。

（ページ 146).

例えば文字列の 場合には、空文字列（長さが 0 の文字列）は False と 判断されます。空文字列「ではない」ことを条件に したい場合は、not を使用します。以下のプログラ

（ページ 146).

変数の中身を直接判定する書き方

（ページ 146).

name⎵=⎵''

if⎵name: ･･･････ 空文字のため、if 文の条件に合致しない

⎵⎵⎵⎵print('名前は',⎵name,⎵'です')

（ページ 146).

テキストファイルの文字コードに注意が必要

（ページ 150).

日本語には utf-8 や Windows でよく使われる Shift\_ JIS など、いくつかの文字コードが存在します。誤っ た文字コードを指定してファイルを読み込むと、プ ログラムでエラーが発生します。本書では文字コー ドとして utf-8 を使用します。

（ページ 150).

日本語のファイルを読み込む

（ページ 151).

text_file⎵=⎵open('pybot.txt',⎵encoding='utf-8')･･･ ファイルの文字コードを指定

（ページ 151).

あいさつの定義ファイルを作成する

（ページ 152).

こんにちは,コンニチハ

（ページ 152).

あいさつの定義ファイルからデータを読み込んで、 行ごとの文字列データにします。文字コード（utf-8） を指定してファイルを開きます ❶。read()でファイ ルの中身をすべて読み込み、改行（\n）で分割して 行ごとの文字列のリストを作成します ❷。

command_file⎵=⎵open('pybot.txt',⎵encoding='utf-8')

raw_data⎵=⎵command_file.read()

command_file.close()

lines⎵=⎵raw_data.splitlines()

あいさつの辞書データを生成する

command_file⎵=⎵open('pybot.txt',⎵encoding='utf-8')

（ページ 152).

raw_data⎵=⎵command_file.read()

003 command_file.close()

004 lines⎵=⎵raw_data.splitlines()

（ページ 152).

005

006 bot_dict⎵=⎵{}

007 for⎵line⎵in⎵lines:

（ページ 152).

008 ⎵⎵⎵⎵word_list⎵=⎵line.split(',')

009 ⎵⎵⎵⎵key⎵=⎵word_list[0]

010 ⎵⎵⎵⎵response⎵=⎵word_list[1]

011 ⎵⎵⎵⎵bot_dict[key]⎵=⎵response

（ページ 153).

JupyterLab

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.931). Kindle 版.

JupyterLab は、11.2 節で紹介する pip コマンドでインストールでき、jupyterlab コマンド 1 つで簡単に使い始められます。また、GoogleColaboratory 注 b では、クラウド上で用意されている JupyterNotebook の環境を、設定不要かつ無料で誰でも利用できます。さらに、GoogleCloudPlatform の AIPlatformNotebooks 注 c、AmazonWebServices の AmazonSageMaker 注 d、MicrosoftAzure の AzureNotebooks 注 e など多くのクラウドベンダーから、JupyterLab や JupyterNotebook の環境を簡単に構築できるサービスが提供されています。

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.931-938). Kindle 版.

quit()を実行する代わりに Ctrl ＋ D（Windows の場合は、Ctrl ＋ Z、Enter）でも終了できます。

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1029-1031). Kindle 版.

対話モードでよく使う組み込み関数

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1034). Kindle 版.

type()── オブジェクトの型を調べる

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1039). Kindle 版.

dir()── オブジェクトの属性を調べる
Python では、オブジェクトが持つ変数やメソッドを総称して属性と呼びます。オブジェクトの属性は obj.x のようにドット（.）でつなげると参照できます。dir()は、引数で渡したオブジェクトの属性の一覧をリストで返してくれる組み込み関数です。dir()も type()と同様、式の結果や外部で定義されている関数の戻り値を調べるときに活躍します。

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1047-1051). Kindle 版.

help()── ヘルプページを表示する

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1056). Kindle 版.

ヘルプページでの操作は、CLI（CommandLineInterface）でよくある操作体系と似ています。j または ↓ で下へ移動、k または ↑ で上へ移動、/で検索、q で終了（Windows の場合は、Enter で下へ移動、q で終了）です。

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1061-1065). Kindle 版.

特定のメソッドの引数や戻り値を調べたいときは、組み込み関数 help()にそのメソッドを直接渡すと便利です。筆者は、正確なメソッド名が思い出せない場合には、先ほどの組み込み関数 dir()でめぼしい名前を見つけてから help()に渡しています。

陶山 嶺. Python 実践入門 ── 言語の力を引き出し、開発効率を高める (WEB+DB PRESS plus) (Japanese Edition) (Kindle の位置 No.1070-1072). Kindle 版.
