CREATE DATABASE BRMS;
USE BRMS;
------------------------------/*bus management*/-----------------------------------------------
create table bm(
regno int primary key ,
type_ varchar(6),
seat_type varchar(20),
seat_cap int,
berth_cap int,
Priority enum('L','U')
);
-----------------insertion-------------------------------------------------------
delimiter //
create procedure bmm(in r int,in ty varchar(6),in sety varchar(20),in seatcap int,in berthcap int,in h varchar(1))
begin 
insert into bm values(r,ty,sety,seatcap,berthcap,h);
end //
delimiter ;
call bmm(15,'non-ac','sleeper',20,40,'L');
-----------------------------updation-----------------------------------------------------------
 delimiter //
create procedure upda(in r int,in ty varchar(6),in sety varchar(20),in seatcap int,in berthcap int,in h varchar(1),re int)
begin 
update  bm set regno=r,
 type_ =ty,
 seat_type =sety,
 seat_cap =seatcap,
 berth_cap=berthcap,
 Priority=h
where regno=re;
end //
delimiter ;
---------------------------------deletion-----------------------------------------------------
delimiter //
 create procedure del(in regn int)
begin 
delete from bm where regno=regn;
end //
delimiter ;

call del(15);
----------------------route management---------------------------------------------------------------
create table route (
 r_id int primary key auto_increment,
 source_ varchar(20),
 desti varchar(20)
 );
----------insert----------
delimiter //
 create procedure routin(in rid int,in src varchar(20),in dest varchar(20))
  begin 
  insert into route values(rid,src,dest);
  end //
  delimiter ;
call routin(1,'mum','mp');
-----------------show list of routes-------
 create procedure list()
  begin 
  select * from route;
  end //
  delimiter ;

call list;
----------------- delete specific route------------------
 delimiter //
  /*route  delete */
 create procedure delet(in src varchar(20),in dest varchar(20))
  begin 
  delete from route where source_= src and desti=dest; 
  end //
  delimiter ;

   call delet('akp','vskp');
----------------------------update specific route-----------
delimiter //
 create procedure updat(in src varchar(20),in dest varchar(20),in rid int)
  begin 
   update  route set source_=src , desti=dest where r_id=rid;
  end //
  delimiter ;
  
  call updat('vskp','akp',1);
-------------------------------------trip management--------------------------------------------------------------
 create table trip
  (
  regno int primary key,
  src varchar(20),
  destii varchar(20),
  btime time,
  arri time,
  charg int);
---------------insert or add trip details---------------------
delimiter //
create procedure ad(in busreg int,in sr varchar(20),in dest varchar(20),in bt time,in art time,in c int)
  begin 
  insert into trip values(busreg,sr,dest,bt,art,c);
  end //
  delimiter ;

----------llist all trips--------------------------
 delimiter //
create procedure lis()
  begin 
  select * from trip;
  end //
  delimiter ;
  
  call lis;
--------------------------delete specific trip----------------------
create procedure del(in src varchar(20),dest varchar(20))
  begin 
  delete from trip where source_ =src and dest=desti;
  end //
  delimiter ;
  
 call del();
-----------------update specific trip-------------
delimiter //
create procedure upd(in src varchar(20),in dest varchar(20),in reg varchar(20))
  begin 
  update trip set source_=src ,desti=dest where regno=ref;
  end //
  delimiter ;
  


