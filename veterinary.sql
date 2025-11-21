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

INSERT INTO doctors(doctorid, dfirstname, dlastname, specialization, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@example.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Ophthalmology Specialist', '333-222-1111', 'carmen@example.com'),
(7, 'Dr.Jose', 'Ramos', 'Cardiology Specialist', '222-333-4444', 'jose@example.com'),
(8, 'Dr.Erica', 'Navarro', 'Exotic Animal Specialist', '444-555-6666', 'erica@example.com'),
(9, 'Dr.Miguel', 'Cruz', 'Neurology Specialist', '777-888-9999', 'miguel@example.com'),
(10, 'Dr.Karen', 'Flores', 'Dental Specialist', '666-777-8888', 'karen@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
(1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
(2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
(3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
(4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
(5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
(6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
(7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
(8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
(9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
(10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');