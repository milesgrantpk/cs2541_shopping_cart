DROP TABLE IF EXISTS user;
CREATE TABLE user (
    fname    varchar(15) not null,
    minit    varchar(1),
    lname    varchar(15) not null,
    userid   varchar(15) not null UNIQUE,
    passwd   varchar(15) not null,
    address  varchar(50) not null,
    bdate    date,
    primary key (userid)
);

DROP TABLE IF EXISTS product;
CREATE TABLE product (
    pname    varchar(50) not null,
    pid      int(5) not null UNIQUE,
    cname    varchar(50) not null,
    quantity int(7) not null,
    price    float(9,2) not null,
    rating   int(2),
    primary key (pid),
    foreign key (cname) references category(cname)
);

DROP TABLE IF EXISTS ord;
CREATE TABLE ord (
    userid   varchar(15) not null,
    pid      int(5) not null,
    oid      int(5) not null,
    price    decimal(9,2) not null,
    odate    date not null,
    onum     int(5) not null UNIQUE,
    primary key (oid),
    foreign key (userid) references user(userid),
    foreign key (pid) references product(pid)
);

DROP TABLE IF EXISTS category;
CREATE TABLE category (
    cname   varchar(50) not null UNIQUE,
    primary key (cname)
);

--This is a comment