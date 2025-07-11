drop table if exists book_issues CASCADE ;
drop table if exists books CASCADE ;
drop table if exists members CASCADE ;

create table books (
	book_id integer generated by default as identity, 
	book_author varchar	(50), 
	book_category varchar (40),
	-- book_status: 'A' = Available, 'I' = Issued, 'R' = Reserved
	book_status char (1),
	title varchar (50),
	primary key	(book_id)
);
create table members (
	member_id integer generated by default as identity,
	first_name varchar(30), 
	last_name varchar(30), 
	-- member_status: 'A' = Active, 'I' = Inactive
	member_status char(1), 
	primary key(member_id)
);

create table book_issues (
	issue_id integer generated by default as identity, 
	return_date_actual date, 
	book_id integer, 
	return_date_exp date, 
	issue_date date, 
	member_id integer,
	-- issue_status: 'O' = Open, 'C' = Closed, 'R' = Returned
	issue_status char(1), 
	primary key(issue_id),
	foreign key (member_id) references members(member_id),
	foreign key (book_id) references books(book_id)
);