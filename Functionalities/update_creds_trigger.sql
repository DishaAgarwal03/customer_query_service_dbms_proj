create or replace trigger update_creds_trigger
before
    update on 
credentials
for each row
declare
begin 
    if LENGTH(TRIM(TRANSLATE(:new.password,'ABCDEFGHIJKLMNOPQRSTUVWXYZ',' ')))=LENGTH(:new.password) then
        raise_application_error(-20100,'Password needs to have atleast 1 uppercase letter');
    elsif LENGTH(TRIM(TRANSLATE(:new.password,'0123456789',' ')))=LENGTH(:new.password) then
        raise_application_error(-20100,'Password needs to have atleast 1 number');
    else
        dbms_output.put_line('User creds updated');
    end if;
end;
/

