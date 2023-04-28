
-- credentials(email_address, username, password)
insert into credentials values('Sarah_Brown2003@gmail.com', 'Sarah_Brown', '');
insert into credentials values('John_Smith2001@gmail.com', 'John_Smith', '');
insert into credentials values('Lily_Chen20@gmail.com', 'Lily_Chen', '');
insert into credentials values('Alex_Kim1999@gmail.com', 'Alex_Kim', '');
insert into credentials values('Anna_Johnson1999@gmail.com', 'Anna_Johnson', '');

insert into credentials values('David_Lee1990@gmail.com', 'David_Lee', '');
insert into credentials values('Emma_Davis1990@gmail.com', 'Emma_Davis', '');
insert into credentials values('Lucas_Martin1234@gmail.com', 'Lucas_Martin', '');
insert into credentials values('Olivia_Taylor5678@gmail.com', 'Olivia_Taylor', '');
insert into credentials values('Ethan_Clark1212@gmail.com', 'Ethan_Clark', '');

insert into credentials values('Grace_Wilson2004@gmail.com', 'Grace_Wilson', '');
insert into credentials values('Michael_Baker2004@gmail.com', 'Michael_Baker', '');
insert into credentials values('Emily_Jones2003@gmail.com', 'Emily_Jones', '');
insert into credentials values('Daniel_Garcia2001@gmail.com', 'Daniel_Garcia', '');
insert into credentials values('Sophia_Nguyen2000@gmail.com', 'Sophia_Nguyen', '');

insert into credentials values('William_Wright2000@gmail.com', 'William_Wright', '');
insert into credentials values('Isabella_Martinez2000@gmail.com', 'Isabella_Martinez', '');
insert into credentials values('Matthew_Rodriguez1998@gmail.com', 'Matthew_Rodriguez', '');
insert into credentials values('Ava_Thompson2@gmail.com', 'Ava_Thompson', '');
insert into credentials values('James_Davis11@gmail.com', 'James_Davis', '');


-- agent(A_ID, name, email_address)						email_address references credentials
insert into agent values(101,'Sarah_Brown','Udupi,KA','Sarah_Brown2003@gmail.com');
insert into agent values(102,'John_Smith','London,ENG','John_Smith2001@gmail.com');
insert into agent values(103,'Lily_Chen','Mumbai,MH','Lily_Chen20@gmail.com');
insert into agent values(104,'Alex_Kim','Los Angeles,CA','Alex_Kim1999@gmail.com');
insert into agent values(105,'Anna_Johnson','Manipal,KA','Anna_Johnson1999@gmail.com');

insert into agent values(106,'David_Lee','Gurugram','David_Lee1990@gmail.com');
insert into agent values(107,'Emma_Davis','Egypt','Emma_Davis1990@gmail.com');


-- customer(C_ID, name, address, email_address)				email_address references credentials
insert into customer values(201,'Lucas_Martin','Udupi,KA','Lucas_Martin1234@gmail.com');
insert into customer values(202,'Olivia_Taylor','London,ENG','Olivia_Taylor5678@gmail.com');
insert into customer values(203,'Ethan_Clark','Mumbai,MH','Ethan_Clark1212@gmail.com');
insert into customer values(204,'Grace_Wilson','Los Angeles,CA','Grace_Wilson2004@gmail.com');
insert into customer values(205, 'Michael_Baker','Manipal,KA','Michael_Baker2004@gmail.com');

insert into customer values(206,'Emily_Jones','Berlin','Emily_Jones2003@gmail.com');
insert into customer values(207,'Daniel_Garcia','Brussels','Daniel_Garcia2001@gmail.com');
insert into customer values(208,'Sophia_Nguyen','Delhi','Sophia_Nguyen2000@gmail.com');
insert into customer values(209,'William_Wright','Noida','William_Wright2000@gmail.com');
insert into customer values(210,'Isabella_Martinez','Hyderabad','Isabella_Martinez2000@gmail.com');

insert into customer values(211,'Matthew_Rodriguez','Frankfurt','Matthew_Rodriguez1998@gmail.com');
insert into customer values(212,'Ava_Thompson','Venice','Ava_Thompson2@gmail.com');
insert into customer values(213,'James_Davis','Sweden','James_Davis11@gmail.com');


-- conversation(CON_ID, status, c_id, a_id)					c_id references customer, a_id references agent
insert into conversation values(1000, 'Ongoing', 1, 101);
insert into conversation values(1001, 'Resolved', 2, 102);
insert into conversation values(1002, 'Ongoing', 3, 103);
insert into conversation values(1003, 'Resolved', 4, 104);
insert into conversation values(1004, 'Resolved', 5, 105);

insert into conversation values(1005, 'Resolved', 6, 106);
insert into conversation values(1006, 'Ongoing', 7, 107);
insert into conversation values(1007, 'Ongoing', 8, 101);
insert into conversation values(1008, 'Resolved', 9, 102);
insert into conversation values(1009, 'Resolved', 10, 103);

insert into conversation values(1010, 'Resolved', 11, 104);
insert into conversation values(1011, 'Ongoing', 12, 105);
insert into conversation values(1012, 'Ongoing', 13, 106);

message(M_ID, sub, body, timestamp, sender_type, con_id, pm_id)	        con_id ref conversation, pm_id ref message



