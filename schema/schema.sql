create database if not exists magic;
use magic;

drop table if exists mentee ;
create table mentee(
	id integer primary key,
	firstName	varchar(20),
	lastName	varchar(20),
	primaryEmail	varchar(70),
	grade		varchar(20),
	schoolId	integer,
	age		integer
) ;

drop table if exists mentor ;
create table mentor(
	id	integer 	primary key,
	firstName	varchar(20),
	lastName	varchar(20),
	primaryEmail	varchar(70),
	employersName	varchar(100)
);

drop table if exists coordinators ;
create table coordinators(
	id	integer primary key,
	firstName	varchar(20),
	lastName	varchar(20),
	primaryEmail	varchar(70)
);

drop table if exists school ;
create table school(
	id	integer	primary key,
	name	varchar(20) ,
	address	varchar(100),
	coordinatorId	integer
);

drop table if exists term ;
create table term(
	id	integer primary key ,
	name	varchar(100),
	startDate	timestamp ,
	endDate		timestamp
);

drop table if exists project ;
create table project(
	id	integer	primary key,
	mentorId	integer ,
	menteeId	integer ,
	termId		integer ,
	isComplete	boolean ,
	presentationDate	timestamp
);



	

