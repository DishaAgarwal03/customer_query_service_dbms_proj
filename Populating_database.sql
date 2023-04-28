
customer(C_ID, name, address, email_address)				email_address references credentials
agent(A_ID, name, email_address)						email_address references credentials
message(M_ID, sub, body, timestamp, sender_type, con_id, pm_id)	in_reply_to ref m_id, con_id ref conversation, pm_id ref message

--credentials(email_address, username, password)
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


--conversation(CON_ID, status, c_id, a_id)					c_id references customer, a_id references agent
insert into conversation values(1000, 'Ongoing', , );
insert into conversation values(1001, 'Resolved', , );
insert into conversation values(1002, 'Ongoing', , );
insert into conversation values(1003, 'Resolved', , );
insert into conversation values(1004, 'Resolved', , );

insert into conversation values(1005, 'Resolved', , );
insert into conversation values(1006, 'Ongoing', , );
insert into conversation values(1007, 'Ongoing', , );
insert into conversation values(1008, 'Resolved', , );
insert into conversation values(1009, 'Resolved', , );

insert into conversation values(1010, 'Resolved', , );
insert into conversation values(1011, 'Ongoing', , );
insert into conversation values(1012, 'Ongoing', , );


