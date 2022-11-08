INSERT INTO employee (fname, lname, bdate, address, gender, salary, Dno) VALUES
('Aly','Mohamed','2000-7-14','6 malek st.','Male','69000','0');

INSERT INTO department (Dname, mgr_ssn, mgr_start_date) VALUES
('Administration','1','2022-11-8');

INSERT INTO project (Pname, Plocation, Dno) VALUES
('Company setup','HQ','1');

ALTER TABLE employee ADD FOREIGN KEY (dno)
REFERENCES department(dnumber);

ALTER TABLE department ADD FOREIGN KEY (mgr_ssn)
REFERENCES employee(ssn);

ALTER TABLE project ADD FOREIGN KEY (dno)
REFERENCES department(dnumber);

