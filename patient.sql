CREATE TABLE patients
(
  patient_id int PRIMARY KEY,
  patient_name varchar(50),
  patient_dob date,
  patient_address varchar(100),
  sex text,
  date_of_birth date,
)


CREATE TABLE doctors
(
  doctor_id int PRIMARY KEY,
  doctor_name varchar(50),
  secretary_name varchar(50),
)


create table prescriptions
(
  prescription_id int PRIMARY KEY,
  prescription_date date,
  doctor_id int,
  patient_id int,
  FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id),
  FOREIGN KEY(patient_id) REFERENCES patients(patient_id)
)


CREATE TABLE drugs
(
  drug_id int PRIMARY KEY,
  drug_name varchar(50),
  expiry_date date,
  price float
)


create table dosage
(
  id int PRIMARY KEY,
  dosage text,
  drug_id int,
  prescription_id int,
  FOREIGN KEY(drug_id) REFERENCES drugs(drug_id),
  FOREIGN KEY(prescription_id) REFERENCES prescriptions(prescription_id)
)

