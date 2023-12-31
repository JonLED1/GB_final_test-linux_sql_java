6. Диаграмма классов
   - Создать диаграмму классов с родительским классом "Животные", и двумя подклассами: "Pets" и "Pack animals".
В составы классов которых в случае Pets войдут классы: собаки, кошки, хомяки, а в класс Pack animals войдут: Лошади, верблюды и ослы).
Каждый тип животных будет характеризоваться (например, имена, даты рождения, выполняемые команды и т.д)
Диаграмму можно нарисовать в любом редакторе, такими как Lucidchart, Draw.io, Microsoft Visio и других.

![Alt text](./images/image.png)

7. Работа с MySQL. Задача выполняется в случае успешного выполнения задачи “Работа с MySQL в Linux. “Установить MySQL на вашу машину”

7.1. После создания диаграммы классов в 6 пункте, в 7 пункте база данных "Human Friends" должна быть структурирована в соответствии с этой диаграммой. Например, можно создать таблицы, которые будут соответствовать классам "Pets" и "Pack animals", и в этих таблицах будут поля, которые характеризуют каждый тип животных (например, имена, даты рождения, выполняемые команды и т.д.). 

Пример заполненной таблицы для теста:

Лист "Pets"

`ID	Name	Type	BirthDate	Commands`<br>
`1	Fido	Dog	2020-01-01	Sit, Stay, Fetch`<br>
`2	Whiskers	Cat	2019-05-15	Sit, Pounce`<br>
`3	Hammy	Hamster	2021-03-10	Roll, Hide`<br>
`4	Buddy	Dog	2018-12-10	Sit, Paw, Bark`<br>
`5	Smudge	Cat	2020-02-20	Sit, Pounce, Scratch`<br>
`6	Peanut	Hamster	2021-08-01	Roll, Spin`<br>
`7	Bella	Dog	2019-11-11	Sit, Stay, Roll`<br>
`8	Oliver	Cat	2020-06-30	Meow, Scratch, Jump`<br>

 Лист "PackAnimals"

`ID	Name	Type	BirthDate	Commands`<br>
`1	Thunder	Horse	2015-07-21	Trot, Canter, Gallop`<br>
`2	Sandy	Camel	2016-11-03	Walk, Carry Load`<br>
`3	Eeyore	Donkey	2017-09-18	Walk, Carry Load, Bray`<br>
`4	Storm	Horse	2014-05-05	Trot, Canter`<br>
`5	Dune	Camel	2018-12-12	Walk, Sit`<br>
`6	Burro	Donkey	2019-01-23	Walk, Bray, Kick`<br>
`7	Blaze	Horse	2016-02-29	Trot, Jump, Gallop`<br>
`8	Sahara	Camel	2015-08-14	Walk, Run`<br>

[Файл. База данных](./database.sql)

![Alt text](./images/image-1.png)

7.2   - В ранее подключенном MySQL создать базу данных с названием "Human Friends".
   - Создать таблицы, соответствующие иерархии из вашей диаграммы классов.
   - Заполнить таблицы данными о животных, их командах и датами рождения.

   ![Alt text](./images/image-2.png)

   - Удалить записи о верблюдах и объединить таблицы лошадей и ослов.

![Alt text](./images/image-3.png)

   - Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить их возраст с точностью до месяца.

![Alt text](./images/image-4.png)

   - Объединить все созданные таблицы в одну, сохраняя информацию о принадлежности к исходным таблицам.

![Alt text](./images/image-5.png)
