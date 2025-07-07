-- 1. Βρες όλους τους υπαλλήλους που έχουν μισθό μεγαλύτερο από 60000
SELECT first_name, last_name, salary  
FROM employees
WHERE salary > 60000

-- 2. Βρες τους υπαλλήλους που προσλήφθηκαν μεταξύ 2020 και 2022
SELECT first_name, last_name, hire_date  
FROM employees
WHERE hire_date BETWEEN '2020-01-01' AND '2022-12-31'

-- 3. Βρες τους υπαλλήλους που εργάζονται στο τμήμα 3 ή 5
SELECT first_name, department_id  
FROM employees
WHERE department_id IN (3, 5)

-- 4. Βρες τα ονόματα των υπαλλήλων που το επώνυμό τους ξεκινά με 'K'
SELECT first_name, last_name  
FROM employees
WHERE last_name LIKE 'K%'

-- 5. Βρες υπαλλήλους που δεν εργάζονται στα τμήματα 1, 2, 3
SELECT first_name, department_id 
FROM employees
WHERE department_id NOT IN (1, 2, 3)

-- 6. Βρες υπαλλήλους με μισθό κάτω από 40000 ή πάνω από 90000
SELECT first_name, salary  
FROM employees
WHERE salary < 40000 OR salary > 90000

-- 7. Βρες υπαλλήλους που έχουν προσληφθεί μετά το 2018 και έχουν μισθό πάνω από 50000
SELECT first_name, hire_date, salary  
FROM employees
WHERE hire_date > '2018-01-01' AND salary > 50000

-- 8. Βρες υπαλλήλους που δεν έχουν ανατεθεί σε κανένα τμήμα (NULL)
SELECT first_name, department_id  
FROM employees
WHERE department_id IS NULL

-- 9. Βρες τους 5 υπαλλήλους με τον υψηλότερο μισθό
SELECT TOP 5 first_name, last_name, salary  
FROM employees
ORDER BY salary DESC

-- 10. Βρες υπαλλήλους που το επώνυμό τους δεν περιέχει το γράμμα 'a'
SELECT first_name, last_name 
FROM employees
WHERE last_name NOT LIKE '%a%'