create table credentials(
  email_address varchar(50) primary key,
  username varchar(20) not null,
  password varchar(20) not null
);

create table customer(
  c_id number(6) primary key,
  name varchar(20) not null,
  address varchar(50),
  email_address varchar(50) references credentials not null
  );
  
create table agent(
  a_id number(6) primary key,
  name varchar(20) not null,
  address varchar(50),
  email_address varchar(50) references credentials not null  
  );		
  
create table conversation(
  con_id number(6) primary key,
  status varchar(12) default 'Ongoing',
  c_id number(6) references customer not null,
  a_id number(6) references agent not null    
  );
  
alter table conversation add constraint status_check check(status in ('Resolved','Ongoing'));

create table message(
  M_ID number(6) primary key, 
  sub varchar(40) not null, 
  body varchar(200), 
  time_stamp timestamp(0), 
  sender_type varchar(10) not null, 
  con_id number(6) references conversation not null, 
  pm_id number(6)
);

alter table message add constraint pm_id_as_fk foreign key(pm_id) references message(m_id);

alter table message add constraint sender_type_check check(sender_type in ('A','C'));

create table user_log(
email_address varchar(50),
name varchar(20),
address varchar(50),
end_of_tenure date,
user_type varchar(20)
);

  
  
