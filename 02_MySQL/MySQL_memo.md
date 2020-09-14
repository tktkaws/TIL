# MySQL



##### goal

基礎文法を理解している

　データ型

　テーブルのセット

​	sqlでレコードを抽出できる







# 学習計画

ドットインストールで概要をさらう



【初心者でもわかるMySQL入門】MySQLの使い方を基礎からマスター

https://26gram.com/mysql









## Memo



~~~mysql
CREATE TABLE posts (
  message VARCHAR(140), 
  likes INT
);



DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), 
  likes INT
);

DESC posts;
SHOW TABLES;

INSERT INTO posts (message, likes) VALUES
  ('Thanks', 12), 
  ('Arigato', 4);

SELECT * FROM posts;


-- comment

# comment

/*
comment
comment
*/



-- DECIMAL
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), # ヴァーキャラ
  likes INT UNSIGNED,
  mood DECIMAL(4, 2) UNSIGNED,
  lang CHAR(2)
);

INSERT INTO posts (message, likes, mood, lang) VALUES 
  ('Thanks', 12, 7.825, 'EN'),
  ('Arigato', 4, 4.2138, 'JA');

SELECT * FROM posts;




# Enum
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  message VARCHAR(140), 
  likes INT,
  category ENUM('Gadget', 'Game', 'Business')
);

-- INSERT INTO posts (message, likes, category) VALUES 
--   ('Thanks', 12, 'Gadget'),
--   ('Arigato', 4, 'Game'),
--   -- ('Merci', 4, 'Fashion');
--   ('Merci', 4, 'Business');

INSERT INTO posts (message, likes, category) VALUES 
  ('Thanks', 12, 1),
  ('Arigato', 4, 2),
  ('Merci', 4, 3);

SELECT * FROM posts;
~~~

