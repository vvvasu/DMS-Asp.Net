CREATE TABLE inc_type
(
id int IDENTITY(1,1) PRIMARY KEY,
itype varchar(50) UNIQUE,
);

CREATE TABLE user_type
(
id int IDENTITY(1,1) PRIMARY KEY,
user_type varchar(50) UNIQUE,
);


CREATE TABLE reporter
(
rid int IDENTITY(1,1),
nic varchar(10),
utype varchar(50),
fname varchar(50),
lname varchar(50),
email varchar(70),
tel varchar(10),
city varchar(30),
position varchar(50),
FOREIGN KEY (utype) REFERENCES user_type(user_type) ,
);

ALTER TABLE reporter
ALTER COLUMN nic varchar(10) not null

ALTER TABLE reporter
ADD constraint pk_reporter
PRIMARY KEY (nic)


CREATE TABLE login
(
id int IDENTITY(1,1),
rep_nic varchar(10),
pass varchar(32),
utype varchar(50)
FOREIGN KEY (rep_nic) REFERENCES reporter(nic) ON DELETE CASCADE,
PRIMARY KEY (rep_nic)
);


CREATE TABLE incident
(
inc_id int IDENTITY(1,1),
rep_nic varchar(10),
inc_type varchar(50),
inc_title varchar(100),
inc_description varchar(2500),
inc_date date,
inc_location varchar(50),
inc_tlevel varchar(50),
inc_status varchar(1) DEFAULT 'h',
PRIMARY KEY (inc_id),
FOREIGN KEY (rep_nic) REFERENCES reporter(nic),
FOREIGN KEY (inc_type) REFERENCES inc_type(itype),
);


--ALTER TABLE incident
--ADD DEFAULT 'h' FOR inc_status


CREATE TABLE pic
(
pic_id int IDENTITY(1,1),
inc_id int,
pic_name varchar(50),
pic_description varchar(150),
img varbinary(max),

FOREIGN KEY (inc_id) REFERENCES incident(inc_id),
);

CREATE TABLE markers
(
m_id int IDENTITY(1,1),
inc_id int,
name varchar(60),
m_address varchar(80),
lat float,
lng float,
m_type varchar(30),

FOREIGN KEY (inc_id) REFERENCES incident(inc_id),
);

