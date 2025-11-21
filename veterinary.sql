CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    amount DECIMAL(10,2),
    invoicedate DATE,
    status VARCHAR(50),
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    recorddate DATE,
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Juan', 'Dela Cruz', 'Batangas City', '09123456789', 'juan@gmail.com'),
(2, 'Maria', 'Santos', 'Lipa City', '09234567890', 'maria@gmail.com'),
(3, 'Pedro', 'Reyes', 'Tanauan', '09345678901', 'pedro@gmail.com'),
(4, 'Ana', 'Lopez', 'Sto. Tomas', '09456789012', 'ana@gmail.com'),
(5, 'Carlos', 'Garcia', 'Malvar', '09567890123', 'carlos@gmail.com'),
(6, 'Liza', 'Mendoza', 'Ibaan', '09678901234', 'liza@gmail.com'),
(7, 'Mark', 'Torres', 'Rosario', '09789012345', 'mark@gmail.com'),
(8, 'Grace', 'Ramos', 'San Jose', '09890123456', 'grace@gmail.com'),
(9, 'Paulo', 'Navarro', 'Taal', '09901234567', 'paulo@gmail.com'),
(10, 'Nicole', 'Bautista', 'Lemery', '09012345678', 'nicole@gmail.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Buddy', 'Dog', 'Golden Retriever', '2020-01-15', 'Male', 'Golden', 1),
(2, 'Mimi', 'Cat', 'Persian', '2019-05-20', 'Female', 'White', 2),
(3, 'Rocky', 'Dog', 'Bulldog', '2018-03-10', 'Male', 'Brown', 3),
(4, 'Luna', 'Cat', 'Siamese', '2021-07-08', 'Female', 'Cream', 4),
(5, 'Max', 'Dog', 'Beagle', '2017-11-25', 'Male', 'Tricolor', 5),
(6, 'Bella', 'Dog', 'Poodle', '2019-09-13', 'Female', 'White', 6),
(7, 'Charlie', 'Dog', 'Shih Tzu', '2020-04-02', 'Male', 'Black & White', 7),
(8, 'Coco', 'Bird', 'Parrot', '2022-02-14', 'Female', 'Green'),
(9, 'Thor', 'Dog', 'Rottweiler', '2016-06-19', 'Male', 'Black', 9),
(10, 'Snow', 'Cat', 'Maine Coon', '2018-12-30', 'Female', 'Gray', 10);

INSERT INTO appointments (appointid, animalid, appointdate, reason) VALUES
(1, 1, '2024-01-10', 'Vaccination'),
(2, 2, '2024-01-12', 'Skin allergy'),
(3, 3, '2024-01-15', 'Regular check-up'),
(4, 4, '2024-01-18', 'Fever and cold'),
(5, 5, '2024-01-20', 'Injury treatment'),
(6, 6, '2024-01-22', 'Dental cleaning'),
(7, 7, '2024-01-25', 'Nail trimming'),
(8, 8, '2024-01-27', 'Wing check-up'),
(9, 9, '2024-01-29', 'Vaccination'),
(10, 10, '2024-02-01', 'General consultation');
