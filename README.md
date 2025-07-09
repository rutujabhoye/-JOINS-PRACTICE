# -JOINS-PRACTICE

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: RUTUJA SUBHASH BHOYE

*INTERN ID*: CT04DH1300

*DOMAIN*: SQL

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTHOSH 

##As part of my internship program, I was assigned Task 1, which focused on practicing and implementing different types of SQL JOIN operations using a real-world scenario. The main objective of this task was to understand how data stored in multiple relational tables can be connected and queried meaningfully using SQL JOINs. This task was completed using Visual Studio Code(VS Code) with a local MySQL Server, and all code was written and tested in SQL files with proper formatting and inline documentation.
To ensure this task reflected a practical, real-life use case, I designed a mini E-commerce Orders Management System that simulated how online platforms such as Amazon or Flipkart manage customer orders, product information, and other transactions. I created four interconnected tables:
Customers, Products, Orders, and OrderItems.
The Customers table stores customer details like customer ID, name, and city.
The Products table contains information about product ID, name, and price.
The Orders table captures customer orders and includes order ID, customer ID(as a foreign key), and order date.
Once the schema was designed and populated with sample data, I performed multiple JOIN opeations:
1. INNER JOIN: This JOIN returned only the matching records from all involved tables. I used it to generate a detailed view of each order, including customer name, product name, quantity, and total amount spent. This kind of query is commonly used for generating invoices and transaction reports in real-world applications.
2. LEFT JOIN: This JOIN returned all customers and their associated orders, if any. It helped in identifying customers who have not placed any orders yet. Such insights are useful for user engagement strategies, loyalty programs, or targeted marketing campaigns.
3. RIGHT JOIN: With this JOIN, I listed all orders along with their customers, even if some customers were missing from the data. This approach is valuable for spotting inconsistencies or validating data integrity across multiple systems.
4. FULL OUTER JOIN(Simulated using UNION): Since MySQL doesn't support FULL OUTER JOIN directly, I combined the results of a LEFT JOIN and a RIGHT JOIN using UNION. This provided a complete view of all customers and all orders, including those with no match on either side. 
In addition to these JOINs, I implementes two advanced queries to demostrate analytical thinking:
I created a query to identify high-spending customers, filtering those whose total purchases exceeded rupees 30,000 using GROUP BY and HAVING.
I also wrote a query to find orders that were placed but didn't include any items, which is important for detecting incomplete or abandoned orders- a common issue in online systems.
This task gave me hands-on experience with relational database design, data integrity, and JOIN logic. It helped me understand how JOINs are used in real-world systems for generating reports, managing transactions, and performing business analysis. Working with foreign keys and writing advanced JOIN queries also improved my ability to think critically about how data is structured and used in full-scale applications.
Overall, this project was an excellent learning oppotunity that deepened my understanding of SQL JOINs and reinforced my ability to apply them in proffessional database systems.

#OUTPUT

![Image](https://github.com/user-attachments/assets/0a2cdd63-70f5-48e2-a8ef-9981e58cfb09)

![Image](https://github.com/user-attachments/assets/6aa85030-ac36-4702-95d2-7a06846f1f96)

![Image](https://github.com/user-attachments/assets/140242ff-3b8e-4854-adf5-21945e83e309)

![Image](https://github.com/user-attachments/assets/80366cee-be6b-4c7a-b245-3bef7c097c3a)
