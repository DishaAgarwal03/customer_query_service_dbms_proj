set serveroutput on
declare
cursor c is select * from credentials;
pl_email credentials.email_address%type;
pl_username credentials.username%type;
new_password credentials.password%type;
pl_name varchar(20);
pl_id number(6);
pl_address varchar(50);
Enter_0_For_Customer_1_For_Agent number(1);
flag1 number(1);
begin
    Enter_0_For_Customer_1_For_Agent:=&Enter_0_For_Customer_1_For_Agent;
    pl_email:='&pl_email';
    pl_username:='&pl_username';
    new_password:='&new_password';
    pl_name:='&pl_name';
    pl_address:='&pl_address';
    flag1:=0;
    for i in c
    loop
        if i.email_address=pl_email then
            flag1:=1;
        end if;
    end loop;
    
    if flag1=0 then
            if LENGTH(TRIM(TRANSLATE(pl_email,'@',' ')))=LENGTH(pl_email) then
                dbms_output.put_line('Invalid email');
            elsif LENGTH(TRIM(TRANSLATE(new_password,'ABCDEFGHIJKLMNOPQRSTUVWXYZ',' ')))=LENGTH(new_password) then
                dbms_output.put_line('Password needs to have atleast 1 uppercase letter');
            elsif LENGTH(TRIM(TRANSLATE(new_password,'0123456789',' ')))=LENGTH(new_password) then
                dbms_output.put_line('Password needs to have atleast 1 number');
            else
                insert into credentials values(pl_email,pl_username,new_password);
                dbms_output.put_line('User created');
                if Enter_0_For_Customer_1_For_Agent=0 then
                    select max(c_id) into pl_id from customer;
                    insert into customer values(pl_id+1,pl_name,pl_address,pl_email);
                else
                    select max(a_id) into pl_id from agent;
                    insert into agent values(pl_id+1,pl_name,pl_address,pl_email);
                end if;
            end if;
    else
        dbms_output.put_line('Email already exists');
    end if;
end;
/