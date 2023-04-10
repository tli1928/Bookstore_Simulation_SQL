# <p align="center">New England Book Store

<p align="center">Team : Yinzheng Xiong, Teng Li

## Walkthrough Video: 
  https://youtu.be/bnOrbdMgS-g

## Table of Contents:
- [Introduction](#introduction)
- [Data Modeling](#data-modeling)
- [User Interface](#user-interface)
- [Future Work](#future-work)



## Introduction
  
   Our product is designed to provide a comprehensive system for managing book borrowing, returning, and updating in a bookstore. We aim to create a database that connects the three key personas in this process – customers, employees, and authors – in a seamless and intuitive way. When information about a book is updated in the bookstore, our system will synchronize the relevant data for each persona, ensuring that everyone has access to the latest information. Unlike most current book library management systems, our system also includes a dedicated interface for book authors, recognizing the importance of their involvement in the process. Overall, our goal is to create a user-friendly and efficient solution for managing book data in a bookstore.


## Data Modeling

![203210674-cd210cf5-050f-43a5-bd2e-a396203e32cd](https://user-images.githubusercontent.com/67991315/206334418-92798d5a-111b-4b62-aeb2-b60a92a1ee0e.png)

---

![203208285-cc9af1e3-5a50-4b97-ad95-f3c7d5fd6869](https://user-images.githubusercontent.com/67991315/206334427-21b96772-2469-4e8f-a44c-a404f37dc4d6.png)


## User Interface
  
### Integral interface

Our database project features an integral interface that enables authors, employees, and customers to access the system and perform their respective roles. The interface is tailored to the unique needs of each user group, providing them with the tools and features they need to effectively manage book data in the bookstore. 
  
<img width="970" alt="7B8BFA56-8EFF-46F0-A54A-61BCD98CA669" src="https://user-images.githubusercontent.com/67991315/206945613-ef5480d6-7149-4a63-b2d2-ae200f585df4.png">

  
--- 


### Customer Interface
  
As a customer, you can use the database to find your personal information, search for available books, and view your borrowing history. You can use the search function to quickly find books that interest you, and you can view your personal information, such as your contact details and account status, at any time. Additionally, you can check your borrowing history to see which books you have borrowed in the past, and when they are due for return. 
  
  
<img width="755" alt="F7715E774AF69B9EB5C6EEE2F3B7CD1D" src="https://user-images.githubusercontent.com/67991315/207118047-2843e7d5-f188-43d3-b209-aa8d054c958a.png">



  
---

#### Personal Information
  
  
If the customer information in the database matches the information provided by the customer, the database will automatically display the customer's information in a table or view. 

![35240215-c5344f3c4e77297a99c781ba236990fe](https://user-images.githubusercontent.com/67991315/206946555-a556dd12-2477-45b9-bbb9-7745703e756c.png)
  
  
---

#### Available Books ( Borrow Books )
  
Customers can easily search for books with the status of 'available' directly on the loan screen in the database. To do this, simply navigate to the `Borrow Books`page and use the search function to find books that are currently available for borrowing. Customers can search by book name or other criteria, and the database will display a list of available books that match their search. When you see the book you want, simply input the BookId, return Date and click the 'submit' button to initiate the loan. The database will automatically update the book's status and record the loan in the customer’s personal borrowing history, making it easy for customers to manage their book borrowing needs.


![35240296-d123fb9bb7a3ee3377e7107cdc084fb8](https://user-images.githubusercontent.com/67991315/206947098-5c7e6ad4-dd65-4f3c-806f-567768a5ba0d.png)

---
  
  
  
#### Borrowing History
  
Customers can access their book borrowing history by going to the Borrowing History page. This page allows customers to view a list of all the books they have borrowed in the past. Customers can also use the filter conditions on the page to specify the criteria for the books they want to see, such as the year they borrowed the book or the current status of the book (returned, unreturned, or all). This enables customers to easily find the information they need and manage their borrowing history, ensuring that they can keep track of the books they have borrowed and when they are due for return.

![35240467-627ed236546a2f7133c030f15409d920](https://user-images.githubusercontent.com/67991315/206948126-640c1f75-5046-4dc7-8a8e-4f076856fa88.png)

---

  
  
#### Find Book

Customers can search for the books they want by entering the author's ID and book name into our application. The application will then filter the results and show the customers the availability of the books that match their search criteria. This allows customers to easily find the books they are looking for and see whether they are available for purchase or loan.
  
![35268191-9ada3c13c6c859b1faf66fa1f4b99bae](https://user-images.githubusercontent.com/67991315/207118275-010586b3-17c5-4c18-bc75-59eea072a9a3.png)

---


### Author Interface

As an author, you can use the platform to withdraw money that you have earned from book rentals to your specified bank account. You can access your earnings information and initiate a withdrawal through the specified interface. Additionally, the database provides a range of reports and analytics tools that allow you to track the performance and popularity of your books, as well as the overall trends in the book industry. You can use these reports to gain insights into genre trends, profit rankings, and other data, and you can use this information to inform your writing and publishing decisions. 

  
<img width="645" alt="6A790E1A-4010-4958-8DF5-37AB2C95C4F6" src="https://user-images.githubusercontent.com/67991315/206949158-890f8b02-e092-4536-9c64-8fae1ae7fcc9.png">

---
  
#### Withdraw Money


If an author's information is verified in the database, their bank account information will be automatically displayed in their profile. Authors can then select the bank account they want to use for withdrawals, and they can initiate a withdrawal by clicking the withdraw_money button in the page. This will transfer all the money from the author's deposit to their selected bank account, allowing them to easily access the funds they have earned from book rentals. 

![35240805-b29e968033eba0de363cf6853699aab4](https://user-images.githubusercontent.com/67991315/206949856-92900967-929a-4b65-984b-8c33b5df9c8f.png)

  
  
  
---
  
  
#### Read Report

  
As an author, you can use the database to access a range of reports and analytics tools that provide insights into the performance and popularity of your books, as well as the overall trends in the book industry. We offer three options for reports – profit, genre, and authors – each of which provides different information and insights. The `profit` option allows you to see which books are currently the most popular and profitable, while the `genre` option shows you the trends and patterns in different book genres. The `authors` option allows you to see which authors are currently the most popular and successful, providing valuable insights that can help you to make informed decisions about your writing and publishing.


![206950252-cf848e6d-1887-4a2d-80a5-faea09e6caca](https://user-images.githubusercontent.com/67991315/206950624-b9fa5253-35ed-4acc-9164-d434ce39e22d.png)

  
 

---

### Employee Interface

Employees have full access to the database, enabling them to select the information relevant to their tasks and update customer and author information as needed. They also have the right to update customer, author, and book information in the database as needed. This ensures that the information in the database is accurate and up-to-date. The ability to update the information allows employees to efficiently manage customers and authors, and ensures that authors receive their corresponding profits. 

![35268690-ce8958bbf2e79a638fc3e99c33e5ab96](https://user-images.githubusercontent.com/67991315/207121549-dea83744-386f-4cb3-9fcb-d6d096361d25.png)



---

#### Customer Support

Employees have the ability to update customers' membership status and change their balance based on their borrow record. The customer support system will automatically display the corresponding customer information as long as employees provide the valid customer ID. This allows employees to efficiently manage customers and their accounts, ensuring that the information is accurate and up-to-date.
  
  
![35262870-7b243b8126f0e68e30195c82b8cc112c](https://user-images.githubusercontent.com/67991315/207081144-86d28549-bfee-44db-9ecd-577a7bb29cde.png)

---
  
  
#### Author Support

Employees can easily distribute the corresponding revenue to book authors by using the `Author Support` page, which automatically displays all borrowing history for the book written by a specific author. This allows employees to accurately calculate the revenue due to each author and ensure that they receive their fair share of profits. This feature improves the overall efficiency of the system and helps support authors.
  
  
![35268637-dc34cd26efe0812ababb75824f3db2e4](https://user-images.githubusercontent.com/67991315/207121111-f3f3becc-84ae-4cd4-978f-598fa71cd32e.png)

#### Add New Members (Authors/Customers)

Employees can easily add new customers or authors to the database by inputting their necessary information. This allows employees to quickly and easily manage the database and keep it up-to-date. The ability to add new members helps ensures that all relevant information is accurately recorded. The table will automatically display the new member's information after they are added to the bookstore's database.

<img width="993" alt="FD53E35F64C7C39AC5CF2631BAD1A0AB" src="https://user-images.githubusercontent.com/67991315/207476831-349aabf7-cc61-4d5c-9385-0b9b9c0f20f1.png">
<img width="995" alt="8DEFF3C8AE3D6A2142B79B5A73CB228C" src="https://user-images.githubusercontent.com/67991315/207476843-841d2b39-e358-4849-8412-8067301eaee0.png">


---

![35317054-23d74af95b134947eac84bceee608eaf](https://user-images.githubusercontent.com/67991315/207476711-90b79ec0-0ea6-4ea6-9dfc-65dc7edfde2e.png)

---

#### Add New Books

As an employee, you have the ability to easily add new books to the database by inputting the necessary information, such as the author's ID, the price per day, the book name, and the status of the book. The table will automatically refresh to display the new book's information after it is added to the bookstore's database.

  
  
![35317130-91b634e4dd3bb07be327083427bba265](https://user-images.githubusercontent.com/67991315/207477368-a136ca12-b31d-4d04-936e-f125c94661fa.png)

## Future Work

- Try to automate the transactions that are currently done manually by employees. For example, the system could be designed to automatically handle the borrowing of books, deduct the appropriate amount from customers' accounts, and distribute revenue to authors based on book borrowing history. 

- Introduce a management structure in the future. This could involve hiring managers to oversee the work of employees and to ensure that the business is running smoothly. The managers could be responsible for tasks such as setting goals and objectives, providing guidance and support to employees, and evaluating their performance. 

- Currently, the book store reports are directly shown to authors. In the future, it may be more secure to have employees generate the reports and decide which reports can be made available to the public. This could help protect the privacy of the bookstore and its customers by ensuring that sensitive information is not accidentally disclosed. The employees could be responsible for carefully reviewing the reports and deciding which ones can be safely shared with the public, while keeping others private.





