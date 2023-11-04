USE ac_db;

CREATE TABLE ACServices (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    InstallationID INT,
    ServiceDate DATE,
    ServiceDescription TEXT,
    FOREIGN KEY (InstallationID) REFERENCES ACInstallation(ID)
);

INSERT INTO ACServices (InstallationID, ServiceDate, ServiceDescription)
VALUES
    (1, '2023-01-16', 'Regular maintenance'),
    (2, '2023-02-21', 'Filter replacement'),
    (3, '2023-03-11', 'Coolant refill'),
    (4, '2023-04-06', 'Unit cleaning'),
    (5, '2023-05-13', 'Troubleshooting'),
    (6, '2023-06-19', 'Emergency repair'),
    (7, '2023-07-26', 'Regular maintenance'),
    (8, '2023-08-31', 'Filter replacement'),
    (9, '2023-09-12', 'Coolant refill'),
    (10, '2023-10-23', 'Unit cleaning'),
    (11, '2023-11-04', 'Troubleshooting'),
    (12, '2023-12-15', 'Emergency repair'),
    (13, '2022-01-26', 'Regular maintenance'),
    (14, '2021-02-27', 'Filter replacement'),
    (15, '2020-03-18', 'Coolant refill'),
    (16, '2021-04-09', 'Unit cleaning'),
    (17, '2023-05-20', 'Troubleshooting'),
    (18, '2023-06-21', 'Emergency repair'),
    (19, '2022-07-22', 'Regular maintenance'),
    (20, '2019-08-23', 'Filter replacement'),
    (21, '2014-09-24', 'Coolant refill'),
    (22, '2012-10-25', 'Unit cleaning'),
    (23, '2003-11-26', 'Troubleshooting'),
    (24, '2014-12-27', 'Emergency repair'),
    (25, '2020-01-28', 'Regular maintenance'),
    (26, '2000-02-01', 'Filter replacement'),
    (27, '2001-03-30', 'Coolant refill'),
    (28, '2005-04-11', 'Unit cleaning'),
    (29, '2015-05-30', 'Troubleshooting'),
    (30, '2015-06-11', 'Emergency repair');


