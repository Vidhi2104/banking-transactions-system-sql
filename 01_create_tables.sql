-- Create schema for Banking Transactions System
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Region VARCHAR(50)
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    AccountType VARCHAR(20),
    Balance DECIMAL(18, 2),
    OpenDate DATE
);

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Accounts(AccountID),
    Amount DECIMAL(18, 2),
    TransactionType VARCHAR(10),
    TransactionDate DATETIME
);
