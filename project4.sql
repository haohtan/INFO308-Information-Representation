/* SQL file for INFO I308 SU20 Final Project. */
/* Team 10: Abhi Sridhar, Haohong Tan, Sam Slusher */
/* Drop tables if they exist. Add more DROP TABLE statements as you create more tables*/
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS manager_detail CASCADE;
DROP TABLE IF EXISTS employee_phone CASCADE;
DROP TABLE IF EXISTS Concessions CASCADE;

CREATE TABLE employee 
	(
	employeeid INT NOT NULL,
	ssn INT NOT NULL, 
	firstname VARCHAR(50) NOT NULL, 
	middlename VARCHAR(50),
	lastname VARCHAR(50),
	street VARCHAR(50),
	city VARCHAR(50),	
	state CHAR(2),
	zip INT(35),
	gender VARCHAR(1),
	salary INT NOT NULL, 
	hiredate DATE NOT NULL,
	timein TIME,
	timeout TIME,
	type VARCHAR(50),
	datefixed DATE,
	problem VARCHAR(100),
	solution VARCHAR(100),
	cost INT(100),
	PRIMARY KEY (employeeid)
	) 
ENGINE = INNODB; 


insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (1, '462-84-2491', 'Rosita', 'Yetty', 'Greenless', '0 Banding Pass', 'Louisville', 'KY', '40225', 'F', '7.45', '2019/10/16', '11:55 PM', '6:21 PM', 'Technician', '2020/04/12', 'power down', 'work on electirc current', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (2, '461-02-4290', 'Jocelyne', 'Kalinda', 'Rubartelli', '821 Fulton Parkway', 'Boulder', 'CO', '80310', 'F', '4.82', '2019/12/22', '8:56 PM', '8:17 AM', 'Janitor', '2019/06/23', 'toilet clogged', 'un clog', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (3, '423-47-4492', 'Glynis', 'Jacinthe', 'Izakov', '455 Ludington Trail', 'Chico', 'CA', '95973', 'F', '0.02', '2020/01/17', '2:33 PM', '8:00 PM', 'Concession staff', '2020/01/17', 'Out of pretzels', 'buy more pretzels', '154');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (4, '523-21-0008', 'Robyn', 'Agretha', 'Elwood', '830 Miller Trail', 'Sacramento', 'CA', '94245', 'F', '2.84', '2019/12/20', '3:08 AM', '12:28 AM', 'Landscaper', '2019/12/20/', 'Grass too tall', 'Mow the lawn', '57');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (5, '363-90-6618', 'Bryce', 'Vince', 'Ewer', '49352 Gerald Parkway', 'Seattle', 'WA', '98140', 'M', '0.75', '2020/03/22', '1:06 PM', '6:17 AM', 'Ride Staff', '2020/04/20', 'Ride stopped', 'Ride fixed through restarting ride', '200');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (6, '269-84-4731', 'Barrett', 'Hadleigh', 'Bishop', '60 Cody Crossing', 'Austin', 'TX', '78783', 'M', '4.33', '2019/07/15', '8:27 AM', '8:38 PM', 'Janitor', '2019/07/15', 'Vomit on floor', 'Clean vomit', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (7, '762-78-2425', 'Beatrice', 'Tatum', 'Gowing', '2 Corry Trail', 'Maple Plain', 'MN', '55579', 'F', '8.59', '2019/12/31', '10:20 AM', '3:10 AM', 'Landscaper', '2019/12/31', 'Need to plant more plants', 'Plant plants', '250');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (8, '548-22-2958', 'Carita', 'Shawnee', 'Lowman', '5776 Express Road', 'Huntington Beach', 'CA', '92648', 'F', '$8.13', '2020/01/03', '11:05 AM', '2:50 PM', 'Concession staff', '2020/05/17', 'Ran out of pizza', 'Make more pizza', '150');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (9, '375-45-9305', 'Tanney', 'Ambros', 'Pauls', '7 Shopko Hill', 'Corpus Christi', 'TX', '78415', 'M', '3.87', '2020/02/06', '5:10 PM', '4:16 PM', 'Janitor', '2019/07/12', 'Ran out of toilet paper', 'Get more toilet paper', '235');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (10, '639-32-9549', 'Aviva', 'Dominga', 'Monget', '7394 Esch Junction', 'Knoxville', 'TN', '37914', 'F', '6.20', '2020/02/20', '3:59 AM', '8:43 AM', 'Ride Staff', '2019/09/03', 'Guest lost phone on ride', 'Phone found on ground', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (11, '899-28-5728', 'Berton', 'Thoma', 'Croft', '852 Twin Pines Pass', 'Asheville', 'NC', '28815', 'M', '4.57', '2020/01/03', '6:40 AM', '3:12 PM', 'Concession staff', '2020/03/04', 'Ran out of condiments for pretzels', 'Purchase more condiments', '250');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (12, '391-13-3769', 'Helenka', 'Crystie', 'Downing', '408 Upham Lane', 'Miami', 'FL', '33245', 'F', '8.18', '2020/05/06', '9:29 AM', '12:27 PM', 'Landscaper', '2020/05/06', 'Plant flowers in park', 'Plant more flowers in park', '105');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (13, '653-49-9928', 'Broderic', 'Dom', 'Wyer', '75176 Brown Plaza', 'Baltimore', 'MD', '21239', 'M', '1.04', '2019/06/25', '6:31 PM', '11:40 PM', 'Technician', '2019/05/06', 'Pizza oven broke', 'Fix oven', '55');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (14, '525-66-2989', 'Stacy', 'Theressa', 'Barenski', '433 Parkside Street', 'Rochester', 'NY', '14604', 'F', '9.29', '2020/01/29', '5:24 AM', '9:19 AM', 'Janitor', '2020/07/12', 'take out trash', 'trash taken out', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (15, '536-30-0745', 'Malvin', 'Sky', 'Seres', '47454 Ridge Oak Street', 'New Haven', 'CT', '06533', 'M', '1.31', '2020/06/02', '12:56 PM', '7:55 AM', 'Concession staff', '2020/06/24', 'Out of pretzels', 'make more pretzels', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (16, '486-75-8077', 'Jared', 'Kalle', 'Judson', '59366 Carey Park', 'Jamaica', 'NY', '11431', 'M', '4.19', '2020/01/09', '3:54 PM', '6:20 AM', 'Landscaper', '2020/01/12', 'Need to landscape around rides', 'landscape around rides', '105');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (17, '469-76-1697', 'Farley', 'Abbot', 'Phelan', '04 Northland Terrace', 'Denver', 'CO', '80255', 'M', '2.42', '2020/04/03', '6:21 PM', '10:38 PM', 'Janitor', '2020/04/17', 'Guest threw up in ride bathroom', 'Clean up throwup', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (18, '552-68-6075', 'Elmore', 'Chickie', 'Worham', '4779 Esch Lane', 'Washington', 'DC', '20599', 'M', '0.39', '2020/02/23', '6:24 PM', '7:58 PM', 'Technician', '2020/02/27', 'Power outage', 'Restart power', NULL);
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (19, '245-16-7064', 'Cointon', 'Mata', 'Guy', '53747 Fulton Park', 'Los Angeles', 'CA', '90189', 'M', '4.05', '2019/10/18', '5:56 AM', '4:14 AM', 'Landscaper', '2019/10/23', 'Lawn needs to be mowed', 'Mow the lawn', '57');
insert into employee (employeeid, ssn, firstname, middlename, lastname, street, city, state, zip, gender, salary, hiredate, timein, timeout, type, datefixed, problem, solution, cost) values (20, '178-37-3875', 'Dion', 'Billy', 'Heel', '29 Fairfield Park', 'Lexington', 'KY', '40546', 'F', '8.85', '2020/02/17', '7:03 PM', '3:17 PM', 'Concession staff', '2020/02/17', 'Ran out of condiments', 'Purchase more condiments', '205');

CREATE TABLE employee_phone 
	(
	employeeid INT NOT NULL,
	phone INT NOT NULL,
	type VARCHAR(50),
	FOREIGN KEY (employeeid) REFERENCES employee(employeeid)
	)
ENGINE = INNODB;
	
insert into employee_phone (employeeid, phone, type) values (1, '862-483-5305', 'Home');
insert into employee_phone (employeeid, phone, type) values (2, '864-160-5720', 'Cell');
insert into employee_phone (employeeid, phone, type) values (3, '901-865-8687', 'Cell');
insert into employee_phone (employeeid, phone,type) values (4, '634-424-7870', 'Work');
insert into employee_phone (employeeid, phone, type) values (5, '651-639-4019', 'Home');
insert into employee_phone (employeeid, phone, type) values (6, '717-765-7265', 'Cell');
insert into employee_phone (employeeid, phone, type) values (7, '544-430-7640', 'Home');
insert into employee_phone (employeeid, phone, type) values (8, '699-157-7513', 'Home');
insert into employee_phone (employeeid, phone, type) values (9, '428-705-4476', 'Cell');
insert into employee_phone (employeeid, phone, type) values (10, '318-482-0811', 'Cell');
insert into employee_phone (employeeid, phone, type) values (11, '841-717-2991', 'Home');
insert into employee_phone (employeeid, phone, type) values (12, '182-664-4405', 'Cell');
insert into employee_phone (employeeid, phone, type) values (13, '382-369-9793', 'Work');
insert into employee_phone (employeeid, phone, type) values (14, '803-246-8228', 'Work');
insert into employee_phone (employeeid, phone, type) values (15, '116-576-2908', 'Home');
insert into employee_phone (employeeid, phone, type) values (16, '627-939-7188', 'Home');
insert into employee_phone (employeeid, phone, type) values (17, '765-901-6411', 'Cell');
insert into employee_phone (employeeid, phone, type) values (18, '604-505-2771', 'Cell');
insert into employee_phone (employeeid, phone, type) values (19, '462-171-8250', 'Cell');
insert into employee_phone (employeeid, phone, type) values (20, '222-831-9403', 'Home');
	
CREATE TABLE Concessions 
	(
	concessionid INT NOT NULL,
	cost VARCHAR(50), 
	timebought TIME, 
	datebought DATE, 
	type VARCHAR(50),
	itembought VARCHAR(50),
	PRIMARY KEY (concessionid)
	)
ENGINE=INNODB;

insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (1, '$0.38', '3:00 PM', '2019-12-09', 'pizza shop', 'cheese pizza');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (2, '$2.63', '3:06 PM', '2020-05-08', 'pretzel stand', 'salted pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (3, '$6.54', '2:17 AM', '2020-01-25', 'candy shop', 'lollipop');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (4, '$6.62', '11:17 AM', '2019-10-04', 'pretzel stand', 'hotdog pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (5, '$3.45', '4:08 AM', '2019-12-10', 'drink shop', 'soda');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (6, '$7.00', '10:38 PM', '2020-02-26', 'drink shop', 'beer');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (7, '$3.53', '6:29 PM', '2019-12-26', 'pizza shop', 'veggie pizza');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (8, '$5.32', '1:34 AM', '2019-09-12', 'candy shop', 'cotton candy');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (9, '$7.92', '5:58 AM', '2020-04-10', 'candy shop', 'chocolate');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (10, '$3.57', '2:40 PM', '2020-05-08', 'pretzel stand', 'cinammon pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (11, '$7.77', '6:45 AM', '2020-01-03', 'pizza shop', 'salted pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (12, '$8.06', '1:15 AM', '2019-09-21', 'drink shop', 'two beers');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (13, '$7.63', '12:23 AM', '2019-08-10', 'drink shop', 'water');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (14, '$3.86', '11:30 PM', '2020-02-03', 'pizza shop', 'sausage pizza');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (15, '$8.17', '8:54 AM', '2020-03-08', 'drink shop', 'soda');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (16, '$6.76', '9:18 AM', '2019-09-21', 'candy shop', 'cotton candy');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (17, '$4.25', '9:37 AM', '2019-08-31', 'candy shop', 'gummy bears');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (18, '$6.63', '1:33 AM', '2020-05-28', 'pretzel stand', 'hotdog pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (19, '$0.69', '6:02 PM', '2020-01-04', 'pretzel stand', 'salted pretzel');
insert into Concessions (concessionid, cost, timebought, datebought, type, itembought) values (20, '$0.69', '6:02 PM', '2020-01-04', 'pizza shop', 'cheese pizza');

CREATE TABLE guest 
	(
	guestid INT NOT NULL,
	firstname VARCHAR(50) NOT NULL,
	middlename VARCHAR(50),
	lastname VARCHAR(50) NOT NULL, 
	age INT(100), 
	creditcardtype VARCHAR(60) NOT NULL,
	address VARCHAR(100) NOT NULL, 
	city VARCHAR(50),
	state CHAR(2),
	gender VARCHAR(1),
	ssn INT NOT NULL,
	dob DATE, 
	type VARCHAR(50) NOT NULL,
	PRIMARY KEY (guestid)
	)
ENGINE=INNODB;

insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (1, 'Retha', 'Jeanette', 'Speere', 53, 'jcb', '68748 Riverside Parkway', 'Washington', 'DC', 'F', '263-53-3352', '1991-07-09', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (2, 'Horace', 'Chester', 'Maclean', 33, 'jcb', '39 Scott Road', 'Springfield', 'IL', 'M', '168-89-1414', '1953-08-13', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (3, 'Tod', 'Hobard', 'Terese', 64, 'diners-club-enroute', '7574 Fuller Court', 'Nashville', 'TN', 'M', '686-33-5397', '1957-12-13', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (4, 'Georgina', 'Yolanda', 'Jeger', 22, 'jcb', '0575 Chinook Point', 'Scranton', 'PA', 'F', '505-01-2767', '1969-07-03', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (5, 'Elsinore', 'Joellen', 'Simm', 30, 'jcb', '18539 Vidon Point', 'Iowa City', 'IA', 'F', '120-72-7721', '2005-05-29', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (6, 'Culver', 'Verge', 'Clayson', 5, 'mastercard', '26 Fairview Court', 'Jamaica', 'NY', 'M', '181-19-2923', '1984-02-21', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (7, 'Laney', 'Kennan', 'Nock', 52, 'diners-club-carte-blanche', '10171 Sauthoff Park', 'Miami', 'FL', 'M', '206-03-5590', '1995-01-14', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (8, 'Kristyn', 'Idell', 'Tye', 82, 'jcb', '64 Meadow Ridge Trail', 'Amarillo', 'TX', 'F', '460-73-1783', '2009-02-20', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (9, 'Kendall', 'Bryan', 'Urry', 79, 'mastercard', '216 Linden Way', 'White Plains', 'NY', 'M', '632-14-6157', '2002-07-21', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (10, 'Gifford', 'Obadias', 'Dailey', 11, 'jcb', '62372 Sugar Road', 'Sioux Falls', 'SD', 'M', '407-87-3916', '2019-10-04', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (11, 'Alessandro', 'Donny', 'Govenlock', 23, 'jcb', '98496 Del Mar Junction', 'Roanoke', 'VA', 'M', '423-99-7491', '1977-10-08', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (12, 'Brad', 'Kenon', 'Seemmonds', 80, 'bankcard', '12 Portage Trail', 'Jamaica', 'NY', 'M', '133-54-9697', '1965-09-15', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (13, 'Alleyn', 'Amery', 'Dunbavin', 89, 'jcb', '76610 Merry Circle', 'Pasadena', 'CA', 'M', '508-83-2346', '1977-01-30', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (14, 'Holly', 'Kippy', 'Seyffert', 67, 'diners-club-carte-blanche', '0414 Debs Street', 'Buffalo', 'NY', 'M', '380-88-6320', '2016-11-11', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (15, 'Maddi', 'Brigida', 'Imore', 26, 'maestro', '86813 Sutteridge Avenue', 'Springfield', 'IL', 'F', '457-79-2749', '1984-01-06', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (16, 'Vidovic', 'Sebastian', 'Friel', 88, 'visa', '9 Ridge Oak Junction', 'Cleveland', 'OH', 'M', '472-45-0230', '1969-10-13', 'Member');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (17, 'Marys', 'Valeria', 'Seage', 37, 'jcb', '5 Nobel Circle', 'Washington', 'DC', 'F', '602-23-2016', '1981-05-22', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (18, 'Viviene', 'Asia', 'Baccus', 25, 'diners-club-enroute', '538 Magdeline Parkway', 'Philadelphia', 'PA', 'F', '808-43-8430', '1968-03-13', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (19, 'Yvon', 'Bald', 'McKinlay', 43, 'jcb', '5 Sunnyside Trail', 'Houston', 'TX', 'M', '367-45-3230', '2001-10-28', 'Nonmember');
insert into guest (guestid, firstname, middlename, lastname, age, creditcardtype, address, city, state, gender, ssn, dob, type) values (20, 'Jaymie', 'Nelson', 'Emburey', 39, 'visa-electron', '1 Gina Terrace', 'San Diego', 'CA', 'M', '648-14-7737', '1963-03-21', 'Member');

CREATE TABLE guest_phone 
	(
	guestid INT NOT NULL,
	phone INT NOT NULL,
	type VARCHAR(50),
	FOREIGN KEY (guestid) REFERENCES guest(guestid)
	)
ENGINE = INNODB;

insert into guest_phone (guestid, phone, type) values (1, '514-290-8309', 'Cell');
insert into guest_phone (guestid, phone, type) values (2, '522-609-7136', 'Cell');
insert into guest_phone (guestid, phone, type) values (3, '373-216-7410', 'Cell');
insert into guest_phone (guestid, phone, type) values (4, '769-604-3936', 'Home');
insert into guest_phone (guestid, phone, type) values (5, '465-304-9541', 'Home');
insert into guest_phone (guestid, phone, type) values (6, '353-363-3338', 'Cell');
insert into guest_phone (guestid, phone, type) values (7, '408-722-1828', 'Cell');
insert into guest_phone (guestid, phone, type) values (8, '170-573-2644', 'Cell');
insert into guest_phone (guestid, phone, type) values (9, '738-121-9773', 'Home');
insert into guest_phone (guestid, phone, type) values (10, '883-616-7357', 'Home');
insert into guest_phone (guestid, phone, type) values (11, '124-559-3948', 'Home');
insert into guest_phone (guestid, phone, type) values (12, '763-563-1726', 'Cell');
insert into guest_phone (guestid, phone, type) values (13, '407-170-9340', 'Cell');
insert into guest_phone (guestid, phone, type) values (14, '872-748-5425', 'Cell');
insert into guest_phone (guestid, phone, type) values (15, '699-315-2874', 'Cell');
insert into guest_phone (guestid, phone, type) values (16, '403-255-5317', 'Cell');
insert into guest_phone (guestid, phone, type) values (17, '406-552-7733', 'Home');
insert into guest_phone (guestid, phone, type) values (18, '776-161-1104', 'Home');
insert into guest_phone (guestid, phone, type) values (19, '580-172-5089', 'Cell');
insert into guest_phone (guestid, phone, type) values (20, '512-181-3341', 'Cell');


CREATE TABLE attractions 
	(
	attractionid INT NOT NULL,
	employeeid INT NOT NULL,
	concessionid INT(20), 
	guestid INT NOT NULL,
	type VARCHAR(50), 
	ridename VARCHAR(50),
	gamename VARCHAR(50),
	concessionname VARCHAR(50),
	PRIMARY KEY (attractionid), 
	FOREIGN KEY (employeeid) REFERENCES employee(employeeid),
	FOREIGN KEY (concessionid) REFERENCES Concessions(concessionid),
	FOREIGN KEY (guestid) REFERENCES guest(guestid)
	)
ENGINE=INNODB;

insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (1, 5, NULL, 1, 'Ride', 'Thunder Hawk', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (2, 10, NULL, 4, 'Ride', 'Green Lightining', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (3, 3, 2, 3, 'Concession', NULL , NULL, 'Pretzel Stand');
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (4, 1, NULL, 12, 'Game', NULL, 'Pinball', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (5, 18, NULL, 19, 'Game', NULL, 'Ladder Climb', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (6, 10, NULL, 13, 'Ride', 'Dragons Breath', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (7, 5, NULL, 1, 'Ride', 'Gold streak', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (8, 11, 18 , 7, 'Concession', NULL, NULL, 'Pretzel Stand');
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (9, 15, 14 , 13, 'Concession', NULL, NULL, 'Pizza Shop');
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (10, 13, NULL, 2, 'Game', NULL, 'Pinball', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (11, 1, NULL, 3, 'Game', NULL, 'Air Hockey', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (12, 10, NULL, 6, 'Ride', 'Blue Snake', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (13, 18, NULL, 9, 'Game', NULL, 'Basketball', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (14, 1, NULL, 10, 'Game', NULL, 'Gun Game', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (15, 11, 2, 15, 'Concession', NULL, NULL, 'Pretzel stand');
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (16, 8, 1, 16, 'Concession', NULL, NULL, 'Pizza Shop');
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (17, 13, NULL, 17, 'Game', NULL,'Ring toss', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (18, 18, NULL, 18, 'Game', NULL,'Coin toss', NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (19, 10, NULL, 19, 'Ride', 'The Streak', NULL, NULL);
insert into attractions (attractionID, employeeid, concessionid, guestid, type, ridename, gamename, concessionname) values (20, 5, NULL, 19, 'Ride', 'The Monster', NULL, NULL);


CREATE TABLE tickets 
	(
	ticketid INT NOT NULL,
	guestid INT NOT NULL,
	attractionid INT(20),
	datebooked DATE, 
	num_tickets INT NOT NULL,
	price VARCHAR(75),
	type VARCHAR(50), 
	PRIMARY KEY (ticketid), 
	FOREIGN KEY (guestid) REFERENCES guest(guestid),
	FOREIGN KEY (attractionid) REFERENCES attractions(attractionid)
	)
ENGINE=INNODB;


insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (1, 1, 1, '2020-02-04', 25, '$100.87', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (2, 2, 2, '2019-12-10', 11, '$106.78', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (3, 3, 3, '2019-04-20', 6, '$48.31', 'senior ticktets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (4, 4, 4, '2019-09-29', 28, '$108.39', 'adult and children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (5, 5, 5, '2019-07-16', 19, '$47.95', 'senior tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (6, 6, 6, '2019-08-01', 43, '$90.23', 'children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (7, 7, 7, '2019-09-17', 20, '$43.32', 'children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (8, 8, 8, '2019-03-07', 48, '$75.02', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (9, 9, 9, '2019-02-13', 33, '$99.23', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (10, 10, 10, '2019-01-15', 28, '$73.15', 'adult and senior tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (11, 11, 11, '2019-08-31', 17, '$92.53', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (12, 12, 12, '2019-11-24', 9, '$107.35', 'adult and children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (13, 13, 13, '2019-09-29', 44, '$106.70', 'senior and adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (14, 14, 14, '2019-05-30', 36, '$82.29', 'children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (15, 15, 15, '2019-08-12', 24, '$119.17', 'adult and senior tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (16, 16, 16, '2019-06-25', 30, '$104.01', 'adult ticktets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (17, 17, 17, '2020-05-30', 27, '$111.36', 'adult and children tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (18, 18, 18, '2019-01-30', 29, '$99.51', 'adult tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (19, 19, 19, '2020-04-29', 15, '$52.75', 'senior tickets');
insert into tickets (ticketid , guestid, attractionid, datebooked, num_tickets, price, type) values (20, 20, 20, '2019-09-03', 7, '$67.23', 'children tickets');





