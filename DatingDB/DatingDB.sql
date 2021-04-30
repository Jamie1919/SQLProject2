create table my_contacts(
contact_id bigserial,
first_name varchar(50),
last_name varchar(50),
phone varchar(20),
email varchar(50),
gender varchar (10),
birthday date,
profession varchar(50),
city varchar(50),
state_name varchar(50),
status varchar(50),
interests varchar(50),
prof_id integer references profession(prof_id),
zip_codes integer references zip_codes(zip_code),
status_id integer references status(status_id),
constraint my_contacts_key primary key (contact_id)
);

drop table my_contacts;

CREATE TABLE interests (
contact_id bigserial,
interest_id bigserial,
present boolean,
CONSTRAINT contacts_key PRIMARY KEY (contact_id, interest_id)
);

drop table interests

CREATE TABLE seeking (
contact_id bigserial,
seeking_id bigserial,
present boolean,
CONSTRAINT contact_key PRIMARY KEY (contact_id, seeking_id)
);

drop table seeking

create table profession (
prof_id bigserial constraint profession_id_key primary key,
profession varchar(50),
constraint unique_profession unique (profession)
);

drop table profession

CREATE TABLE zip_codes (
zip_code integer,
city varchar(50),
province varchar(50),
CONSTRAINT zip_codes_id_key PRIMARY KEY (zip_code),
CONSTRAINT check_zip_code_not_zero CHECK (zip_code < 4)
);

drop table zip_code

create table status(
status varchar(50),
status_id bigserial constraint status_key primary key
);



insert into my_contacts(first_name,last_name,phone,email,gender,birthday,interest_id,seeking_id,prof_id,zip_code,status_id)
values('Alex','Lion','27 22 495 0523','alex126@gmail.com','M','1999/08/01'),
('Ayush','Mahadik','27 27 495 0813','ayushm68@gmail.com','M','2000/01/24'),
('Madison','Swanapoel','27 83 274 81','madiswan5@gmail.com','F','2003/12/21'),
('Connor','Price','27 84 469 2929','ronic19@gmail.com','M','2002/03/19'),
('Jamie','Price','27 81 153 6609','japrice88@gmail.com','M','2002/03/19'),
('Caleb','Kasonde','27 44 492 0574','casonde09@gmail.com','M','2001/09/03'),
('Michael','Harriman','27 28 492 0624','miharri42@gmail.com','M','1998/06/15'),
('Shaun','Isaacs','27 44 492 0554','sisaac18@gmail.com','M','2000/10/17'),
('Karl','Palai','27 44 492 1820','kpalai34@gmail.com','M','1997/07/11'),
('Ava','Downey','27 43 492 1584','adowney66@gmail.com','F','2003/09/03'),
('Stan','Lee','27 44 492 0320','tanlee8@gmail.com','M','1922/12/08'),
('Peter','Parker','27 43 492 1995','peterpark88@gmail.com','M','2001/07/26'),
('Maja','Vereyne','27 77 539 4047','mjvereyne69@gmail.com','F','2000/09/04'),
('Kia','Burgh','27 83 065 454','kburgh42@gmail.com','F','2001/10/13'),
('Mitchel','Jennings','27 44 492 1415','mitchjen67@gmail.com','M','2002/11/29'),
('Louise ','Sandilands','27 41 492 4680','lsandilands90@gmail.com','F','1998/04/17');

select* from my_contacts;

insert into interests(interest)
values ('Film'),
	   ('Games'),
	   ('Art'),
	   ('Reading'),
	   ('Boardgames'),
	   ('Hiking'),
	   ('Animals'),
	   ('Drinking'),
	   ('Swimming'),
	   ('Shooting'),
	   ('Nature'),
	   ('Traveling'),
	   ('Excercise'),
	   ('Technology'),
	   ('Sports'),
	   ('Music');	

select * from interests

insert into seeking(seeking)
values      ('Male'),
			('Female'),
			('Both'),
			('Other');
	
select * from seeking

insert into profession(profession)
values	    ('Programmer'),
	        ('Developer'),
	        ('Nurse'),
	        ('Doctor'),
	        ('Cop'),
	        ('Singer'),
	        ('Dancer'),
	        ('Lawyer'),
	        ('Bartender'),
	        ('Waiter'),
	        ('Waitress'),
	        ('Director'),
	        ('Manager'),
	        ('Accountant'),
	        ('Politician');
	
select * from profession

insert into zip_code(zip_code,city,province)
values	     (7535, 'Capetown', 'Western Cape'),
	         (6930, 'Prince Albert', 'Western Cape'),
	         (8301, 'Kimberley', 'Nothern Cape'),
	         (8135, 'Loeriesfontein', 'Nothern Cape'),
	         (2745, 'Mafikeng', 'North West'),
	         (2571, 'klerksdorp', 'North West'),
	         (1360, 'Nelspruit', 'iMpumalanga'),
	         (1300, 'Barberton', 'iMpumalanga'),
	         (0699, 'Polokwane','Limpopo'),
	         (0800, 'Bandelierkop', 'Limpopo'),
	         (2940, 'Amajuba', 'iKwaZulu-Natali'),
	         (3610, 'eThekwini', 'iKwaZulu-Natali'),
	         (2000, 'Johannesburg', 'Gauteng'),
	         (1682, 'Midrand', 'Gauteng'),
	         (9300, 'Bloemfontein', 'Free State'),
	         (9707, 'Clarens', 'Free State'),
	         (5605, 'Bhisho ', 'Eastern Cape'),
	         (6024, 'Gqeberha', 'Eastern Cape');

select * from zip_code
	
insert into status(status)
values	    ('Single')
	        ('Recently divorced')
	        ('Other')

SELECT my.first_name, my.last_name, prof.province
FROM my_contacts AS my LEFT JOIN profession AS prof
	ON my.prof_id = prof.prof_id
LEFT JOIN zip_code AS zi
	ON zi.zip_code = zi.zip_code
LEFT JOIN status AS st
    ON st.status_id= st.status_id;

SELECT my_contacts.contact_id, 
my_contacts.first_name, 
my_contacts.last_name, 
my_contacts.phone, 
my_contacts.email, 
zip_code.city, 
profession.profession,  
status.status 
FROM my_contacts INNER JOIN profession ON my_contacts.prof_id = profession.prof_id
INNER JOIN zip_code ON my_contacts.contact_id = my_contacts.contact_id
INNER JOIN status ON my_contacts.contact_id = status.status_id;
	





select * from status	
select * from my_contacts
select * from profession
select * from interests
select * from zip_code 
select * from status
	

