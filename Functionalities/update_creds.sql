set serveroutput on
declare
cursor c is select * from credentials;
pl_email credentials.email_address%type;
new_password credentials.password%type;
old_password credentials.password%type;
new_username credentials.username%type;
flag1 number(1);
begin
    pl_email:='&pl_email';
    new_username:='&new_username';
    old_password:='&old_password';
    new_password:='&new_password';
    flag1:=0;  
    for i in c
    loop
        if i.email_address=pl_email and i.password=old_password then
            flag1:=1;
        end if;
    end loop;

    if flag1=1 then
        update credentials set password=new_password, username=new_username where email_address=pl_email;        
    else
        dbms_output.put_line('Email not registered or incorrect password');
    end if;
end;
/
