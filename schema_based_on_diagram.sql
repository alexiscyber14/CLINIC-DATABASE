/* patients table */
CREATE TABLE patients (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE
);

/* treatments */
CREATE TABLE treatments (
  id INT PRIMARY KEY,
  type VARCHAR,
  name VARCHAR,
  medical_history_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

/* medical_histories */
CREATE TABLE medical_histories (
  id INT PRIMARY KEY,
  admitted_at DATETIME,
  patient_id INT,
  FOREIGN KEY (patient_id) REFERENCES patients(id)
);




