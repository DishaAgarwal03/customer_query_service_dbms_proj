create or replace procedure c_interacts (pl_c_id number,pl_sub varchar,pl_body varchar) is
cursor c1 is select * from conversation;
cursor c2 is select * from agent;
pl_id number(6);
pl_m_id number(6);
pl_pm_id number(6);
pl_con_id number(6);
pl_a_id number(6);
flag number(1);
agent_max number(6);
agent_min number(6);
begin
    flag:=0;
    for i in c1
        loop
            if i.c_id=pl_c_id and i.status='Ongoing' then
                flag:=1;
                select max(m_id) into pl_m_id from message;
                select max(m_id) into pl_pm_id from message m,conversation c where i.c_id=pl_c_id and m.con_id=c.con_id ;
                insert into message values(pl_m_id+1,pl_sub,pl_body,current_timestamp,'C',i.con_id,pl_pm_id);
            end if;
        end loop;
    if flag=0 then
        select max(a_id) into agent_max from agent;
        select min(a_id) into agent_min from agent;
        select max(con_id) into pl_con_id from conversation;
        select a_id into pl_a_id from conversation where con_id=pl_con_id;
        if pl_a_id=agent_max then
            pl_a_id:=agent_min;
        else
            pl_a_id:=pl_a_id+1;
        end if;
        insert into conversation values(pl_con_id+1,'Ongoing',pl_c_id,pl_a_id);
        select max(m_id) into pl_m_id from message;
        select max(m_id) into pl_pm_id from message m,conversation c where c.c_id=pl_c_id and m.con_id=c.con_id ;
        insert into message values(pl_m_id+1,pl_sub,pl_body,current_timestamp,'C',pl_con_id,pl_pm_id);
    end if;
end;
/