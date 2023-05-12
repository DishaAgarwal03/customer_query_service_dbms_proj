set serveroutput on
DECLARE
    pl_email credentials.email_address%type;
    pl_username credentials.username%type;
    new_password credentials.password%type;
    pl_name varchar(20);
    pl_address varchar(50);
    acctype number(1);
begin
    acctype:='&Enter_0_For_Customer_1_For_Agent';
    pl_email:='&email_address';
    pl_username:='&username';
    new_password:='&password';
    pl_name:='&FullName';
    pl_address:='&Address';
    create_creds(acctype, pl_email, pl_username, new_password, pl_name, pl_address);
END;
/