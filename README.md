# Market on Ruby

### Table of Contents

[About](#about)
[How to add new products](#edit)
[How to use](#use)

<a name="about"><h3>About</h3></a>

This is a simple console shopping market where you can add your products. The implementation is similar to any online store where you collect everything in a cart and at the end you get the total amount of purchases

### View
```

1. Книга Метро 2033 Автор - Дмитрий Глуховский, Жанр: Фантастика, цена 400 р, (4 осталось)
2. Книга Ведьмак - Последнее Желание Автор - Аджей Сапковский, Жанр: Фантастика, цена 450 р, (31 осталось)
3. Фильм Алиса в стране чудес Автор - Тим Бёртон, Год выпуска 2010-02-25, цена 290 р, (1 осталось)
4. Фильм Хоббит - Пустошь Смауга Автор - Питера Джексона, Год выпуска 1999-03-12, цена 100 р, (7 осталось)
0. Выход
2

Вы выбрали Книга Ведьмак - Последнее Желание Автор - Аджей Сапковский, Жанр: Фантастика, цена 450 р, (31 осталось)
Всего товаров на сумму 3530 р

1. Книга Метро 2033 Автор - Дмитрий Глуховский, Жанр: Фантастика, цена 400 р, (4 осталось)
2. Книга Ведьмак - Последнее Желание Автор - Аджей Сапковский, Жанр: Фантастика, цена 450 р, (30 осталось)
3. Фильм Алиса в стране чудес Автор - Тим Бёртон, Год выпуска 2010-02-25, цена 290 р, (1 осталось)
4. Фильм Хоббит - Пустошь Смауга Автор - Питера Джексона, Год выпуска 1999-03-12, цена 100 р, (7 осталось)
0. Выход
0
C вас 3530 рублей

```

<a name="edit"><h3>How to add new products</h3></a>

Create a txt file in the appropriate folder with any name

Specify the content without comment

#### Album

```
MY LITTLE ALIVE BOY  #Name
Loqiemean #Author 
рок #Genre
28.10.2022 #Release date
1000 #Price
2 #Count 
```

####Book

```
Метро 2033 #Name
Фантастика #Genre
Дмитрий Глуховский #Author
400 #Price
5 #Count
```

####Film

```
Алиса в стране чудес #Name
Тим Бёртон #Director
25.02.2010 #Release date
290 #Price
3 #Count
```

<a name="use"><h3>How to use</h3></a>
---------------
First of all **Ruby** & **Git** must be installed (on Debian based):
```
sudo apt install ruby git
```
clone repo: 
```
git clone https://github.com/moonmeander47/hangman.git && cd hangman
```
run:
```
bundle exec ruby main.rb
```

