USE ac_db;

CREATE TABLE ACInstallation (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    InstallationDate DATE,
    Address VARCHAR(255),
    Room VARCHAR(255),
    ACModel VARCHAR(255),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

INSERT INTO ACInstallation (InstallationDate, Address, Room, ACModel, CustomerID)
VALUES
    ('2023-01-15', '123 Main St', 'livingroom', 'Fujitsu', 1),
    ('2023-02-20', '456 Elm St', 'master bedroom', 'Panasonic', 2),
    ('2023-03-10', '789 Oak St', 'guest bedroom', 'Mitsubishi', 3),
    ('2023-04-05', '101 Pine St', 'kid bedroom', 'LG', 4),
    ('2023-05-12', '222 Cedar St', 'livingroom', 'Samsung', 5),
    ('2023-06-18', '333 Maple St', 'master bedroom', 'Daikin', 6),
    ('2023-07-25', '444 Birch St', 'guest bedroom', 'Fujitsu', 7),
    ('2023-08-30', '555 Walnut St', 'kid bedroom', 'Panasonic', 8),
    ('2023-09-11', '666 Spruce St', 'livingroom', 'Mitsubishi', 9),
    ('2023-10-22', '777 Redwood St', 'master bedroom', 'LG', 10),
    ('2023-11-03', '888 Sequoia St', 'guest bedroom', 'Samsung', 11),
    ('2023-12-14', '999 Cedar St', 'kid bedroom', 'Daikin', 12),
    ('2024-01-25', '111 Oak St', 'livingroom', 'Fujitsu', 13),
    ('2024-02-26', '222 Pine St', 'master bedroom', 'Panasonic', 14),
    ('2024-03-17', '333 Elm St', 'guest bedroom', 'Mitsubishi', 15),
    ('2024-04-08', '444 Cedar St', 'kid bedroom', 'LG', 16),
    ('2024-05-19', '555 Maple St', 'livingroom', 'Samsung', 17),
    ('2024-06-20', '666 Birch St', 'master bedroom', 'Daikin', 18),
    ('2024-07-21', '777 Walnut St', 'guest bedroom', 'Fujitsu', 19),
    ('2024-08-22', '888 Redwood St', 'kid bedroom', 'Panasonic', 20),
    ('2024-09-23', '999 Spruce St', 'livingroom', 'Mitsubishi', 21),
    ('2024-10-24', '101 Sequoia St', 'master bedroom', 'LG', 22),
    ('2024-11-25', '202 Oak St', 'guest bedroom', 'Samsung', 23),
    ('2024-12-26', '303 Pine St', 'kid bedroom', 'Daikin', 24),
    ('2025-01-27', '404 Cedar St', 'livingroom', 'Fujitsu', 25),
    ('2025-02-28', '505 Elm St', 'master bedroom', 'Panasonic', 26),
    ('2025-03-29', '606 Maple St', 'guest bedroom', 'Mitsubishi', 27),
    ('2025-04-30', '707 Birch St', 'kid bedroom', 'LG', 28),
    ('2025-05-31', '808 Walnut St', 'livingroom', 'Samsung', 29),
    ('2025-06-30', '909 Pine St', 'master bedroom', 'Daikin', 30);

