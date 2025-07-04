-- Insert sample data for Customers, Accounts, Transactions
INSERT INTO Customers VALUES
(1, 'Vidhi Mehta', 'vidhi@example.com', '9876543210', 'West'),
(2, 'Aryan Shah', 'aryan@example.com', '9876500001', 'North');

INSERT INTO Accounts VALUES
(101, 1, 'Savings', 15000.00, '2022-01-01'),
(102, 2, 'Current', 25000.00, '2022-03-15');

INSERT INTO Transactions VALUES
(1001, 101, 500.00, 'Credit', GETDATE()),
(1002, 101, 100.00, 'Debit', GETDATE()),
(1003, 102, 1000.00, 'Credit', GETDATE());
