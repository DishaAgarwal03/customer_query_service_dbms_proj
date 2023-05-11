
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
insert into conversation values(1001, 'Resolved', 202, 102);
insert into conversation values(1002, 'Ongoing', 203, 103);
insert into conversation values(1003, 'Ongoing', 204, 104);
insert into conversation values(1004, 'Resolved', 205, 105);

insert into conversation values(1005, 'Resolved', 206, 106);
insert into conversation values(1006, 'Ongoing', 207, 107);
insert into conversation values(1007, 'Ongoing', 208, 101);
insert into conversation values(1008, 'Resolved', 209, 102);
insert into conversation values(1009, 'Resolved', 210, 103);

insert into conversation values(1010, 'Resolved', 211, 104);
insert into conversation values(1011, 'Resolved', 212, 105);
insert into conversation values(1012, 'Ongoing', 213, 106);

-- message(M_ID, sub, body, timestamp, sender_type, con_id, pm_id)	        con_id ref conversation, pm_id ref message
insert into message values(10001, 'Payment being declined', 'Hi, I just tried to make a purchase on your website but my payment was declined. Can you help me with this?', '', 'C', 1000, NULL);
insert into message values(10002, 'Payment', 'I am sorry to hear that. Can you please provide me with more information about the error message you received?', '', 'A', 1000, 10001);
insert into message values(10003, 'Payment', 'It says "transaction declined, please contact your bank"', '', 'C', 1000, 10002);
insert into message values(10004, 'Payment', 'Okay, it sounds like there might be an issue with your bank or credit card company. Have you checked with them to make sure there are no holds or issues with your account?', '', 'A', 1000, 10003);

insert into message values(10011, 'Inquiry about order status', 'Hi, I placed an order last week and was wondering when it will be shipped. Can you provide me with an update? order number 123454321', '', 'C', 1001, null);
insert into message values(10012, 'Order Status', 'Sure, let me look up your order information... It looks like your order is scheduled to ship tomorrow and should arrive by the end of the week.', '', 'A', 1001, 10011);

insert into message values(10021, 'Trouble with account creation', 'I am trying to create an account on your website but I''m having trouble. Can you help me with this?', '', 'C', 1002, null);
insert into message values(10022, 'Account Creation', 'Absolutely! Can you please provide me with some more information about the issue you''re facing?', '', 'A', 1002, 10021);
insert into message values(10023, 'Account Creation', 'Well, I am not receiving the account activation email after I submit my information.', '', 'C', 1002, 10022);
insert into message values(10024, 'Account Creation', 'I see. Can you please check your spam or junk folder to see if the email ended up there? If it''s not there, I can manually activate your account for you', '', 'A', 1002, 10023);

insert into message values(10031, 'Unavailability of product', 'Hi, I am interested in purchasing a product PXYZ but it''s showing as out of stock on your website. Can you provide me with an update on when it will be available again?', '', 'C', 1003, null);
insert into message values(10032, 'Product Unavailability', 'Thank you for your inquiry. Let me check the availability of this product for you... It looks like we will be restocking it in approximately two weeks. Would you like me to notify you when it becomes available?', '', 'A', 1003, 10031);
insert into message values(10033, 'Product Unavailability', 'Yes, please do. Thank you!', '', 'C', 1003, 10032);
insert into message values(10034, 'Product Unavailability', 'Not a problem. I''ll add you to our waiting list and you''ll receive an email notification as soon as the product is back in stock. Let me know if you have any other questions or concerns.', '', 'A', 1003, 10033);


insert into message values(10041, 'Request for return or exchange of product', 'I would like to return this product as it doesn''t meet my needs. How can I do that?', '', 'C', 1004, null);
insert into message values(10042, 'Return/Exchange', 'I am sorry to hear that the product didn''t meet your expectations. Navigate to your account->my orders->return product', '', 'A', 1004, 10041);

insert into message values(10051, 'Trouble in installing a product', 'Hi, I recently purchased a product from your website but I''m having trouble installing it. Can you help me with this?', '', 'C', 1005, null);
insert into message values(10052, 'Product Installation', 'Absolutely! Can you please provide me with more information about the issue you''re facing?', '', 'A', 1005, 10051);
insert into message values(10053, 'Product Installation', 'I''m trying to install the product on my computer but I keep getting an error message.', '', 'C', 1005, 10052);
insert into message values(10054, 'Product Installation', 'Okay, let''s start by checking the system requirements for the product. Can you please confirm that your computer meets the minimum system requirements?','', 'A', 1005, 10053);
insert into message values(10055, 'Product Installation', 'Oh, I didn''t realize there were system requirements. Let me check... Okay, it looks like my computer doesn''t meet the minimum requirements.', '', 'C', 1005, 10054);
insert into message values(10056, 'Product Installation', 'That might be the issue. I recommend upgrading your computer''s hardware or purchasing a different product that meets your computer''s requirements. Let me know if you need assistance with either of those options.', '', 'A', 1005, 10055);

insert into message values(10061, 'Payment not going through', 'I''m trying to complete a purchase on your website but my payment is not going through. Can you help me with this?', '', 'C', 1006, null);
insert into message values(10062, 'Payment', 'Of course! Can you please provide me with more information about the issue you're facing?', '', 'A', 1006, 10061);

insert into message values(10071, 'Trouble finding a specific product', 'Hi, I''m having trouble finding a specific product on your website. Can you help me navigate to it?', '', 'C', 1007, null);
insert into message values(10072, 'Website Navigation', 'Of course! What is the name of the product you're looking for?', '', 'A', 1007, 10071);
insert into message values(10073, 'Website Navigation', 'It''s called the ABC widget.', '', 'C', 1007, 10072);
insert into message values(10074, 'Website Navigation', 'Alright, let me take a look... It looks like the ABC widget is located in our "Widgets" category. You can access this category by clicking on "Products" in the top navigation bar, then selecting "Widgets" from the dropdown menu.', '', 'A', 1007, 10073);

insert into message values(10081, 'Questions about shipping', 'I''m wondering when my order will arrive. Can you provide me with an estimated delivery date? Order Id: 7665544636', '', 'C', 1008, null);
insert into message values(10082, 'Order Status', 'Sure! Your order is estimated to arrive by tomorrow 5p.m', '', 'A', 1008, 10081);

insert into message values(10091, 'Complaint about shipping time', 'Hi, I ordered a product from your website two weeks ago and it still hasn''t arrived. Can you please help me with this?', '', 'C', 1009, null);
insert into message values(10092, 'Complaint', 'I''m sorry to hear that. Can you please provide me with your order number so I can look into it?', '', 'A', 1009, 10091);
insert into message values(10093, 'Complaint', 'Sure, my order number is 123456.', '', 'C', 1009, 10092);
insert into message values(10094, 'Complaint', 'Okay, let me check our system... It looks like your package was delayed due to unforeseen circumstances. I apologize for the inconvenience. Would you like me to process a refund for the shipping cost or expedite the shipping for your order?', '', 'A', 1009, 10093);
insert into message values(10095, 'Complaint', 'I''d like to expedite the shipping, please.', '', 'C', 1009, 10094);
insert into message values(10096, 'Complaint', 'Not a problem. I''ll upgrade your shipping to express and make sure it''s shipped out as soon as possible. You should receive a tracking number in your email shortly.', '', 'A', 1009, 10095);
insert into message values(10097, 'Complaint', 'Thank you for your help.', '', 'C', 1009, 10096);

insert into message values(10101, 'Complaint about customer service experience', 'Hi, I recently reached out to your customer service team about an issue I was having with one of your products, and I was really disappointed with the service I received. I felt like my concerns weren''t being taken seriously and I wasn''t given any helpful solutions. Can you please help me with this?', '', 'C', 1010, null);
insert into message values(10102, 'Complaint', 'I''m sorry to hear that you had a negative experience with our customer service team. Can you please provide me with more information about your issue so I can understand what went wrong?', '', 'A', 1010, 10101);
insert into message values(10103, 'Complaint', 'Sure. I purchased one of your products and it wasn''t working properly. I contacted your customer service team through email and I didn''t get a response for several days. When I finally did get a response, the agent I spoke to didn''t seem to understand my issue and just gave me generic troubleshooting steps that didn''t solve the problem', '', 'C', 1010, 10102);
insert into message values(10104, 'Complaint', 'I see. That''s definitely not the level of service we strive to provide. I apologize for the frustration this has caused you. Can you please provide me with your email address and the date you reached out to our customer service team so I can investigate this further?', '', 'A', 1010, 10103);
insert into message values(10105, 'Complaint', 'Sure, my email address is Matthew_Rodriguez1998@gmail.com and I reached out to your team on May 1st.', '', 'C', 1010, 10104);
insert into message values(10106, 'Complaint', 'Thank you. Let me look into this... It looks like there was a delay in our response time due to a high volume of inquiries, but that''s no excuse for the poor quality of service you received. I want to make this right for you. Can I offer you a replacement product or a refund for your original purchase, and also an additional discount on your next order with us?', '', 'A', 1010, 10105);
insert into message values(10107, 'Complaint', 'I appreciate the offer, but I''m not sure I want to do business with your company again after this experience', '', 'C', 1010, 10106);
insert into message values(10108, 'Complaint', 'I understand. I want to assure you that we take our customer service seriously and we''ll be taking steps to improve our response times and quality of service. I''m sorry we weren''t able to meet your expectations, but I want to thank you for bringing this to our attention so we can do better in the future', '', 'A', 1010, 10107);
insert into message values(10109, 'Complaint', 'Thank you for your apology. I appreciate your efforts to improve.', '', 'C', 1010, 10108);

insert into message values(10111, 'Guidance with forgotten password', 'Hi, I can''t seem to remember my password and I need to access my account. Can you help me reset it?', '', 'C', 1011, null);
insert into message values(10112, 'Forgotten Password', 'Of course! Let me send you a password reset link to your registered email address. Please click on the link and follow the instructions to create a new password.', '', 'A', 1011, 10111);
insert into message values(10113, 'Forgotten Password', 'Thank you so much! I was able to reset my password and access my account', '', 'C', 1011, 10112);

insert into message values(10121, 'Assistance with product selection', 'Hi, I''m looking to purchase a new product but I''m not sure which one to choose. Can you provide me with some recommendations?', '', 'C', 1012, null);
insert into message values(10122, 'Guidance', 'Of course! Can you please provide me with some more information about what you''re looking for in a product? For example, what features are important to you, or what is your budget?', '', 'A', 1012, 10121);
insert into message values(10123, 'Assistance with product selection', 'Well, I''m looking for a new laptop for work and I need something that''s portable but also powerful enough to handle multiple programs at once. My budget is around $1000', '', 'C', 1012, 10122);
insert into message values(10124, 'Guidance', 'Based on those requirements, I would recommend our XYZ model. It has a lightweight design but also comes with a powerful processor and ample storage space. It also falls within your budget. Would you like more information on this product?', '', 'A', 1012, 10123);


commit;


