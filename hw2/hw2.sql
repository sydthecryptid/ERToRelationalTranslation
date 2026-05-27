CREATE TABLE Patient (
    age INT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    SSN CHAR(9) PRIMARY KEY
);

CREATE TABLE Doctor (
    phySSN CHAR(9) PRIMARY KEY, 
    name VARCHAR(100) NOT NULL, 
    specialty VARCHAR(100),
    experience INT
);

CREATE TABLE Prescription(
    presNum INT PRIMARY KEY,
    presDate DATE NOT NULL
    --foreign keys
);

CREATE TABLE Clinic(
    clinicName VARCHAR(100) PRIMARY KEY, 
    city VARCHAR(100) NOT NULL
);

CREATE TABLE Pharmacy(
    phoneNum CHAR(10) PRIMARY KEY,
    pharmaName VARCHAR(100) NOT NULL
);

CREATE TABLE OnlinePharmacy(
    phoneNum CHAR(10) PRIMARY KEY, 
    webURL VARCHAR(200) NOT NULL,
    FOREIGN KEY (phoneNum) REFERENCES Pharmacy(phoneNum)
);

CREATE TABLE InStorePharmacy(
    phoneNum CHAR(10) PRIMARY KEY,
    address VARCHAR(200) NOT NULL, 
    FOREIGN KEY (phoneNum) REFERENCES Pharmacy(phoneNum)
);

CREATE TABLE DrugCompany(
    companyName VARCHAR(100) PRIMARY KEY,
    phoneNum CHAR(10)
);

CREATE TABLE Drug(
    drugName VARCHAR(100) PRIMARY KEY,
    formula VARCHAR(100) NOT NULL,
    dcName VARCHAR(100) NOT NULL,
    FOREIGN KEY (dcname) REFERENCES DrugCompany(companyName)
);
