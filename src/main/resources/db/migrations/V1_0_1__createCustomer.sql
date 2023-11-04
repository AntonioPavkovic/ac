USE ac_db;

CREATE TABLE Customer (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(255)
);

INSERT INTO Customer (FirstName, LastName, PhoneNumber, Email)
VALUES
    ('John', 'Doe', '123-456-7890', 'john.doe@gmail.com'),
    ('Jane', 'Smith', '987-654-3210', 'jane.smith@gmail.com'),
    ('Robert', 'Johnson', '555-123-4567', 'robert.johnson@gmail.com'),
    ('Emily', 'Williams', '333-555-7777', 'emily.williams@gmail.com'),
    ('Michael', 'Brown', '111-222-3333', 'michael.brown@gmail.com'),
    ('Sarah', 'Davis', '444-555-6666', 'sarah.davis@gmail.com'),
    ('William', 'Jones', '777-888-9999', 'william.jones@gmail.com'),
    ('Jessica', 'Taylor', '222-111-9999', 'jessica.taylor@gmail.com'),
    ('Daniel', 'Clark', '555-123-7890', 'daniel.clark@gmail.com'),
    ('Linda', 'Martinez', '777-555-3333', 'linda.martinez@gmail.com'),
    ('David', 'Miller', '222-888-6666', 'david.miller@gmail.com'),
    ('Jennifer', 'Harris', '444-777-1111', 'jennifer.harris@gmail.com'),
    ('Charles', 'Young', '123-555-4444', 'charles.young@gmail.com'),
    ('Maria', 'Anderson', '333-888-2222', 'maria.anderson@gmail.com'),
    ('Michael', 'Gonzalez', '999-888-4444', 'michael.gonzalez@gmail.com'),
    ('Susan', 'Brown', '555-777-6666', 'susan.brown@gmail.com'),
    ('John', 'Lee', '123-444-8888', 'john.lee@gmail.com'),
    ('Paul', 'Hall', '777-666-3333', 'paul.hall@gmail.com'),
    ('Dorothy', 'Wright', '222-555-1111', 'dorothy.wright@gmail.com'),
    ('James', 'Lopez', '444-333-6666', 'james.lopez@gmail.com'),
    ('Mary', 'Hill', '111-222-8888', 'mary.hill@gmail.com'),
    ('Robert', 'King', '555-444-3333', 'robert.king@gmail.com'),
    ('Patricia', 'Scott', '777-999-6666', 'patricia.scott@gmail.com'),
    ('Richard', 'Green', '123-888-5555', 'richard.green@gmail.com'),
    ('Sarah', 'Turner', '333-444-1111', 'sarah.turner@gmail.com'),
    ('Thomas', 'Baker', '444-222-6666', 'thomas.baker@gmail.com'),
    ('Nancy', 'Adams', '555-111-8888', 'nancy.adams@gmail.com'),
    ('Daniel', 'Ward', '666-555-3333', 'daniel.ward@gmail.com'),
    ('Karen', 'Wood', '777-123-1111', 'karen.wood@gmail.com'),
    ('Jeffrey', 'Stewart', '444-666-8888', 'jeffrey.stewart@gmail.com');

