USE brms;
DROP TABLE IF EXISTS bus;
CREATE TABLE bus
(
bus_id  varchar(5) primary key,
bus_registration_number varchar(14) unique key,
capcity int,
 type varchar(9)

);
SELECT * FROM bus;

desc bus;
drop procedure bmm;
delimiter //
create procedure bmm(in id varchar(20),in rno varchar(6),in cap int,in type varchar(20))
begin 
insert into bm values(id,rno,cap,type);
end //
delimiter ;
call bmm(15,'non-ac','sleeper',20,40);
 delimiter //
create procedure inser(in id varchar(20),in rno varchar(6),in cap int,in t varchar(20))
begin 
update  BUS set rno=r,
 bus_id=id,
 bus_registration_number=rno,
 capcity = cap,
 type = t
where rno=re;
end //
delimiter ;
delimiter //
 create procedure del(in rno varchar(20))
begin 
delete from BUS where rno=regn;
end //
delimiter ;
call del(15);
desc bus;
select * from bus;
