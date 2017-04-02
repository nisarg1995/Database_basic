CREATE TABLE person(pid varchar2(10) PRIMARY KEY, 
			name varchar2(20), 
			birthdate date, 
			gender char(10), 
			birthplace varchar2(10), 
			attribute varchar2(10));


CREATE TABLE movie (mid varchar2(10) PRIMARY KEY, 
			name varchar2(25), 
			rel_year integer, 
			director varchar2(10), 
			Genre varchar2(50));


CREATE TABLE actor_role(mid varchar2(10) NOT NULL, 
			pid varchar2(10) NOT NULL, 
			role varchar2(10), 
			PRIMARY KEY(mid,pid,role));


CREATE TABLE imdb_user(imdb_id varchar2(10) PRIMARY KEY, 
			email varchar2(20), 
			first_name varchar2(20), 	
			last_name varchar2(20), 
			birthdate varchar2(15), 
			birthplace varchar2(10), 
			gender char(10));


CREATE TABLE review(mid varchar2(10) NOT NULL, 
			author varchar2(20), 
			rating Integer, 
			votes Integer, 
			publication_date varchar2(30), 
			PRIMARY KEY (mid, author));




ALTER TABLE movie ADD CONSTRAINT director_fk FOREIGN KEY(director) REFERENCES person(pid) ON DELETE CASCADE;


ALTER TABLE actor_role ADD CONSTRAINT mid_fk FOREIGN KEY(mid) REFERENCES movie(mid) ON DELETE CASCADE;


ALTER TABLE actor_role ADD CONSTRAINT pid_fk FOREIGN KEY(pid) REFERENCES person(pid) ON DELETE CASCADE;


ALTER TABLE review ADD CONSTRAINT mid_fk1 FOREIGN KEY(mid) REFERENCES movie(mid) ON DELETE CASCADE;


ALTER TABLE review ADD CONSTRAINT author_fk FOREIGN KEY(author) REFERENCES imdb_user(imdb_id) ON DELETE CASCADE;







insert into person values('P1','Brian de forma',TO_DATE('9/11/1940','MM/DD/YYYY'),'M','New York','Director');

insert into person values('P2','Martin Brest',TO_DATE('8/8/1951','MM/DD/YYYY'),'M','San Jose','Director');

insert into person values('P3','Scarlett Johanson',TO_DATE('11/22/1984','MM/DD/YYYY'),'F','Austin','Actor');

insert into person values('P4','Luc Besson',TO_DATE('5/30/75','MM/DD/YYYY'),'F','Paris','Director');

insert into person values('P5','Morgan Freeman',TO_DATE('6/5/53','MM/DD/YYYY'),'M','Canberra','Actor');

insert into person values('P6','Al Pacino',TO_DATE('11/12/56','MM/DD/YYYY'),'M','Portland','Actor');

insert into person values('P7','Angelina Jolie',TO_DATE('3/3/70','MM/DD/YYYY'),'F','Seattle','Actor');

insert into person values('P8','Brad Pitt',TO_DATE('4/4/75','MM/DD/YYYY'),'M','London','Actor');

insert into person values('P9','Tom Hanks',TO_DATE('5/19/64','MM/DD/YYYY'),'M','Perth','Actor');

insert into person values('P10','Jessica Alba',TO_DATE('8/7/83','MM/DD/YYYY'),'F','Seoul','Actor');

insert into person values('P12','Alex Parish',TO_DATE('7/9/77','MM/DD/YYYY'),'F','San Jose','Actor');

insert into person values('P13','Jack Nicholson',TO_DATE('11/13/58','MM/DD/YYYY'),'M','Austin','Actor');

insert into person values('P15','Harrison Ford',TO_DATE('9/11/57','MM/DD/YYYY'),'M','Canberra','Actor');

insert into person values('P16','Julia Roberts',TO_DATE('1/1/67','MM/DD/YYYY'),'F','Portland','Actor');

insert into person values('P17','Matt Damon',TO_DATE('1/7/71','MM/DD/YYYY'),'M','Seattle','Actor');

insert into person values('P18','Jennifer Lawrence',TO_DATE('2/2/62','MM/DD/YYYY'),'F','London','Actor');

insert into person values('P19','George clooney',TO_DATE('3/3/65','MM/DD/YYYY'),'M','Perth','Actor');

insert into person values('P20','Jennifer Aniston',TO_DATE('4/4/68','MM/DD/YYYY'),'F','Seoul','Actor');

  


insert into movie values('M1','Scarface',1988,'P1','Action');

insert into movie values('M2','Scent of a women',1995,'P2','Action Comedy');

insert into movie values('M3','My big fat greek wedding',2000,'P4','Comedy');

insert into movie values('M4','The Devil''s Advocate',1997,'P1','Thriller');

insert into movie values('M5','Mr. and Mrs Smith',1965,'P1','Comedy Action');

insert into movie values('M6','Now You see me',2013,'P2','Thriller');

insert into movie values('M7','Barely Lethal',2014,'P4','Action');

insert into movie values('M8','The Man with one red shoe',1984,'P1','Comedy');

insert into movie values('M9','The Polar Express',2010,'P2','Comedy');

insert into movie values('M10','Her',2013,'P2','Thriller');

insert into movie values('M11','Lucy',2015,'P4','Thriller');

insert into movie values('M12','The Da Vinci Code',2005,'P4','Action Thriller');

insert into movie values('M13','The God Father part II',1975,'P1','Action Thriller');

insert into movie values('M15','Angels and Daemons',2009,'P2','Action Thriller');

insert into movie values('M16','The Island',2010,'P4','Action Comedy');





insert into actor_role values('M1', 'P5', 'Jessica');

insert into actor_role values('M1', 'P6', 'robert');

insert into actor_role values('M2', 'P5', 'John');

insert into actor_role values('M2', 'P6', 'Mark');

insert into actor_role values('M3', 'P9', 'Alex');

insert into actor_role values('M3', 'P7', 'Julie');

insert into actor_role values('M4', 'P5', 'Jessica');

insert into actor_role values('M4', 'P6', 'Matt');

insert into actor_role values('M4', 'P8', 'Jennifer');

insert into actor_role values('M5', 'P7', 'Jennifer');

insert into actor_role values('M5', 'P8', 'Tom');

insert into actor_role values('M5', 'P5', 'Milo');

insert into actor_role values('M6', 'P6', 'Chris');

insert into actor_role values('M6', 'P7', 'Rose');

insert into actor_role values('M6', 'P5', 'Bill');

insert into actor_role values('M7', 'P10', 'Jane');

insert into actor_role values('M7', 'P5', 'Brad');

insert into actor_role values('M8', 'P9', 'Lucas');

insert into actor_role values('M8', 'P10', 'Juanita');

insert into actor_role values('M9', 'P9', 'Clayne');

insert into actor_role values('M9', 'P9', 'Jane');

insert into actor_role values('M9', 'P9', 'Brad');

insert into actor_role values('M9', 'P9', 'Lucas');

insert into actor_role values('M9', 'P9', 'Bradley');

insert into actor_role values('M9', 'P9', 'Justin');

insert into actor_role values('M9', 'P17', 'Martin');

insert into actor_role values('M9', 'P19', 'Mike');

insert into actor_role values('M10', 'P3', 'Travis');

insert into actor_role values('M10', 'P5', 'Alexander');

insert into actor_role values('M10', 'P6', 'Justin');

insert into actor_role values('M11', 'P3', 'Jessica');

insert into actor_role values('M11', 'P5', 'Johnny');

insert into actor_role values('M11', 'P8', 'Rami');

insert into actor_role values('M11', 'P9', 'Sam');

insert into actor_role values('M12', 'P9', 'Gatek');

insert into actor_role values('M12', 'P10', 'Rose');

insert into actor_role values('M12', 'P3', 'maria');

insert into actor_role values('M13', 'P5', 'Travis');

insert into actor_role values('M13', 'P6', 'Alexander');

insert into actor_role values('M13', 'P16', 'Pearl');

insert into actor_role values('M15', 'P12', 'Sofia');

insert into actor_role values('M15', 'P18', 'chrissy');

insert into actor_role values('M15', 'P9', 'Mike');

insert into actor_role values('M16', 'P10', 'Martin');

insert into actor_role values('M16', 'P15', 'Bill');

insert into actor_role values('M16', 'P16', 'Emilia');





insert into imdb_user values('ID1','john@yahoo.com','John','Smith',TO_DATE('10/5/1995','MM-DD-YYYY'),'FL','M');
insert into imdb_user values('ID2','juan@gmail.com','Juan','Carlos',TO_DATE('4/12/1994','MM-DD-YYYY'),'AK','M');
insert into imdb_user values('ID3','Jane@gmail.com','Jane','Chapel',TO_DATE('11/2/1993','MM-DD-YYYY'),'IL','F');
insert into imdb_user values('ID4','adi@yahoo.com','Aditya','Awasthi',TO_DATE('12/12/1992','MM-DD-YYYY'),'CA','M');
insert into imdb_user values('ID5','james@hotmail.com','James',' Williams',TO_DATE('5/5/1991','MM-DD-YYYY'),'NY','M');
insert into imdb_user values('ID6','mike@yahoo.com','Mike','Brown',TO_DATE('3/1/1988','MM-DD-YYYY'),'NC','M');
insert into imdb_user values('ID7','bob@yahoo.com','Bob','Jones',TO_DATE('2/7/1988','MM-DD-YYYY'),'NY','M');
insert into imdb_user values('ID8','wei@gmail.com','Wei','Zhang',TO_DATE('8/12/1985','MM-DD-YYYY'),'NV','F');
insert into imdb_user values('ID9','mark@gmail.com','Mark','Davis',TO_DATE('5/10/1984','MM-DD-YYYY'),'CA','M');
insert into imdb_user values('ID10','daniel@yahoo.com','Daniel','Garcia',TO_DATE('6/1/1980','MM-DD-YYYY'),'NJ','M');
insert into imdb_user values('ID11','maria@hotmail.com','Maria','Rodriguez',TO_DATE('3/18/1975','MM-DD-YYYY'),'CA','F');
insert into imdb_user values('ID12','freya@yahoo.com','Freya','Wilson',TO_DATE('2/19/1970','MM-DD-YYYY'),'NJ','F');



insert into review values('M1','ID1',7,25,'Oct-02-07 09:10:54 PDT');

insert into review values('M2','ID2',8,35,'Sep-29-07 13:45:00 PDT');

insert into review values('M2','ID3',9,24,'Sep-29-07 10:38:25 PDT');

insert into review values('M3','ID4',10,8,'Oct-02-13 13:05:56 PDT');

insert into review values('M3','ID5',9,11,'Oct-25-07 17:15:00 PDT');

insert into review values('M4','ID6',8,6,'Sep-26-07 17:15:00 PDT');

insert into review values('M4','ID7',7,23,'Sep-26-07 17:15:00 PDT');

insert into review values('M5','ID9',9,22,'Sep-28-07 17:15:00 PDT');

insert into review values('M6','ID10',8,26,'Oct-29-07 17:15:00 PDT');

insert into review values('M7','ID11',8,27,'Sep-30-07 17:15:00 PDT');

insert into review values('M7','ID12',8,18,'Oct-25-07 17:15:00 PDT');

insert into review values('M8','ID1',7,19,'Sep-25-07 17:15:00 PDT');

insert into review values('M9','ID2',7,16,'Sep-25-07 17:15:00 PDT');

insert into review values('M10','ID3',8,18,'Sep-29-07 17:15:00 PDT');

insert into review values('M11','ID4',9,22,'Jun-07-15 17:15:00 PDT');

insert into review values('M11','ID5',10,13,'May-05-15 17:15:00 PDT');

insert into review values('M12','ID6',9,50,'May-05-15 17:15:00 PDT');

insert into review values('M13','ID7',5,34,'Oct-25-07 17:15:00 PDT');

insert into review values('M13','ID1',4,34,'Oct-25-07 17:15:00 PDT');

insert into review values('M15','ID10',8,25,'May-05-15 17:15:00 PDT');

insert into review values('M16','ID11',7,12,'May-05-15 17:15:00 PDT');




