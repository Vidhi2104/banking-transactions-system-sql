-- Total Credit and Debit by Region
SELECT C.Region,
       SUM(CASE WHEN T.TransactionType = 'Credit' THEN T.Amount ELSE 0 END) AS TotalCredits,
       SUM(CASE WHEN T.TransactionType = 'Debit' THEN T.Amount ELSE 0 END) AS TotalDebits
FROM Transactions T
JOIN Accounts A ON T.AccountID = A.AccountID
JOIN Customers C ON A.CustomerID = C.CustomerID
GROUP BY C.Region;
