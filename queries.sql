USE hw_3;

-- ЗАВДАННЯ 1: Витягти рік, місяць, день з атрибута date

SELECT 
    id,
    `date`,
    YEAR(`date`) AS year,
    MONTH(`date`) AS month,
    DAY(`date`) AS day
FROM orders;


-- ЗАВДАННЯ 2: Додати один день до атрибута date

SELECT 
    id,
    `date` AS original_date,
    DATE_ADD(`date`, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;


-- ЗАВДАННЯ 3: Відобразити timestamp (секунди з початку відліку)

SELECT 
    id,
    `date` AS original_date,
    UNIX_TIMESTAMP(`date`) AS timestamp_seconds
FROM orders;


-- ЗАВДАННЯ 4: Порахувати рядки з date між двома датами

SELECT COUNT(*) AS orders_count
FROM orders
WHERE `date` BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';


-- ЗАВДАННЯ 5: Створити JSON-об'єкт з id та date

SELECT 
    id,
    `date`,
    JSON_OBJECT('id', id, 'date', `date`) AS json_data
FROM orders;
