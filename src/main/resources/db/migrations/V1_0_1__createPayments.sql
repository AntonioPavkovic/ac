USE ac_db;

CREATE TABLE Payments (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    InstallationID INT,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    Currency VARCHAR(3),
    PaymentMethod VARCHAR(20),
    InstallmentNumber INT,
    FOREIGN KEY (InstallationID) REFERENCES ACInstallation(ID)
);

INSERT INTO Payments (InstallationID, PaymentDate, Amount, Currency, PaymentMethod, InstallmentNumber)
VALUES
    (1, '2023-01-15', 200.00, 'EUR', 'Card', 1),
    (2, '2023-02-20', 150.00, 'BAM', 'Cash', 3),
    (3, '2023-03-10', 200.00, 'EUR', 'Card', 2),
    (4, '2023-04-05', 200.00, 'BAM', 'Cash', 1),
    (5, '2023-05-12', 150.00, 'EUR', 'Card', 2),
    (6, '2023-06-18', 100.00, 'EUR', 'Card', 3),
    (7, '2023-07-25', 100.00, 'EUR', 'Card', 3),
    (8, '2023-08-30', 150.00, 'BAM', 'Cash', 1),
    (9, '2021-09-11', 200.00, 'EUR', 'Card', 1),
    (10, '2011-10-22', 200.00, 'BAM', 'Cash', 1),
    (11, '2013-11-03', 100.00, 'EUR', 'Card', 3),
    (12, '2013-12-14', 100.00, 'EUR', 'Card', 2),
    (13, '2004-01-25', 150.00, 'BAM', 'Cash', 3),
    (14, '2011-02-26', 200.00, 'EUR', 'Card', 1),
    (15, '2021-03-17', 200.00, 'BAM', 'Cash', 1),
    (16, '2011-04-08', 100.00, 'EUR', 'Card', 2),
    (17, '2010-05-19', 100.00, 'EUR', 'Card', 4),
    (18, '2020-06-20', 150.00, 'BAM', 'Cash', 1),
    (19, '2014-07-21', 200.00, 'EUR', 'Card', 1),
    (20, '2021-08-22', 200.00, 'BAM', 'Cash', 1),
    (21, '2011-09-23', 100.00, 'EUR', 'Card', 1),
    (22, '2022-10-24', 100.00, 'EUR', 'Card', 4),
    (23, '2020-11-25', 150.00, 'BAM', 'Cash', 2),
    (24, '2014-12-26', 200.00, 'EUR', 'Card', 1),
    (25, '2005-01-27', 200.00, 'BAM', 'Cash', 1),
    (26, '2022-02-28', 100.00, 'EUR', 'Card', 1),
    (27, '2005-03-29', 100.00, 'EUR', 'Card', 1),
    (28, '2022-04-30', 150.00, 'BAM', 'Cash', 1),
    (29, '2021-05-31', 200.00, 'EUR', 'Card', 3),
    (30, '2015-06-30', 200.00, 'BAM', 'Cash', 1);
