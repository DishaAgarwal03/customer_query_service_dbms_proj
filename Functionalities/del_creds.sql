set serveroutput on
declare
cursor c is select * from credentials;
cursor c1 is select * from customer;
cursor c2 is select * from agent;
pl_email credentials.email_address%type;
pl_password credentials.password%type;
Enter_0_For_Customer_1_For_Agent number(1);
flag1 number(1);
flag2 number(1);
begin
    Enter_0_For_Customer_1_For_Agent:=&Enter_0_For_Customer_1_For_Agent;
    pl_email:='&pl_email';
    pl_password:='&pl_password';
    flag1:=0;
    flag2:=0;
    for i in c
    loop
        if i.email_address=pl_email and i.password=pl_password then
            flag2:=1;
        end if;
    end loop;
    if flag2=0 then
        dbms_output.put_line('Email not registered or incorrect password');
    else
        if Enter_0_For_Customer_1_For_Agent=0 then
            for i in c1
            loop
                if i.email_address=pl_email then
                    flag1:=1;
                end if;
            end loop;
        else
            for i in c2
            loop
                if i.email_address=pl_email then
                    flag1:=1;
                end if;
            end loop;
        end if;

        if flag1=1 then
            if Enter_0_For_Customer_1_For_Agent=0 then
                delete from customer where email_address=pl_email;
                delete from credentials where email_address=pl_email;
            else 
                delete from agent where email_address=pl_email;
                delete from credentials where email_address=pl_email;
            end if;
        else
            dbms_output.put_line('One email can only be used as customer or agent');
        end if;
    end if;
end;
/
