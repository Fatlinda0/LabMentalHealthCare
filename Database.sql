create database MentalHealthCare
use MentalHealthCare

create table DoctorPanel (
    Id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Specialty VARCHAR(50) NOT NULL,
    LicenseNumber VARCHAR(50) NOT NULL,
    Education VARCHAR(100) NOT NULL,
    Experience VARCHAR(100) NOT NULL
);

create table Patient (
    Id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Diagnosis VARCHAR(100) NOT NULL,
    DoctorId INT NOT NULL,
    FOREIGN KEY (DoctorId) REFERENCES DoctorPanel(Id)
);

insert into DoctorPanel values (1, 'Sarah Johnson', 'sarahjohnson@gmail.com', '044-451-426','123 Main Street, Pristina, Kosovo', 'Psychiatry', '5646','MD', '7 years');
insert into DoctorPanel values (2, 'David Lee', 'davidlee@gmail.com', '045-462-491', '1010 Rruga B, Gjilan, Kosovo', 'Psychologist', '1276', 'MD', '14 years');
insert into DoctorPanel values (3, 'Robert Garcia', 'robertgarcia@gmail.com', '038-482-481', '3333 Rruga Bajram Kelmendi, Peja, Kosovo', 'Clinical social worker', '1217', 'BD', '4 years');
insert into DoctorPanel values (4, 'Lisa Patel', 'lisapatel@gmail.com', '044-516-781', '555 Rruga Isa Boletini, Pristina, Kosovo', 'Psychiatric nurse practitioner', '5795', 'BD', '2 years');

select * from DoctorPanel

insert into Patient values (1, 'Besnik Abazi', 30, 'Male', '045-789-294', 'besnikabazi@gmail.com', '333 Rruga Bajram Kelmendi, Peja, Kosovo', 'Anxiety', 1);
insert into Patient values (2, 'Shqipe Gashi', 25, 'Female', '044-496-591', 'shqipegashi@gmail.com', '444 Rruga Skënderbeu, Mitrovica, Kosovo', 'Depression', 2);
insert into Patient values (3, 'Arben Kryeziu', 40, 'Male', '038-594-599', 'arbenkryeziu@gmail.com', '1111 Rruga Rexhep Luci, Gjakova, Kosovo', 'Bipolar Disorder', 3);
insert into Patient values (4, 'Luljeta Berisha', 50, 'Female', '045-648-794', 'luljetaberisha@gmail.com', '2222 Rruga Nëna Terezë, Prizren, Kosovo', 'Schizophrenia', 1);

select * from Patient