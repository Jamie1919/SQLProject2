create table my_contacts(
contact_id bigserial,
first_name varchar(50),
last_name varchar(50),
phone varchar(20),
email varchar(50),
gender varchar (10),
birthday date,
prof_id integer references profession(prof_id),
zip_code integer references zip_codes(zip_code),
status_id integer references status(status_id),
constraint my_contact_pm_key primary key (contact_id)
);

drop table my_contacts;

CREATE TABLE interests (
interest_id bigserial,
interest varchar(20),
CONSTRAINT interest_key PRIMARY KEY (interest_id)
);

drop table interests

create table contact_interests(
contact_id integer references my_contacts(contact_id),
interest_id integer references interests(interest_id)
);

drop table contact_interests

CREATE TABLE seeking (
seeking_id bigserial,
seeking varchar(20),
CONSTRAINT seeking_key PRIMARY KEY (seeking_id)
);

drop table seeking;
drop table interest;
drop table status;

create table contact_seeking(
contact_id integer references my_contacts(contact_id),
seeking_id integer references seeking(seeking_id)
);

drop table contact_seeking

create table profession (
prof_id bigserial,
profession varchar(50),
constraint profession_pm_key primary key (prof_id),
constraint unique_profession unique (profession)
);

drop table profession

CREATE TABLE zip_codes (
zip_code integer,
city varchar(50),
province varchar(50),
CONSTRAINT zip_codes_key PRIMARY KEY (zip_code),
CONSTRAINT check_zip_code CHECK (zip_code > 3)
);

drop table zip_codes

create table status(
status_id bigserial,
status varchar(50),
constraint status_pm_key primary key (status_id)
);



insert into my_contacts(first_name,last_name,phone,email,gender,birthday,prof_id,zip_code,status_id)
values('Alex','Lion','27 22 495 0523','alex126@gmail.com','M','1999/08/01',1,699,1),
('Ayush','Mahadik','27 27 495 0813','ayushm68@gmail.com','M','2000/01/24',2,800,2),
('Madison','Swanapoel','27 83 274 81','madiswan5@gmail.com','F','2003/12/21',3,1300,3),
('Connor','Price','27 84 469 2929','ronic19@gmail.com','M','2002/03/19',4,1360,3),
('Jamie','Price','27 81 153 6609','japrice88@gmail.com','M','2002/03/19',5,1682,2),
('Caleb','Kasonde','27 44 492 0574','casonde09@gmail.com','M','2001/09/03',6,2000,1),
('Michael','Harriman','27 28 492 0624','miharri42@gmail.com','M','1998/06/15',7,2571,2),
('Shaun','Isaacs','27 44 492 0554','sisaac18@gmail.com','M','2000/10/17',8,2745,1),
('Karl','Palai','27 44 492 1820','kpalai34@gmail.com','M','1997/07/11',9,2940,3),
('Ava','Downey','27 43 492 1584','adowney66@gmail.com','F','2003/09/03',10,3610,1),
('Stan','Lee','27 44 492 0320','tanlee8@gmail.com','M','1922/12/08',11,5605,3),
('Peter','Parker','27 43 492 1995','peterpark88@gmail.com','M','2001/07/26',12,6024,2),
('Maja','Vereyne','27 77 539 4047','mjvereyne69@gmail.com','F','2000/09/04',13,6930,2),
('Kia','Burgh','27 83 065 454','kburgh42@gmail.com','F','2001/10/13',14,7535,1),
('Mitchel','Jennings','27 44 492 1415','mitchjen67@gmail.com','M','2002/11/29',15,8135,1);

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

insert into contact_interests
values (65,16),
       (66,15),
	   (67,14),
	   (68,13),
	   (69,12),
	   (70,11),
	   (71,10),
	   (72,9),
	   (73,8),
	   (74,7),
	   (75,6),
	   (76,5),
	   (77,4),
	   (78,3),
	   (79,2)
;

insert into seeking(seeking)
values      ('Male'),
			('Female'),
			('Both'),
			('Other');
	
select * from seeking

insert into contact_seeking
values      (65,4),
            (66,3),
			(67,2),
			(68,1),
			(69,1),
			(70,2),
			(71,3),
			(72,4),
			(73,3),
			(74,4),
			(75,2),
			(76,1),
			(77,2),
			(78,4),
			(79,3)
;

drop table contact_seeking

insert into profession(profession)
values	    ('Programmer'),
	        ('Developer'),
	        ('Nurse'),
	        ('Doctor'),
	        ('Police officer'),
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

insert into zip_codes(zip_code,city,province)
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
values	    ('Single'),
	        ('Recently divorced'),
	        ('Other')
;

select * from status

SELECT 	my_contacts.last_name,my_contacts.first_name,
		profession.profession,
		status.status,
		zip_codes.city,
		zip_codes.province
		FROM my_contacts LEFT JOIN profession 
		ON my_contacts.prof_id = profession.prof_id
		LEFT JOIN status
		ON my_contacts.status_id = status.status_id
		LEFT JOIN zip_codes
		ON my_contacts.zip_code = zip_codes.zip_code
		ORDER BY  my_contacts;

group by 

my.first_name, 
my.last_name, 
my.phone, 
my.email, 
zip.city, 
zip.province,
prof.profession,  
st.status,
inte.interest,
see.seeking

select * from my_contacts
select * from status	
select * from profession
select * from interests
select * from zip_codes 
select * from status
select * from contact_interests
select * from contact_seeking