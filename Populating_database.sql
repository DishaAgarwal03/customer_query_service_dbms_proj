
-- credentials(email_address, username, password)
insert into credentials values('Sarah_Brown2003@gmail.com', 'Sarah_Brown', 'SarahB$2003');
insert into credentials values('John_Smith2001@gmail.com', 'John_Smith', 'JohnSmith@1111');
insert into credentials values('Lily_Chen20@gmail.com', 'Lily_Chen', 'Chen@lil1');
insert into credentials values('Alex_Kim1999@gmail.com', 'Alex_Kim', 'AKim1234');
insert into credentials values('Anna_Johnson1999@gmail.com', 'Anna_Johnson', 'Anna_54322');

insert into credentials values('David_Lee1990@gmail.com', 'David_Lee', 'Davidxxx23@');
insert into credentials values('Emma_Davis1990@gmail.com', 'Emma_Davis', 'ED123@');
insert into credentials values('Lucas_Martin1234@gmail.com', 'Lucas_Martin', 'LMartin_1234');
insert into credentials values('Olivia_Taylor5678@gmail.com', 'Olivia_Taylor', 'Olivia_Taylor121');
insert into credentials values('Ethan_Clark1212@gmail.com', 'Ethan_Clark', 'Ethan_C@12');

insert into credentials values('Grace_Wilson2004@gmail.com', 'Grace_Wilson', 'G@1_Wilson');
insert into credentials values('Michael_Baker2004@gmail.com', 'Michael_Baker', 'MBaker!12');
insert into credentials values('Emily_Jones2003@gmail.com', 'Emily_Jones', 'Emily2003#');
insert into credentials values('Daniel_Garcia2001@gmail.com', 'Daniel_Garcia', '2001@Garcia');
insert into credentials values('Sophia_Nguyen2000@gmail.com', 'Sophia_Nguyen', 'Sophia@12@Nguyen');

insert into credentials values('William_Wright2000@gmail.com', 'William_Wright', 'WilliamWright@2000');
insert into credentials values('Isabella_Martinez2000@gmail.com', 'Isabella_Martinez', 'IsabellaM2222');
insert into credentials values('Matthew_Rodriguez1998@gmail.com', 'Matthew_Rodriguez', '@1239Rodriguez');
insert into credentials values('Ava_Thompson2@gmail.com', 'Ava_Thompson', 'Ava_432');
insert into credentials values('James_Davis11@gmail.com', 'James_Davis', 'James_Davis98#98');


-- agent(A_ID, name,address, email_address)						email_address references credentials
insert into agent values(101,'Sarah_Brown','IN,Udupi','Sarah_Brown2003@gmail.com');
insert into agent values(102,'John_Smith','UK,London','John_Smith2001@gmail.com');
insert into agent values(103,'Lily_Chen','IN,Mumbai','Lily_Chen20@gmail.com');
insert into agent values(104,'Alex_Kim','US,Los Angeles','Alex_Kim1999@gmail.com');
insert into agent values(105,'Anna_Johnson','IN,Manipal','Anna_Johnson1999@gmail.com');

insert into agent values(106,'David_Lee','IN,Gurugram','David_Lee1990@gmail.com');
insert into agent values(107,'Emma_Davis','AF,Egypt','Emma_Davis1990@gmail.com');


-- customer(C_ID, name, address, email_address)				email_address references credentials
insert into customer values(201,'Lucas_Martin','IN,Udupi','Lucas_Martin1234@gmail.com');
insert into customer values(202,'Olivia_Taylor','UK,London','Olivia_Taylor5678@gmail.com');
insert into customer values(203,'Ethan_Clark','IN,Mumbai','Ethan_Clark1212@gmail.com');
insert into customer values(204,'Grace_Wilson','US,Los Angeles','Grace_Wilson2004@gmail.com');
insert into customer values(205, 'Michael_Baker','IN,Manipal','Michael_Baker2004@gmail.com');

insert into customer values(206,'Emily_Jones','GE,Berlin','Emily_Jones2003@gmail.com');
insert into customer values(207,'Daniel_Garcia','UK,Brussels','Daniel_Garcia2001@gmail.com');
insert into customer values(208,'Sophia_Nguyen','IN,Delhi','Sophia_Nguyen2000@gmail.com');
insert into customer values(209,'William_Wright','IN,Hyderabad','William_Wright2000@gmail.com');
insert into customer values(210,'Isabella_Martinez','IN,Hyderabad','Isabella_Martinez2000@gmail.com');

insert into customer values(211,'Matthew_Rodriguez','GE,Frankfurt','Matthew_Rodriguez1998@gmail.com');
insert into customer values(212,'Ava_Thompson','IN,Delhi','Ava_Thompson2@gmail.com');
insert into customer values(213,'James_Davis','GE,Berlin','James_Davis11@gmail.com');


-- conversation(CON_ID, status, c_id, a_id)					c_id references customer, a_id references agent
insert into conversation values(1000, 'Ongoing', 201, 101);
insert into conversation values(1001, 'Resolved', 220, 102);
insert into conversation values(1002, 'Ongoing', 203, 103);
insert into conversation values(1003, 'Resolved', 204, 104);
insert into conversation values(1004, 'Resolved', 205, 105);

insert into conversation values(1005, 'Resolved', 206, 106);
insert into conversation values(1006, 'Ongoing', 207, 107);
insert into conversation values(1007, 'Ongoing', 208, 101);
insert into conversation values(1008, 'Resolved', 209, 102);
insert into conversation values(1009, 'Resolved', 210, 103);

insert into conversation values(1010, 'Resolved', 211, 104);
insert into conversation values(1011, 'Ongoing', 212, 105);
insert into conversation values(1012, 'Ongoing', 213, 106);

-- message(M_ID, sub, body, timestamp, sender_type, con_id, pm_id)	        con_id ref conversation, pm_id ref message
insert into message values(10001, 'Request for technical support', 'Hi, I'm having trouble connecting my device to the internet. Can you help me troubleshoot the issue?', '', 'C', 1000, null);
insert into message values(10002, '', '', '', 'A', 1000, 10001);

insert into message values(10011, 'Inquiry about order status', 'Hi, I placed an order last week and was wondering when it will be shipped. Can you provide me with an update?', '', 'C', 1001, null);
insert into message values(10012, '', '', '', 'A', 1001, 10011);

insert into message values(10021, 'Questions about product features or specifications', 'Hi, I'm interested in purchasing this product but I have a few questions about its features. Can you help me out?', '', 'C', 1002, null);
insert into message values(10022, '', '', '', 'A', 1002, 10021);
insert into message values(10023, '', '', '', 'C', 1002, 10022);
insert into message values(10024, '', '', '', 'A', 1002, 10023);

insert into message values(10031, 'Complaint about product quality or performance', ' I recently purchased this product and I'm not satisfied with its quality. It seems to be malfunctioning. What can I do?', '', 'C', 1003, null);
insert into message values(10032, '', '', '', 'A', 1003, 10031);

insert into message values(10041, 'Request for return or exchange of product', 'I'd like to return this product as it doesn't meet my needs. How can I do that?', '', 'C', 1004, null);
insert into message values(10042, '', '', '', 'A', 1004, 10041);

insert into message values(10051, 'Questions about pricing or billing', 'I just received my bill and noticed a discrepancy in the pricing. Can you help me understand the charges?', '', 'C', 1005, null);
insert into message values(10052, '', '', '', 'A', 1005, 10051);
insert into message values(10053, '', '', '', 'C', 1005, 10052);
insert into message values(10054, '', '', '', 'A', 1005, 10053);

insert into message values(10061, 'Request for customization or special order', 'Hi, I'm interested in purchasing a customized version of this product. Is that possible?', '', 'C', 1006, null);
insert into message values(10062, '', '', '', 'A', 1006, 10061);

insert into message values(10071, 'Issues with account login or password', 'Hi, I can't seem to log into my account. Can you help me reset my password?', '', 'C', 1007, null);
insert into message values(10072, '', '', '', 'A', 1007, 10071);
insert into message values(10073, '', '', '', 'C', 1007, 10072);
insert into message values(10074, '', '', '', 'A', 1007, 10073);

insert into message values(10081, 'Questions about shipping or delivery', ' I'm wondering when my order will arrive. Can you provide me with an estimated delivery date?', '', 'C', 1008, null);
insert into message values(10082, '', '', '', 'A', 1008, 10081);

insert into message values(10091, 'Request for product recommendations or guidance', 'Hi, I'm not sure which product to choose for my specific needs. Can you provide me with some recommendations?', '', 'C', 1009, null);
insert into message values(10092, '', '', '', 'A', 1009, 10091);

insert into message values(10101, 'Complaint about customer service experience', 'Hi, I was disappointed with the customer service I received when I called earlier. Can you help me resolve my issue?', '', 'C', 1010, null);
insert into message values(10102, '', '', '', 'A', 1010, 10101);

insert into message values(10111, 'Questions about warranties or guarantees', 'Hi, I'm curious about the warranty or guarantee that comes with this product. Can you provide me with some information?', '', 'C', 1011, null);
insert into message values(10112, '', '', '', 'A', 1011, 10111);

insert into message values(10121, 'Request for help with using a product or service.', 'Hi, I'm having trouble using this product. Can you provide me with some guidance?', '', 'C', 1012, null);
insert into message values(10122, '', '', '', 'A', 1012, 10121);

insert into message values(10131, 'Request for assistance with a damaged or defective product', 'Hi, I received this product but it arrived damaged. What can I do?', '', 'C', 1013, null);
insert into message values(10132, '', '', '', 'A', 1013, 10131);
insert into message values(10133, '', '', '', 'C', 1013, 10132);
insert into message values(10134, '', '', '', 'A', 1013, 10133);
insert into message values(10135, '', '', '', 'C', 1013, 10134);
insert into message values(10136, '', '', '', 'A', 1013, 10135);




