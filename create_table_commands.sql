create table credentials(
  email_address varchar(30) primary key,
  username varchar(20),
  password varchar(20)
);

create table customer(
  c_id number(6) primary key,
  name varchar(20),
  address varchar(50),
  email_address varchar(50) references credentials
  );
  
create table agent(
  a_id number(6) primary key,
  name varchar(20),
  address varchar(50),
  email_address varchar(50) references credentials
  );		
  
create table conversation(
  con_id number(6) primary key,
  status varchar(12),
  c_id number(6) references customer,
  a_id number(6) references agent     
  );
  
alter table conversation add constraint status_check  check(status in ('Resolved','Ongoing'));

create table message(
  M_ID number(6) primary key, 
  sub varchar(40), 
  body varchar(200), 
  time_stamp timestamp, 
  sender_type varchar(10), 
  con_id number(6) references conversation, 
  pm_id number(6)
);

alter table message add constraint pm_id_as_fk foreign key(pm_id) references message(m_id);

alter table message add constraint sender_type_check check(sender_type in ('A','C'));



  
  
