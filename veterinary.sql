CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);


-- Pets table
CREATE TABLE pets (
    pet_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT,
    pet_name VARCHAR(100),
    species VARCHAR(50),
    breed VARCHAR(100),
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

-- Appointments table
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_id INT,
    appointment_date DATE,
    reason VARCHAR(255),
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id)
);
