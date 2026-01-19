Create Table DigitalBook (BookID varchar(99) primary key,Title varchar (99), Author varchar (99), ISBN varchar(13) UNIQUE, 
ModID varchar (99), PublicationYear date, Category varchar(50),  Price money, BookLanguage varchar(99))

INSERT INTO DigitalBook values('1', 'Echoes of eternity', 'Aria Nightingale', 'ISBN1', 'ModID1', '2022-01-01', 'Fiction', 10.99, 'English')
INSERT INTO DigitalBook values('2', 'Whispers in the dark', 'Gabriel Blackwood', 'ISBN2', 'ModID2', '2021-05-15', 'Non-fiction', 15.50, 'French')
INSERT INTO DigitalBook values('3', 'Sands of time', 'Seraphina Storm', 'ISBN3', 'ModID3', '2023-11-20', 'Science', 20.00, 'Spanish')
INSERT INTO DigitalBook values('4', 'The last enchantment', 'Nathaniel Gray', 'ISBN4', 'ModID4', '2020-09-10', 'Technology', 12.99, 'German')
INSERT INTO DigitalBook values('5', 'Shawdows of destiny', 'Isabella Thorn', 'ISBN5', 'ModID5', '2019-12-25', 'History', 8.75, 'Italian')
INSERT INTO DigitalBook values('6', 'Echoes of silences', 'Phoenix Evergreen', 'ISBN6', 'ModID6', '2024-02-26', 'Biography', 18.99, 'English')
INSERT INTO DigitalBook values('7', 'Forgotten Realms', 'Rowan Nightshade', 'ISBN7', 'ModID7', '2018-03-30', 'Travel', 25.00, 'French')
INSERT INTO DigitalBook values('8', 'Eternal Odyssey', 'Aurora Silvermoon', 'ISBN8', 'ModID8', '2022-07-12', 'Fantasy', 14.49, 'Spanish')
INSERT INTO DigitalBook values('9', 'Tales from the Abyss', 'Xavier Frost', 'ISBN9', 'ModID9', '2023-08-18', 'Self-help', 9.99, 'German')
INSERT INTO DigitalBook values('10', 'Chronicles of Destiny', 'Luna Shadowcaster', 'ISBN10', 'ModID10', '2021-10-05', 'Thriller', 16.99, 'Italian')
INSERT INTO DigitalBook values('11', 'The Enigma of Echo Point', 'Caleb Darkwood', 'ISBN11', 'ModID11', '2020-04-15', 'Romance', 11.25, 'English')
INSERT INTO DigitalBook values('12', 'Beyond the Horizon', 'Avalon Ember', 'ISBN12', 'ModID12', '2019-02-28', 'Mystery', 19.99, 'French')
INSERT INTO DigitalBook values('13', 'Threads of Fate', 'Evangeline Starlight', 'ISBN13', 'ModID13', '2024-01-20', 'Drama', 22.00, 'Spanish')
INSERT INTO DigitalBook values('14', 'Whispers of the Wind', 'Orion Skywatcher', 'ISBN14', 'ModID14', '2017-06-10', 'Comedy', 13.49, 'German')
INSERT INTO DigitalBook values('15', 'The Forgotten Key', 'Selene Moonlight', 'ISBN15', 'ModID15', '2022-09-03', 'Horror', 7.99, 'Italian')
INSERT INTO DigitalBook values('16', 'Mysteries of the Lost Kingdom', 'Jasper Frostbourne', 'ISBN16', 'ModID16', '2018-11-11', 'Poetry', 17.99, 'English')
INSERT INTO DigitalBook values('17', 'Dreams of Tomorrow', 'Celeste Stardust', 'ISBN17', 'ModID17', '2023-07-07', 'Philosophy', 30.00, 'French')
INSERT INTO DigitalBook values('18', 'Infinite Realms', 'Tristan Nightfall', 'ISBN18', 'ModID18', '2016-04-04', 'Religion', 11.99, 'Spanish')
INSERT INTO DigitalBook values('19', 'Legends of the Fallen', 'Ivy Ravensong', 'ISBN19', 'ModID19', '2021-12-12', 'Art', 24.99, 'German')
INSERT INTO DigitalBook values('20', 'Windswept Wonders', 'Damian Everlast', 'ISBN20', 'ModID20', '2020-10-20', 'Cooking', 10.50, 'Italian');
select * from DigitalBook

Create Table Logins      (UserID varchar(99) primary key, Logintime varchar (99), Logindate date)
INSERT INTO Logins values('UserID1', '08:30:00', '2024-02-26')
INSERT INTO Logins values('UserID2', '12:45:00', '2024-02-26')
INSERT INTO Logins values('UserID3', '08:29:00', '2024-02-26')
INSERT INTO Logins values('UserID4', '09:45:00', '2024-02-26')
INSERT INTO Logins values('UserID5', '13:30:00', '2024-02-26')
INSERT INTO Logins values('UserID6', '15:40:00', '2024-02-26')
INSERT INTO Logins values('UserID7', '19:20:00', '2024-02-26');
select * from Logins

Create Table Moderator   (ModID varchar(99) primary key,ModName varchar(99), Passkey varchar(50), PhoneNo varchar(99), UserID varchar(99), FOREIGN KEY (UserID) REFERENCES Logins (UserID))
INSERT INTO Moderator values('ModID1', 'Sakhshi', 'pass123', '1234567890', 'UserID1')
INSERT INTO Moderator values('ModID2', 'Naman', 'pass456', '9876543210', 'UserID2')
INSERT INTO Moderator values('ModID3', 'Samarpan', 'pass767', '9870345687', 'UserID3')
INSERT INTO Moderator values('ModID4', 'Khushi', 'pass987', '9891425555', 'UserID4')
INSERT INTO Moderator values('ModID5', 'Mehreen', 'pass187', '9820271897', 'UserID5')
INSERT INTO Moderator values('ModID6', 'Suhani', 'pass273', '9845679273', 'UserID6')
INSERT INTO Moderator values('ModID7', 'Siddhi', 'pass783', '9876547472', 'UserID7');
select * from Moderator

Create Table Publishers  (PublisherID varchar(99) primary key, Name varchar(99), 
UserID varchar(99), FOREIGN KEY (UserID) REFERENCES Logins (UserID),BookID varchar(99), FOREIGN KEY (BookID) REFERENCES DigitalBook(BookID)) 
INSERT INTO Publishers values('PubID1', 'Sudharshan', 'UserID1', '1')
INSERT INTO Publishers values('PubID2', 'Sandesh', 'UserID2', '2')
INSERT INTO Publishers values('PubID3', 'Sambeg', 'UserID3', '3')
INSERT INTO Publishers values('PubID4', 'Sameer', 'UserID4', '4')
INSERT INTO Publishers values('PubID5', 'Arya', 'UserID5', '5')
INSERT INTO Publishers values('PubID6', 'Atithi', 'UserID6', '6')
INSERT INTO Publishers values('PubID7', 'Aditi', 'UserID7', '7');
select * from Publishers

Create Table Customers   (CustomerID varchar (99) primary key, UserID varchar(99), FOREIGN KEY (UserID) REFERENCES Logins (UserID))
INSERT INTO Customers values('CustomerID1', 'UserID1')
INSERT INTO Customers values('CustomerID2', 'UserID2')
INSERT INTO Customers values('CustomerID3', 'UserID3')
INSERT INTO Customers values('CustomerID4', 'UserID4')
INSERT INTO Customers values('CustomerID5', 'UserID5')
INSERT INTO Customers values('CustomerID6', 'UserID6')
INSERT INTO Customers values('CustomerID7', 'UserID7');
select * from Customers

Create Table Members     (MemberId varchar(99) primary key, Firstname varchar (50), Lastname varchar (50), Phonenumber varchar(10), Emailaddress varchar(99) UNIQUE, UserID varchar(99), FOREIGN KEY (UserID) REFERENCES Logins (UserID))
INSERT INTO Members values('MemberID1', 'John', 'Doe', '1234567890', 'john@example.com', 'UserID1')
INSERT INTO Members values('MemberID2', 'Jane', 'Smith', '9876543210', 'jane@example.com', 'UserID2')
INSERT INTO Members values('MemberID3', 'Alice', 'Johnson', '5555555555', 'alice@example.com', 'UserID3')
INSERT INTO Members values('MemberID4', 'Michael', 'John', '5551234567', 'michael@example.com', 'UserID4')
INSERT INTO Members values('MemberID5', 'Sarah', 'Williams', '7890123456', 'sarah@example.com', 'UserID5')
INSERT INTO Members values('MemberID6', 'David', 'Brown', '3216549870', 'david@example.com', 'UserID6')
INSERT INTO Members values('MemberID7', 'Emily', 'Davis', '4567890123', 'emily@example.com', 'UserID7');
select * from Members

Create Table Discount    (DiscountID varchar(99) primary key, DiscountValue decimal, BookID varchar(99) , FOREIGN KEY (BookID) REFERENCES DigitalBook (BookID), MemberID varchar(99), FOREIGN KEY (MemberID) REFERENCES Members (MemberID))
INSERT INTO Discount values('DiscountID1', 0.1, '1', 'MemberID1')
INSERT INTO Discount values('DiscountID2', 0.15, '2', 'MemberID2')
INSERT INTO Discount values('DiscountID3', 0.2, '3', 'MemberID3')
INSERT INTO Discount values('DiscountID4', 0.25, '4', 'MemberID4')
INSERT INTO Discount values('DiscountID5', 0.3, '5', 'MemberID5');
select * from Discount

Create Table Orders      (OrderID varchar(99) primary key, MemberID varchar(99), FOREIGN KEY (MemberID) REFERENCES Members (MemberID), BookID varchar(99) , FOREIGN KEY (BookID) REFERENCES DigitalBook (BookID)) 
INSERT INTO Orders values('OrderID1', 'MemberID1', '1')
INSERT INTO Orders values('OrderID2', 'MemberID2', '2')
INSERT INTO Orders values('OrderID3', 'MemberID3', '3')
INSERT INTO Orders values('OrderID4', 'MemberID4', '4')
INSERT INTO Orders values('OrderID5', 'MemberID5', '5')
INSERT INTO Orders values('OrderID6', 'MemberID6', '6')
INSERT INTO Orders values('OrderID7', 'MemberID7', '7');
select * from Orders

Create Table Cart        (CartID varchar(99) primary key, CustomerID varchar(99), FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), BookID varchar(99), FOREIGN KEY (BookID) REFERENCES DigitalBook(BookID),MemberID varchar(99), FOREIGN KEY (MemberID) REFERENCES Members (MemberID))
INSERT INTO Cart values('CartID1', 'CustomerID1', '1', 'MemberID1')
INSERT INTO Cart values('CartID2', 'CustomerID2', '2', 'MemberID2')
INSERT INTO Cart values('CartID3', 'CustomerID3', '3', 'MemberID3')
INSERT INTO Cart values('CartID4', 'CustomerID4', '4', 'MemberID4')
INSERT INTO Cart values('CartID5', 'CustomerID5', '5', 'MemberID5')D
INSERT INTO Cart values('CartID6', 'CustomerID6', '6', 'MemberID6')
INSERT INTO Cart values('CartID7', 'CustomerID7', '7', 'MemberID7');
select * from Cart

Create Table Deliveries  (DeliveryID varchar(99) primary key, Status varchar(99), OrderID varchar(99), FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), CustomerID varchar(99), FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID))
INSERT INTO Deliveries values('DeliveryID1', 'Shipped', 'OrderID1', 'CustomerID1')
INSERT INTO Deliveries values('DeliveryID2', 'Pending', 'OrderID2', 'CustomerID2')
INSERT INTO Deliveries values('DeliveryID3', 'Delivered', 'OrderID3', 'CustomerID3')
INSERT INTO Deliveries values('DeliveryID4', 'In transit', 'OrderID4', 'CustomerID4')
INSERT INTO Deliveries values('DeliveryID5', 'Delivered', 'OrderID5', 'CustomerID5')
INSERT INTO Deliveries values('DeliveryID6', 'Pending', 'OrderID6', 'CustomerID6')
INSERT INTO Deliveries values('DeliveryID7', 'Shipped', 'OrderID7', 'CustomerID7');
select * from Deliveries

Create Table Invoice     (InvoiceID varchar(99) primary key, OrderID varchar(99), FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), InvoiceDate date,CustomerID varchar(99), FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID))
INSERT INTO Invoice values('InvoiceID1', 'OrderID1', '2024-02-01', 'CustomerID1')
INSERT INTO Invoice values('InvoiceID2', 'OrderID2', '2024-02-02', 'CustomerID2')
INSERT INTO Invoice values('InvoiceID3', 'OrderID3', '2024-02-03', 'CustomerID3')
INSERT INTO Invoice values('InvoiceID4', 'OrderID4', '2024-02-04', 'CustomerID4')
INSERT INTO Invoice values('InvoiceID5', 'OrderID5', '2024-02-05', 'CustomerID5')
INSERT INTO Invoice values('InvoiceID6', 'OrderID6', '2024-02-06', 'CustomerID6')
INSERT INTO Invoice values('InvoiceID7', 'OrderID7', '2024-02-07', 'CustomerID7');
select * from Invoice

Create Table Feedback    (FeedbackID varchar(99) primary key, BookID varchar(99),  FOREIGN KEY (BookID) REFERENCES DigitalBook(BookID), MemberID varchar(99), FOREIGN KEY (MemberID) REFERENCES Members (MemberID), Score int)
INSERT INTO Feedback values('FeedbackID1', '1', 'MemberID1', 5)
INSERT INTO Feedback values('FeedbackID2', '2', 'MemberID2', 4)
INSERT INTO Feedback values('FeedbackID3', '3', 'MemberID3', 3)
INSERT INTO Feedback values('FeedbackID4', '4', 'MemberID4', 4)
INSERT INTO Feedback values('FeedbackID5', '5', 'MemberID5', 5)
INSERT INTO Feedback values('FeedbackID6', '6', 'MemberID6', 2)
INSERT INTO Feedback values('FeedbackID7', '7', 'MemberID7', 3);
select * from Feedback


--->i. A list of latest book sent by various publishers based on monthly basis.
SELECT p.Name AS PublisherName, db.Title AS BookTitle, db.PublicationYear
FROM Publishers p
JOIN DigitalBook db ON p.BookID = db.BookID
WHERE MONTH(db.PublicationYear) = MONTH(GETDATE()) AND YEAR(db.PublicationYear) = YEAR(GETDATE());
 
  


--->ii. Produce a record of invoices for various publishers. The invoice consists of invoice number, invoice date, publisher’s names and addresses and total amount to be paid.
 SELECT i.InvoiceID, i.InvoiceDate, p.Name AS PublisherName, SUM(db.Price) AS TotalAmount
FROM Invoice i
JOIN Orders o ON i.OrderID = o.OrderID
JOIN Publishers p ON o.BookID = p.BookID
JOIN DigitalBook db ON o.BookID = db.BookID
GROUP BY i.InvoiceID, i.InvoiceDate, p.Name;

    


--->iii.	A list of all customers records who are registered members in TU E-Bookstore.
--- The record of each member should show member identification number, first name and last name, address and contact number.
 SELECT m.MemberId, m.Firstname, m.Lastname, m.Phonenumber, m.Emailaddress
FROM Members m;


--->iv. A list of purchased books that have been delivered to members. The list should show member identification number, 
---first name and last name, address, contact number, book serial number, book title, quantity,date and status of delivery.
SELECT m.MemberId, m.Firstname, m.Lastname, m.Emailaddress, m.Phonenumber,
       db.BookID, db.Title AS BookTitle, d.DeliveryID, d.Status
FROM Members m
JOIN Orders o ON m.MemberId = o.MemberID
JOIN DigitalBook db ON o.BookID = db.BookID
JOIN Deliveries d ON o.OrderID = d.OrderID;


--->v.	List of books based on specific categories (e.g. Science Fiction, Romantic, History, Horror, etc.).
--The list should show type of book category, book serial number, book title and quantity. 
SELECT db.Category, db.BookID, db.Title AS BookTitle, COUNT(*) AS Quantity
FROM DigitalBook db
GROUP BY db.Category, db.BookID, db.Title;

 
--->vi. Produce list of total number of books for each category of books.
 SELECT db.Category, COUNT(*) AS TotalBooks
FROM DigitalBook db
GROUP BY db.Category;



--->vii.	Produce a list of book with the number of various feedbacks for books based on scores 
--(1-10 which is 0= terrible, 10= masterpiece) rated by members.
SELECT db.Title AS BookTitle, COUNT(*) AS FeedbackCount
FROM Feedback f
JOIN DigitalBook db ON f.BookID = db.BookID
GROUP BY db.Title;

--->viii.A list of books ordered by store manager from various publishers based on monthly basis.
SELECT D.BookID, D.Title AS BookTitle, D.Author, D.PublicationYear, D.Category, D.Price,
       P.Name AS PublisherName, O.OrderID, O.OrderDate
FROM Orders O
JOIN DigitalBook D ON O.BookID = D.BookID
JOIN Publishers P ON D.PublisherID = P.PublisherID
WHERE MONTH(O.OrderDate) = MONTH(CURRENT_DATE()) 
AND YEAR(O.OrderDate) = YEAR(CURRENT_DATE())
ORDER BY O.OrderDate;


--->ix.A list of total books and its total price as added by members in shopping cart.
select count (BookID), sum(Price) from DigitalBook