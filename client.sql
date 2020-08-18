CREATE TABLE client
(
  client_id int PRIMARY KEY,
  client_name varchar(50) ,
  client_location varchar(100) ,
  manager_id int ,
  FOREIGN KEY(manager_id) REFERENCES manager(manager_id)
)


CREATE TABLE contract
(
  contract_id INT PRIMARY KEY ,
  contract_name varchar(100),
  start_date date,
  estimated_cost float ,
  completion_date date ,
  client_id int,
  manager_id int,
  FOREIGN KEY(client_id) REFERENCES client(client_id),
  FOREIGN KEY(manager_id) REFERENCES manager(manager_id)
)


CREATE TABLE manager
(
  manager_id int PRIMARY KEY,
  manager_name varchar(50) ,
  manager_location varchar(100)
)


CREATE TABLE staff
(
  staff_id int PRIMARY KEY,
  staff_name varchar(50) ,
  staff_location varchar(100) ,
  manager_id int,
)

CREATE TABLE staff_manager 
(
  staff_id INT,
  manager_id INT,
  FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY(manager_id) REFERENCES manager(manager_id)
)


CREATE TABLE staff_contract 
(
  staff_id INT,
  contract_id INT,
  FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
  FOREIGN KEY(contract_id) REFERENCES contract(contract_id)
)


