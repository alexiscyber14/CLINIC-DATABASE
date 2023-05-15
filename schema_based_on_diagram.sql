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
/*invoices table */

CREATE TABLE invoices (
  id INT PRIMARY KEY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  paid_at TIMESTAMP,
  medical_history_id INT,
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

/* invoices items table */
CREATE TABLE invoice_items (
  id INT PRIMARY KEY,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT,
  treatment_id INT,
  FOREIGN KEY (invoice_id) REFERENCES invoices(id),
  FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);



