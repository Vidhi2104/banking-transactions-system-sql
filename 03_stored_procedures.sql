-- Stored Procedure: Get Daily Transactions
CREATE PROCEDURE GetDailyTransactions
AS
BEGIN
    SELECT * FROM Transactions
    WHERE CAST(TransactionDate AS DATE) = CAST(GETDATE() AS DATE);
END;

-- Stored Procedure: Get Account Balance
CREATE PROCEDURE GetAccountBalance @AccountID INT
AS
BEGIN
    SELECT Balance FROM Accounts WHERE AccountID = @AccountID;
END;
