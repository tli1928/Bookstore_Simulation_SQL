CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

grant all privileges on bookstore.* to 'webapp'@'%';
flush privileges;

-- Customer table ------------------

-- make a Customer table, it has a customerId, balance, memberType, firstName, midName, lastName, birth_date, age.
-- midName can be null. The memberType can be 'regular', 'silver', 'gold', 'platinum', and the default is 'regular'.
-- the customerId is auto-incremented nine-digit number, starting from 200000000.
-- and the balance is a non-negative number.

CREATE TABLE customer (
    customerId INT(9) NOT NULL AUTO_INCREMENT,
    balance DECIMAL(10,2) NOT NULL DEFAULT 0,
    memberType ENUM('regular', 'silver', 'gold', 'platinum') NOT NULL DEFAULT 'regular',
    firstName VARCHAR(20) NOT NULL,
    midName VARCHAR(20),
    lastName VARCHAR(20) NOT NULL,
    birth_date DATE NOT NULL,


    constraint pk_customer primary key (customerId)

);

-- set the start number for auto increment primary key:
ALTER TABLE customer AUTO_INCREMENT = 200000000;

-- insert some customers:

-- generate 20 customers with midName.
INSERT INTO customer (balance, memberType, firstName, midName, lastName, birth_date)
VALUES
    (0, 'regular', 'Penelope', 'A', 'Smith', '1992-01-01'),
    (100.10, 'silver', 'Josh', 'B', 'Havick', '1996-01-01'),
    (20, 'gold', 'Lea', 'C', 'Wolsey', '1994-01-01'),
    (40, 'platinum', 'Bobbee', 'D', 'Alliker', '1990-07-01'),
    (80, 'regular', 'Walt', 'E', 'Leindecker', '1990-10-01'),
    (100, 'regular', 'Maren', 'F', 'Rowswell', '1999-11-01'),
    (200, 'silver', 'John', 'G', 'Doddridge', '1993-02-01'),
    (300, 'platinum', 'Theodor', 'H', 'Order', '1990-01-08'),
    (400, 'regular', 'Joy', 'I', 'Gelsthorpe', '1990-01-08'),
    (500, 'silver', 'Gwenora', 'J', 'Measom', '1990-01-19'),
    (600, 'regular', 'John', 'K', 'Penas', '1990-01-13'),
    (700, 'regular', 'Matthaeus', 'L', 'Threader', '1990-01-14'),
    (800, 'regular', 'Marcus', 'M', 'Ilyukhov', '1980-01-01'),
    (900, 'platinum', 'Pooh', 'N', 'Firmin', '1990-11-01'),
    (1000, 'regular', 'Aylmer', 'O', 'Rudolfer', '2000-01-01'),
    (1100, 'regular', 'Bary', 'P', 'Brinsden', '2001-01-01'),
    (1200, 'regular', 'Gian', 'Q', 'Muncey', '1999-01-01'),
    (1300, 'silver', 'Bernadina', 'R', 'Andrez','1990-03-01'),
    (1400, 'regular', 'Zorana', 'S', 'Ca', '1990-01-16'),
    (1500, 'platinum', 'Tatiania', 'T', 'Smith', '1990-07-01');


insert into customer (balance, memberType, firstName, lastName, birth_date) values (370.0, 'platinum', 'Geke', 'Smith', '1987-02-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (713.0, 'regular', 'Yetts', 'Havick', '2002-09-18');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (783.6, 'platinum', 'Stair', 'Wolsey', '1986-05-28');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (87.0, 'platinum', 'Kepp', 'Leindecker', '1989-03-06');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (161.1, 'gold', 'Jakes', 'Leindecker', '2007-02-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (961.8, 'silver', 'Bertrand', 'Smith', '1998-09-28');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (958.5, 'silver', 'Baldry', 'Havick', '2003-03-29');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (526.6, 'platinum', 'Tritton', 'Wolsey', '2004-08-02');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (75.5, 'gold', 'Iwanowicz', 'Leindecker', '1994-08-01');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (736.5, 'gold', 'Gourlie', 'Andrez', '1982-03-05');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (236.8, 'gold', 'Nathon', 'Ca', '2003-05-29');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (117.6, 'regular', 'McFadzean', 'Ca', '1995-02-13');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (750.8, 'regular', 'Lomath', 'Andrez', '2010-06-13');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (453.0, 'platinum', 'Woloschinski', 'Wolsey', '1989-09-11');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (303.5, 'platinum', 'Parade', 'Leindecker', '2006-10-17');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (637.8, 'regular', 'Kuhl', 'Leindecker', '1997-05-27');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (457.1, 'regular', 'Borit', 'Sacks', '1981-09-01');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (354.4, 'gold', 'Sacks', 'Male', '1991-04-18');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (726.8, 'gold', 'McIndrew', 'Sacks', '1984-01-26');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (280.0, 'regular', 'Demaine', 'Cockren', '1991-11-20');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (607.2, 'gold', 'Cockren', 'Male', '2005-04-21');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (168.3, 'silver', 'Kobu', 'Cockren', '1990-07-07');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (999.8, 'gold', 'Truckett', 'Doud', '1999-01-14');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (919.2, 'regular', 'Rottcher', 'Truckett', '1982-06-14');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (765.5, 'silver', 'Whipp', 'Whipp', '1992-03-17');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (909.7, 'silver', 'Athridge', 'Cockren', '2007-08-24');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (428.7, 'platinum', 'Doud', 'Male', '1986-12-12');
insert into customer (balance, memberType, firstName, lastName, birth_date) values (17.3, 'regular', 'Potter', 'Potter', '2006-12-29');



-- make a author table, it has authorId, deposit, firstName, midName, lastName, contactEmail.
-- midName can be null. The default deposit is 0.
-- the authorId is auto-incremented nine-digit number, starting from 100000000.

-- Author table ------------------
CREATE TABLE author (
    authorId INT NOT NULL AUTO_INCREMENT,
    deposit INT NOT NULL DEFAULT 0,
    firstName VARCHAR(255) NOT NULL,
    midName VARCHAR(255),
    lastName VARCHAR(255) NOT NULL,

    -- contactEmail should be unique
    contactEmail VARCHAR(255) NOT NULL UNIQUE,

    constraint pk_author primary key (authorId)
);



-- set the start number for auto increment primary key:
ALTER TABLE author AUTO_INCREMENT = 100000000;

-- generate 5 authors with midName.


INSERT INTO author (deposit, firstName, midName, lastName, contactEmail)
VALUES
    (1000, 'Colas', 'Aas', 'Hen', 'cola123@gmail.com'),
    (90, 'Pauletta', 'Bas', 'Roman', 'paulettaB@northeastern.com'),
    (11, 'Lesly', 'Casd', 'Hincham', '343332123@qq.com'),
    (123, 'Myrtia', 'D23', 'Downton', '126783123@qq.com'),
    (223, 'Hilde', 'E1', 'Hankard','2323123124@qq.com'),
    (89, 'Lynnett', 'Ffd', 'Bartoszewicz', 'Lynnett@gmail.com'),
    (123, 'Colas', 'Aas', 'Hen', 'cola@gmail.com'),
    (9230, 'Pauletta', 'Bas', 'Lesly', 'paulet123taB@northeastern.com'),
    (11, 'Lesly', 'Casd', 'Hankard', '12312376182@qq.com'),
    (1123, 'Myrtia', 'D23', 'Hen', '126783123123@qq.com'),
    (223, 'Hilde', 'E1', 'Hankard','12367812233@qq.com'),
    (89, 'Lynnett', 'Ffd', 'Roman', 'Lyn123nett@gmail.com');

INSERT INTO author (firstName, midName, lastName, contactEmail)
VALUES
    ('Colas', 'A', 'Balk', 'cola2@gmail.com'),
    ('Pauletta', 'B', 'Roman', 'pau23211lettaB@northeastern.com'),
    ('Lesly', 'C', 'Hincham', '123123712312316182@qq.com'),
    ('Myrtia', 'D', 'Downton', '12621312783123@qq.com'),
    ('Hilde', 'E', 'Hankard','123678121231231233@qq.com'),
    ('Lynnett', 'F', 'Bartoszewicz', 'Lynne12312312tt@gmail.com');

insert into author (firstName, lastName, contactEmail, midName) values ('Logan', 'Blackleech', 'lblackleech0@theguardian.com', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Alane', 'Cunio', 'acunio1@is.gd', 'b');
insert into author (firstName, lastName, contactEmail, midName) values ('Neddie', 'Lefwich', 'nlefwich2@comcast.net', 'c');
insert into author (firstName, lastName, contactEmail, midName) values ('Lauren', 'Dragge', 'ldragge3@europa.eu', 'd');
insert into author (firstName, lastName, contactEmail, midName) values ('Hyacinthe', 'Greenshields', 'hgreenshields4@t.co', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Roseann', 'Heino', 'rheino5@com.com', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Kimmy', 'Glasby', 'kglasby6@jigsy.com', 'c');
insert into author (firstName, lastName, contactEmail, midName) values ('Edythe', 'Keaton', 'ekeaton7@alibaba.com', 'b');
insert into author (firstName, lastName, contactEmail, midName) values ('Araldo', 'Dungay', 'adungay8@gnu.org', 'a');
insert into author (firstName, lastName, contactEmail, midName) values ('Cyril', 'Botright', 'cbotright9@csmonitor.com', 'f');




-- generate 5 authors without midName.

INSERT INTO author (firstName, lastName, contactEmail)
VALUES
    ('Colas', 'Balk', '23718923@qq.com'),
    ('Pauletta', 'Roman', '278312873@qq.com'),
    ('Lesly', 'Hincham', '89612312@qq.com'),
    ('Myrtia', 'Downton', '18923619283@qq.com'),
    ('Hilde', 'Hankard', '7862312@qq.com');




-- Employee table ------------------
-- make a Employee table, it has employeeId, employeeAccount, employeePassword, firstName, midName, lastName.
-- midName can be null. The employeeAccount is unique.
-- the employeeId is auto-incremented nine-digit number, starting from 300000000.

CREATE TABLE employee (
    employeeId INT NOT NULL AUTO_INCREMENT,
    employeeAccount VARCHAR(255) NOT NULL UNIQUE,
    employeePassword VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    midName VARCHAR(255),
    lastName VARCHAR(255) NOT NULL,

    constraint pk_employee primary key (employeeId)
);

-- set the start number for auto increment primary key:
ALTER TABLE employee AUTO_INCREMENT = 300000000;

-- generate 5 employees

INSERT INTO employee (employeeAccount, employeePassword, firstName, midName, lastName)
VALUES
    ('etheyerh@i2i.jp', '5517369', 'Xenos', 'A', 'Crowd'),
    ('mszepe9@blogs.com', '3713677', 'Xenos', 'B', 'Tipperton'),
    ('kiffland2p@i2i.jp', 'wqsdiuq12', 'Blakeley', 'C', 'Oleszkiewicz');


INSERT INTO employee (employeeAccount, employeePassword, firstName, lastName)
VALUES
    ('channigan39@i2i.jp', '12378912', 'Reginald', 'Genney'),
    ('wcosby3c@house.gov', '1236871', 'Ricoriki', 'Rottcher');

insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('fpilbeam0@google.com.br', '80-380-4617', 'Flora', 'Pilbeam');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('kcasine1@lycos.com', '37-012-1805', 'Kissie', 'Casine');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('edahlman2@hao123.com', '07-471-3447', 'Emelita', 'Dahlman');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('egothup3@google.it', '40-153-2927', 'Erastus', 'Gothup');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('pcrossfeld4@cyberchimps.com', '50-390-7340', 'Pamelina', 'Crossfeld');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('bspeak5@privacy.gov.au', '46-584-0977', 'Blakelee', 'Speak');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('saujouanet6@ask.com', '81-687-0626', 'Sheba', 'Aujouanet');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('lrolley7@twitpic.com', '26-258-3185', 'Loretta', 'Rolley');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('estellman8@sakura.ne.jp', '92-178-0067', 'Ebeneser', 'Stellman');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('jcastellone9@pen.io', '56-064-3885', 'Jolyn', 'Castellone');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ccostya@aboutads.info', '83-523-4260', 'Cecily', 'Costy');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('rorrob@globo.com', '47-551-6245', 'Remington', 'Orro');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ibriteec@github.com', '97-631-3490', 'Ilyse', 'Britee');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('xberkd@ucla.edu', '85-118-4879', 'Xever', 'Berk');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('mwikeye@ucsd.edu', '24-907-2482', 'Mathilde', 'Wikey');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ltaggf@about.me', '06-864-7933', 'Lory', 'Tagg');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('pdmitrievg@simplemachines.org', '10-670-2096', 'Phillie', 'Dmitriev');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('bgleetonh@dyndns.org', '39-375-8035', 'Bartholemy', 'Gleeton');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('sbrotheridgei@indiatimes.com', '50-578-2805', 'Saudra', 'Brotheridge');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ghorsefieldj@twitpic.com', '76-781-2733', 'Gweneth', 'Horsefield');

insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('ccosdasstya@aboutads.info', '83-523-4260', 'Cecily', 'Costy');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asdasd@globo.com', '47-551-6245', 'Remington', 'Orro');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('1231213@github.com', '97-631-3490', 'Ilyse', 'Britee');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asdasdas@ucla.edu', '85-118-4879', 'Xever', 'Berk');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('123123@ucsd.edu', '24-907-2482', 'Mathilde', 'Wikey');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('2321231@about.me', '06-864-7933', 'Lory', 'Tagg');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('sdadasdas@simplemachines.org', '10-670-2096', 'Phillie', 'Dmitriev');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('12312321@dyndns.org', '39-375-8035', 'Bartholemy', 'Gleeton');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('qswdqweq@indiatimes.com', '50-578-2805', 'Saudra', 'Brotheridge');
insert into employee (employeeAccount, employeePassword, firstName, lastName) values ('asxdasdas@twitpic.com', '76-781-2733', 'Gweneth', 'Horsefield');



--  withdraws money table ------------------
-- make a Withdraws_Money table, it has transactionId, authorId, employeeId, transaction_time, transaction_amount.
-- the transaction_time is the current time.
-- the transaction_amount is the amount of money that the author withdraws.
-- if the primary key of

CREATE TABLE withdraws_Money (
    transactionId INT NOT NULL AUTO_INCREMENT,

    authorId INT NOT NULL,
    employeeId INT NOT NULL,
    transaction_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    transaction_amount INT NOT NULL,

    constraint pk_withdraws_money primary key (transactionId),




    constraint fk_authorId
        foreign key (authorId)
        references author (authorId)
        on delete cascade
        on update cascade,

    constraint fk_employeeId
        foreign key (employeeId)
        references employee (employeeId)
        on delete cascade
        on update cascade
);


-- generate 5 withdraws money records

INSERT INTO withdraws_Money (authorId, employeeId, transaction_amount)
VALUES
    (100000000, 300000000, 100.10),
    (100000001, 300000001, 2000),
    (100000002, 300000002, 30000),
    (100000003, 300000003, 40),
    (100000004, 300000004, 50);


insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000005, 300000032, 7.17);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000003, 681.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000029, 227.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000021, 605.82);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000004, 938.99);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000002, 247.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000004, 850.97);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000019, 224.03);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000020, 172.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000015, 340.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000003, 166.52);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000001, 780.25);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000028, 368.75);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000034, 355.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000023, 7.69);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000006, 310.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000010, 762.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000029, 688.34);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000029, 989.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000028, 168.62);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000000, 332.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000031, 104.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000024, 156.11);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000022, 760.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000020, 790.99);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000021, 488.88);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000030, 70.74);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000013, 885.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000014, 511.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000027, 639.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000034, 322.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000028, 837.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000008, 472.62);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000010, 364.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000028, 495.45);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000012, 951.22);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000023, 943.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000015, 31.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000025, 643.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000009, 262.71);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000023, 692.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000023, 5.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000028, 706.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000004, 203.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000017, 52.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000006, 345.56);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000005, 307.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000028, 636.89);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000020, 362.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000014, 655.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000024, 811.23);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000007, 825.13);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000031, 788.03);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000028, 710.64);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000025, 386.47);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000018, 852.14);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000018, 442.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000004, 468.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000007, 270.25);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000009, 301.5);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000024, 381.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000015, 128.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000027, 835.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000005, 300000009, 815.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000021, 482.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000024, 502.92);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000018, 606.13);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000007, 862.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000002, 468.26);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000034, 305.33);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000023, 409.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000009, 61.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000012, 261.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000020, 93.48);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000018, 418.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000030, 991.78);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000022, 87.88);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000001, 31.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000012, 313.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000010, 466.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000031, 591.38);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000025, 824.8);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000012, 62.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000032, 55.57);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000027, 259.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000015, 471.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000001, 996.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000014, 266.53);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000013, 574.89);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000005, 603.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000005, 733.44);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000017, 843.05);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000002, 51.1);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000005, 279.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000004, 430.95);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000008, 164.08);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000032, 960.97);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000002, 805.2);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000005, 860.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000012, 733.15);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000007, 750.61);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000033, 214.81);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000000, 575.54);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000018, 834.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000027, 475.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000003, 434.46);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000034, 259.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000007, 918.42);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000022, 37.7);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000003, 1.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000002, 353.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000005, 885.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000000, 255.82);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000008, 637.85);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000009, 892.9);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000020, 190.6);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000019, 76.32);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000019, 349.35);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000003, 555.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000010, 300000022, 616.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000034, 899.32);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000031, 620.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000006, 168.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000014, 435.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000010, 702.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000004, 87.66);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000020, 434.72);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000023, 690.92);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000029, 237.18);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000013, 946.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000013, 434.48);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000018, 122.98);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000021, 300000034, 376.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000012, 394.06);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000017, 33.44);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000020, 300000023, 101.4);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000002, 300000028, 712.47);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000021, 386.67);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000003, 618.57);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000030, 827.22);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000009, 875.84);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000027, 588.49);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000023, 300000034, 50.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000027, 351.65);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000033, 807.43);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000033, 457.09);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000032, 707.33);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000002, 691.61);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000009, 68.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000011, 728.58);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000028, 802.0);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000012, 40.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000000, 885.49);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000005, 866.02);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000024, 400.86);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000008, 577.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000011, 837.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000012, 300000015, 816.67);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000013, 523.35);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000033, 394.02);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000015, 300000009, 815.01);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000017, 437.68);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000026, 16.23);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000028, 300000000, 279.41);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000014, 253.98);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000000, 660.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000013, 835.2);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000025, 300000008, 532.77);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000018, 300000016, 661.74);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000014, 300000002, 511.76);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000032, 572.11);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000029, 300000006, 169.73);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000028, 652.12);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000016, 300000005, 594.19);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000006, 300000002, 271.04);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000024, 300000032, 278.69);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000003, 300000032, 994.24);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000017, 289.21);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000008, 300000008, 754.83);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000006, 221.36);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000007, 300000026, 500.4);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000027, 300000022, 635.73);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000030, 300000033, 219.54);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000034, 401.29);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000001, 300000028, 963.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000014, 83.59);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000017, 853.51);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000000, 300000024, 695.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000012, 969.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000032, 300000006, 921.07);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000026, 300000029, 387.31);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000017, 300000034, 189.39);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000010, 803.21);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000011, 300000006, 466.18);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000013, 300000023, 197.16);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000019, 300000019, 651.63);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000009, 300000014, 955.96);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000022, 300000010, 423.37);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000031, 300000022, 898.79);
insert into withdraws_Money (authorId, employeeId, transaction_amount) values (100000004, 300000027, 407.47);



--  Book table ------------------
-- make a Book table, it has bookId, authorId, pricePerDay, bookName, status, type
-- the bookId is auto-incremented ten-digit number, starting from 1000000000.
-- the type is either 'digital' or 'physical'.

CREATE TABLE book (
    bookId INT NOT NULL AUTO_INCREMENT,
    authorId INT NOT NULL,
    pricePerDay float NOT NULL,
    bookName VARCHAR(255) NOT NULL,
    status ENUM('available', 'rented', 'not available') DEFAULT 'available',
    booktype ENUM('digital', 'physical') NOT NULL,

    constraint pk_book primary key (bookId),

    constraint fk_authorId_book
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade
);



-- set the start number for auto increment primary key:
ALTER TABLE book AUTO_INCREMENT = 1000000000;

-- generate 20 books


INSERT INTO book (authorId, pricePerDay, bookName, booktype)
VALUES
    (100000000, 10, 'Lost City, The', 'digital'),
    (100000001, 20, 'Just Like Me (Igualita a Mi)', 'physical'),
    (100000002, 30, 'Alvin and the Chipmunks: Chipwrecked', 'digital'),
    (100000003, 40, 'Comanche Territory (Territorio comanche)', 'physical'),
    (100000004, 50, 'Crew, The', 'physical'),
    (100000005, 60, 'Old Dark House, The', 'physical'),
    (100000006, 70, 'Last Dragon, The', 'physical'),
    (100000007, 80, 'Don', 'physical'),
    (100000008, 90, 'The Book of the Dead I', 'digital'),
    (100000009, 10.10, 'Psycho II', 'physical'),
    (100000000, 1.10, 'Psycho III', 'physical'),
    (100000001, 1.20, 'Psycho I', 'physical'),
    (100000002, 1.30, 'The Book of the Dead II', 'physical'),
    (100000003, 1.40, 'The Book of the Dead III', 'physical'),
    (100000004, 11.50, 'The Book of the Dead IV', 'digital'),
    (100000005, 11.60, 'Walk Like a Man', 'physical'),
    (100000006, 12.70, 'Spirit, The', 'physical'),
    (100000007, 13.80, 'Seems Like Old Times', 'digital'),
    (100000018, 14.90, 'Veronika Voss (Sehnsucht der Veronika Voss, Die)', 'digital'),
    (100000019, 20, 'Grave, The', 'physical'),
    (100000019, 10.10, 'who are you', 'physical'),
    (100000010, 1.10, 'why I am here', 'physical'),
    (100000021, 1.20, 'Moment', 'physical'),
    (100000032, 1.30, 'Amazing thing', 'physical'),
    (100000032, 1.40, 'Amazing', 'physical'),
    (100000024, 11.50, 'Wanna drink?', 'digital'),
    (100000032, 11.60, 'Fantastic Day', 'physical'),
    (100000026, 12.70, 'The world of Elite', 'physical'),
    (100000027, 13.80, 'Mashiro', 'digital'),
    (100000028, 14.90, 'Youkino', 'digital'),
    (100000029, 20, 'GG', 'physical');



--  Manage table ------------------

-- make a Manage table, it has ManageId, employeeId, bookId, action, action_time.
-- the action_time is the current time.

CREATE TABLE manage (
    ManageId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    bookId INT NOT NULL,
    action ENUM('delete', 'update') NOT NULL,
    action_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    pricePerDay float NOT NULL DEFAULT 0,

    constraint pk_manage primary key (ManageId),

    constraint fk_employeeId_manage
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_manage
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- set the start number for auto increment primary key:
ALTER TABLE manage AUTO_INCREMENT = 1;

-- generate 10 manage records

INSERT INTO manage (employeeId, bookId, action, pricePerDay)
VALUES
    (300000000, 1000000000, 'update', 10),
    (300000001, 1000000001, 'update', 20),
    (300000002, 1000000002, 'update', 30),
    (300000003, 1000000003, 'update', 40);

INSERT INTO manage (employeeId, bookId, action)
VALUES
    (300000004, 1000000004, 'delete'),
    (300000001, 1000000005, 'delete'),
    (300000002, 1000000006, 'delete'),
    (300000003, 1000000007, 'delete'),
    (300000004, 1000000008, 'delete'),
    (300000001, 1000000009, 'delete');


insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000006, 'update', 101.98);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000015, 1000000018, 'delete', 120.19);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000010, 1000000001, 'update', 72.12);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000029, 'update', 128.84);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000005, 'update', 51.23);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000006, 1000000027, 'update', 33.2);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000013, 1000000030, 'delete', 99.71);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000015, 'update', 130.23);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000020, 'delete', 98.31);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000003, 'update', 33.02);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000019, 'delete', 148.5);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000008, 1000000001, 'delete', 7.53);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000028, 'delete', 100.44);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000024, 'delete', 38.36);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000019, 1000000011, 'delete', 100.38);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000004, 1000000011, 'update', 83.02);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000021, 1000000003, 'delete', 138.02);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000012, 'update', 16.54);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000005, 'delete', 23.18);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000006, 1000000022, 'update', 78.17);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000008, 'update', 143.01);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000022, 1000000008, 'update', 73.45);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000004, 'update', 19.79);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000026, 'delete', 68.36);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000004, 1000000016, 'delete', 8.51);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000011, 'delete', 18.32);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000027, 1000000008, 'update', 143.81);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000032, 1000000010, 'delete', 75.6);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000003, 1000000007, 'update', 115.14);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000022, 1000000001, 'update', 28.68);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000028, 1000000015, 'update', 103.76);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000012, 'delete', 121.98);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000012, 'update', 29.22);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000008, 'update', 30.87);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000016, 1000000007, 'update', 123.75);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000007, 1000000002, 'update', 64.29);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000007, 1000000017, 'update', 71.34);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000013, 'delete', 94.65);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000000, 'update', 68.78);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000008, 'update', 100.79);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000032, 1000000003, 'delete', 129.65);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000006, 'delete', 147.46);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000016, 'update', 6.95);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000014, 'delete', 13.93);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000001, 'delete', 33.57);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000016, 1000000022, 'delete', 20.73);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000007, 1000000001, 'update', 96.62);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000015, 1000000027, 'update', 88.88);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000019, 'update', 39.11);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000002, 'update', 120.28);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000034, 1000000020, 'update', 137.45);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000018, 1000000014, 'delete', 65.35);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000015, 'delete', 110.08);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000007, 'update', 1.26);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000028, 'delete', 97.7);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000030, 1000000015, 'delete', 47.47);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000032, 1000000008, 'update', 55.89);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000003, 1000000013, 'update', 35.08);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000014, 'update', 82.76);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000002, 'delete', 103.12);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000018, 'update', 13.42);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000019, 1000000008, 'delete', 146.0);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000008, 1000000005, 'update', 22.22);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000001, 'delete', 149.45);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000003, 'update', 67.95);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000028, 'update', 61.69);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000005, 1000000028, 'delete', 22.66);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000022, 'delete', 110.54);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000002, 1000000011, 'delete', 149.4);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000033, 1000000020, 'update', 110.97);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000027, 'delete', 120.4);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000030, 1000000023, 'delete', 44.59);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000018, 1000000026, 'delete', 99.74);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000023, 'update', 38.97);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000026, 1000000001, 'delete', 82.03);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000004, 'delete', 145.3);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000001, 1000000018, 'update', 86.27);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000003, 1000000029, 'update', 134.57);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000027, 'delete', 7.14);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000024, 'delete', 25.08);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000024, 'update', 66.86);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000001, 'delete', 27.74);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000026, 1000000029, 'update', 118.18);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000012, 1000000016, 'update', 51.78);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000033, 1000000019, 'update', 99.5);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000030, 1000000027, 'delete', 93.04);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000028, 1000000021, 'delete', 38.29);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000004, 1000000011, 'update', 29.95);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000019, 1000000004, 'delete', 107.89);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000030, 'delete', 87.09);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000018, 1000000008, 'delete', 12.05);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000006, 1000000027, 'delete', 19.07);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000027, 1000000008, 'update', 63.13);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000009, 1000000016, 'update', 61.58);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000003, 1000000023, 'delete', 149.85);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000004, 'delete', 14.11);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000023, 'delete', 108.09);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000025, 'update', 82.56);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000027, 1000000030, 'update', 30.98);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000032, 1000000008, 'update', 140.69);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000010, 1000000005, 'update', 137.47);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000021, 1000000024, 'delete', 12.89);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000026, 'delete', 46.87);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000025, 'delete', 60.84);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000013, 1000000003, 'delete', 135.57);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000007, 1000000023, 'delete', 78.93);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000010, 1000000012, 'delete', 137.22);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000015, 1000000005, 'update', 60.84);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000006, 1000000023, 'update', 24.56);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000005, 1000000021, 'delete', 67.48);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000002, 'delete', 56.3);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000003, 'delete', 82.66);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000024, 1000000026, 'delete', 67.42);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000026, 'delete', 125.21);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000026, 1000000018, 'delete', 17.98);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000002, 1000000014, 'delete', 45.49);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000018, 1000000018, 'update', 80.74);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000002, 1000000020, 'update', 70.82);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000001, 1000000023, 'update', 129.99);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000000, 1000000026, 'delete', 112.18);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000008, 1000000021, 'delete', 133.77);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000019, 1000000030, 'delete', 6.26);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000015, 1000000021, 'update', 144.32);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000033, 1000000002, 'delete', 78.26);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000025, 1000000008, 'delete', 110.71);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000023, 1000000004, 'update', 100.13);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000033, 1000000005, 'update', 12.18);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000030, 1000000018, 'delete', 120.88);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000003, 1000000027, 'delete', 116.14);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000027, 'update', 12.61);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000005, 1000000012, 'update', 73.34);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000019, 'delete', 2.66);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000011, 1000000018, 'update', 113.8);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000031, 1000000017, 'delete', 82.45);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000020, 1000000004, 'update', 35.41);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000007, 1000000013, 'delete', 19.56);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000030, 1000000023, 'update', 114.01);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000014, 1000000030, 'delete', 41.34);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000022, 1000000024, 'update', 91.76);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000029, 1000000014, 'delete', 18.59);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000028, 1000000021, 'update', 98.37);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000016, 1000000000, 'update', 132.72);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000027, 1000000014, 'update', 132.96);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000026, 1000000006, 'update', 65.92);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000019, 1000000009, 'delete', 82.64);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000027, 'delete', 2.66);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000015, 1000000008, 'update', 71.23);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000034, 1000000005, 'delete', 127.42);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000028, 1000000003, 'update', 135.57);
insert into manage (employeeId, bookId, action, pricePerDay) values (300000017, 1000000010, 'update', 30.14);



--  Support table ------------------

-- make a Support table, it has SupportId, employeeId, customerId, action, action_time.
-- the action_time is the current time. action can be 'member upgrade', 'balance update'.

CREATE TABLE support (
    SupportId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    customerId INT NOT NULL,
    action ENUM('member upgrade', 'balance update') NOT NULL,
    action_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_support primary key (SupportId),

    constraint fk_employeeId_support
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade,
    constraint fk_customerId_support
        foreign key (customerId) references customer(customerId)
        on delete cascade
        on update cascade
);

-- generate 10 support records

INSERT INTO support (employeeId, customerId, action)
VALUES
    (300000000, 200000000, 'member upgrade'),
    (300000001, 200000001, 'balance update'),
    (300000002, 200000002, 'member upgrade'),
    (300000003, 200000003, 'member upgrade'),
    (300000004, 200000004, 'balance update'),
    (300000001, 200000005, 'member upgrade'),
    (300000002, 200000006, 'balance update'),
    (300000003, 200000007, 'member upgrade'),
    (300000004, 200000008, 'member upgrade'),
    (300000001, 200000009, 'balance update');


insert into support (employeeId, customerId, action) values (300000010, 200000034, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000020, 200000017, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000022, 200000039, 'balance update');
insert into support (employeeId, customerId, action) values (300000007, 200000034, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000012, 200000043, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000025, 200000007, 'balance update');
insert into support (employeeId, customerId, action) values (300000029, 200000024, 'balance update');
insert into support (employeeId, customerId, action) values (300000025, 200000031, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000016, 200000038, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000025, 200000036, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000008, 200000021, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000004, 200000006, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000022, 200000042, 'balance update');
insert into support (employeeId, customerId, action) values (300000026, 200000015, 'balance update');
insert into support (employeeId, customerId, action) values (300000024, 200000023, 'balance update');
insert into support (employeeId, customerId, action) values (300000019, 200000011, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000006, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000027, 'balance update');
insert into support (employeeId, customerId, action) values (300000033, 200000028, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000010, 200000045, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000024, 200000008, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000000, 200000024, 'balance update');
insert into support (employeeId, customerId, action) values (300000022, 200000017, 'balance update');
insert into support (employeeId, customerId, action) values (300000005, 200000047, 'balance update');
insert into support (employeeId, customerId, action) values (300000029, 200000045, 'balance update');
insert into support (employeeId, customerId, action) values (300000005, 200000023, 'balance update');
insert into support (employeeId, customerId, action) values (300000022, 200000037, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000013, 200000038, 'balance update');
insert into support (employeeId, customerId, action) values (300000005, 200000035, 'balance update');
insert into support (employeeId, customerId, action) values (300000014, 200000007, 'balance update');
insert into support (employeeId, customerId, action) values (300000026, 200000046, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000034, 200000029, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000014, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000022, 200000018, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000025, 200000034, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000005, 200000030, 'balance update');
insert into support (employeeId, customerId, action) values (300000034, 200000014, 'balance update');
insert into support (employeeId, customerId, action) values (300000012, 200000046, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000031, 200000001, 'balance update');
insert into support (employeeId, customerId, action) values (300000008, 200000029, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000018, 200000020, 'balance update');
insert into support (employeeId, customerId, action) values (300000027, 200000018, 'balance update');
insert into support (employeeId, customerId, action) values (300000015, 200000025, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000018, 200000029, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000018, 200000041, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000013, 200000010, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000014, 200000010, 'balance update');
insert into support (employeeId, customerId, action) values (300000034, 200000011, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000016, 200000014, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000011, 200000033, 'balance update');
insert into support (employeeId, customerId, action) values (300000022, 200000028, 'balance update');
insert into support (employeeId, customerId, action) values (300000021, 200000025, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000034, 200000025, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000010, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000015, 200000015, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000029, 200000014, 'balance update');
insert into support (employeeId, customerId, action) values (300000006, 200000028, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000001, 200000046, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000023, 200000033, 'balance update');
insert into support (employeeId, customerId, action) values (300000004, 200000026, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000016, 200000009, 'balance update');
insert into support (employeeId, customerId, action) values (300000000, 200000038, 'balance update');
insert into support (employeeId, customerId, action) values (300000034, 200000045, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000020, 200000037, 'balance update');
insert into support (employeeId, customerId, action) values (300000006, 200000008, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000013, 200000001, 'balance update');
insert into support (employeeId, customerId, action) values (300000032, 200000023, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000024, 200000004, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000015, 200000014, 'balance update');
insert into support (employeeId, customerId, action) values (300000002, 200000034, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000017, 200000014, 'balance update');
insert into support (employeeId, customerId, action) values (300000000, 200000036, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000001, 200000017, 'balance update');
insert into support (employeeId, customerId, action) values (300000015, 200000039, 'balance update');
insert into support (employeeId, customerId, action) values (300000030, 200000030, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000015, 200000031, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000004, 200000017, 'balance update');
insert into support (employeeId, customerId, action) values (300000032, 200000046, 'balance update');
insert into support (employeeId, customerId, action) values (300000023, 200000000, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000027, 200000025, 'balance update');
insert into support (employeeId, customerId, action) values (300000001, 200000047, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000004, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000019, 200000030, 'balance update');
insert into support (employeeId, customerId, action) values (300000030, 200000038, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000045, 'balance update');
insert into support (employeeId, customerId, action) values (300000004, 200000013, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000032, 200000005, 'balance update');
insert into support (employeeId, customerId, action) values (300000001, 200000019, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000013, 200000029, 'balance update');
insert into support (employeeId, customerId, action) values (300000002, 200000030, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000003, 200000030, 'balance update');
insert into support (employeeId, customerId, action) values (300000008, 200000031, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000021, 200000041, 'balance update');
insert into support (employeeId, customerId, action) values (300000026, 200000036, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000028, 200000025, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000007, 200000019, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000010, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000016, 200000000, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000007, 200000043, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000032, 200000024, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000029, 200000001, 'balance update');
insert into support (employeeId, customerId, action) values (300000018, 200000015, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000011, 200000041, 'balance update');
insert into support (employeeId, customerId, action) values (300000019, 200000030, 'balance update');
insert into support (employeeId, customerId, action) values (300000008, 200000014, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000006, 200000011, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000012, 200000016, 'balance update');
insert into support (employeeId, customerId, action) values (300000028, 200000002, 'balance update');
insert into support (employeeId, customerId, action) values (300000015, 200000004, 'balance update');
insert into support (employeeId, customerId, action) values (300000020, 200000020, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000019, 200000045, 'balance update');
insert into support (employeeId, customerId, action) values (300000015, 200000033, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000033, 'balance update');
insert into support (employeeId, customerId, action) values (300000022, 200000014, 'balance update');
insert into support (employeeId, customerId, action) values (300000030, 200000021, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000046, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000030, 200000006, 'balance update');
insert into support (employeeId, customerId, action) values (300000014, 200000001, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000031, 200000038, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000000, 200000044, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000031, 200000033, 'balance update');
insert into support (employeeId, customerId, action) values (300000026, 200000023, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000019, 200000021, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000020, 'balance update');
insert into support (employeeId, customerId, action) values (300000014, 200000001, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000028, 200000008, 'balance update');
insert into support (employeeId, customerId, action) values (300000017, 200000009, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000004, 200000015, 'balance update');
insert into support (employeeId, customerId, action) values (300000031, 200000002, 'balance update');
insert into support (employeeId, customerId, action) values (300000001, 200000031, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000007, 200000000, 'balance update');
insert into support (employeeId, customerId, action) values (300000003, 200000022, 'balance update');
insert into support (employeeId, customerId, action) values (300000034, 200000011, 'balance update');
insert into support (employeeId, customerId, action) values (300000009, 200000013, 'balance update');
insert into support (employeeId, customerId, action) values (300000023, 200000020, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000029, 200000029, 'balance update');
insert into support (employeeId, customerId, action) values (300000000, 200000047, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000028, 200000004, 'balance update');
insert into support (employeeId, customerId, action) values (300000016, 200000008, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000031, 200000003, 'balance update');
insert into support (employeeId, customerId, action) values (300000019, 200000020, 'balance update');
insert into support (employeeId, customerId, action) values (300000018, 200000013, 'balance update');
insert into support (employeeId, customerId, action) values (300000007, 200000035, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000034, 200000007, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000004, 200000010, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000015, 200000011, 'balance update');
insert into support (employeeId, customerId, action) values (300000023, 200000013, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000011, 200000029, 'member upgrade');
insert into support (employeeId, customerId, action) values (300000023, 200000015, 'balance update');
insert into support (employeeId, customerId, action) values (300000005, 200000045, 'balance update');




--  Reserve table ------------------

-- make a Reserve table, it has reserveId, customerId, bookId, return_time, borrow_time.
-- the borrow_time is the current time.
-- and totalPrice can be calculated by (return_time - borrow_time) * pricePerDay.

CREATE TABLE reserve (
    reserveId INT NOT NULL AUTO_INCREMENT,
    customerId INT NOT NULL,
    bookId INT NOT NULL,
    return_time TIMESTAMP NOT NULL,
    borrow_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_reserve primary key (reserveId),

    constraint fk_customerId_reserve
        foreign key (customerId) references customer(customerId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_reserve
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 reserve records

INSERT INTO reserve (customerId, bookId, return_time)
VALUES
    (200000000, 1000000000, '2018-11-11 13:59:59'),
    (200000001, 1000000001, '2029-12-21 23:41:59'),
    (200000002, 1000000002, '2032-10-01 21:52:59'),
    (200000003, 1000000003, '2023-11-11 22:53:59'),
    (200000004, 1000000004, '2023-6-21 12:54:59'),
    (200000005, 1000000005, '2023-2-10 01:55:59'),
    (200000006, 1000000006, '2023-5-11 02:56:59'),
    (200000007, 1000000007, '2023-2-12 05:57:59'),
    (200000008, 1000000008, '2023-8-13 08:58:59'),
    (200000009, 1000000009, '2023-10-01 09:59:59');


insert into reserve (customerId, bookId, return_time) values (200000027, 1000000002, '2024-07-06 12:23:10');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000020, '2023-08-22 01:43:15');
insert into reserve (customerId, bookId, return_time) values (200000035, 1000000005, '2026-09-07 15:57:03');
insert into reserve (customerId, bookId, return_time) values (200000041, 1000000003, '2026-01-15 21:10:08');
insert into reserve (customerId, bookId, return_time) values (200000001, 1000000028, '2025-02-21 15:50:57');
insert into reserve (customerId, bookId, return_time) values (200000016, 1000000028, '2023-04-22 20:16:16');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000025, '2023-10-25 18:56:27');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000000, '2024-03-08 03:30:00');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000003, '2024-02-14 06:49:49');
insert into reserve (customerId, bookId, return_time) values (200000001, 1000000028, '2024-10-10 00:53:58');
insert into reserve (customerId, bookId, return_time) values (200000028, 1000000007, '2023-06-15 09:05:16');
insert into reserve (customerId, bookId, return_time) values (200000011, 1000000018, '2024-06-20 22:38:45');
insert into reserve (customerId, bookId, return_time) values (200000033, 1000000007, '2023-11-27 18:49:31');
insert into reserve (customerId, bookId, return_time) values (200000013, 1000000008, '2023-12-30 21:48:25');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000004, '2026-09-01 13:40:47');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000008, '2025-03-05 05:31:08');
insert into reserve (customerId, bookId, return_time) values (200000033, 1000000007, '2023-07-04 21:18:36');
insert into reserve (customerId, bookId, return_time) values (200000030, 1000000017, '2024-04-17 19:15:02');
insert into reserve (customerId, bookId, return_time) values (200000031, 1000000012, '2025-07-16 23:10:26');
insert into reserve (customerId, bookId, return_time) values (200000043, 1000000030, '2023-06-08 04:06:12');
insert into reserve (customerId, bookId, return_time) values (200000010, 1000000001, '2026-01-23 20:50:07');
insert into reserve (customerId, bookId, return_time) values (200000006, 1000000017, '2023-04-07 22:29:19');
insert into reserve (customerId, bookId, return_time) values (200000037, 1000000018, '2026-03-07 16:23:33');
insert into reserve (customerId, bookId, return_time) values (200000036, 1000000022, '2025-08-12 22:23:14');
insert into reserve (customerId, bookId, return_time) values (200000043, 1000000027, '2023-04-18 01:37:56');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000006, '2025-11-20 16:57:05');
insert into reserve (customerId, bookId, return_time) values (200000023, 1000000016, '2025-10-04 05:49:05');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000011, '2025-05-18 00:58:20');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000009, '2024-09-04 05:56:32');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000024, '2025-11-04 07:45:27');
insert into reserve (customerId, bookId, return_time) values (200000042, 1000000019, '2025-11-09 03:08:00');
insert into reserve (customerId, bookId, return_time) values (200000022, 1000000029, '2025-06-06 14:21:13');
insert into reserve (customerId, bookId, return_time) values (200000026, 1000000022, '2025-08-16 21:00:43');
insert into reserve (customerId, bookId, return_time) values (200000012, 1000000000, '2025-07-11 22:29:56');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000008, '2023-09-10 16:26:51');
insert into reserve (customerId, bookId, return_time) values (200000026, 1000000019, '2024-07-12 06:49:25');
insert into reserve (customerId, bookId, return_time) values (200000026, 1000000018, '2024-11-12 13:11:45');
insert into reserve (customerId, bookId, return_time) values (200000003, 1000000010, '2024-03-22 01:01:20');
insert into reserve (customerId, bookId, return_time) values (200000022, 1000000014, '2024-11-13 19:49:18');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000000, '2026-12-24 17:04:17');
insert into reserve (customerId, bookId, return_time) values (200000031, 1000000030, '2023-10-07 02:12:04');
insert into reserve (customerId, bookId, return_time) values (200000028, 1000000016, '2025-05-12 05:15:18');
insert into reserve (customerId, bookId, return_time) values (200000026, 1000000023, '2026-07-01 01:56:50');
insert into reserve (customerId, bookId, return_time) values (200000007, 1000000022, '2025-03-07 17:42:05');
insert into reserve (customerId, bookId, return_time) values (200000045, 1000000000, '2024-05-16 01:36:15');
insert into reserve (customerId, bookId, return_time) values (200000044, 1000000023, '2026-07-05 14:58:45');
insert into reserve (customerId, bookId, return_time) values (200000016, 1000000023, '2023-01-13 13:07:35');
insert into reserve (customerId, bookId, return_time) values (200000023, 1000000012, '2024-10-04 12:19:41');
insert into reserve (customerId, bookId, return_time) values (200000007, 1000000008, '2023-02-25 17:08:17');
insert into reserve (customerId, bookId, return_time) values (200000018, 1000000001, '2025-05-17 08:16:14');
insert into reserve (customerId, bookId, return_time) values (200000003, 1000000020, '2026-11-07 19:26:20');
insert into reserve (customerId, bookId, return_time) values (200000024, 1000000006, '2026-11-22 04:00:33');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000026, '2024-05-29 02:04:23');
insert into reserve (customerId, bookId, return_time) values (200000017, 1000000002, '2026-06-08 21:36:42');
insert into reserve (customerId, bookId, return_time) values (200000031, 1000000022, '2023-02-04 08:22:22');
insert into reserve (customerId, bookId, return_time) values (200000041, 1000000010, '2026-09-06 18:07:27');
insert into reserve (customerId, bookId, return_time) values (200000015, 1000000029, '2025-06-11 21:49:57');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000019, '2024-11-02 08:22:59');
insert into reserve (customerId, bookId, return_time) values (200000012, 1000000021, '2024-08-12 20:27:56');
insert into reserve (customerId, bookId, return_time) values (200000022, 1000000025, '2023-03-06 16:44:02');
insert into reserve (customerId, bookId, return_time) values (200000001, 1000000024, '2023-01-04 19:49:06');
insert into reserve (customerId, bookId, return_time) values (200000040, 1000000014, '2023-03-19 07:59:22');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000007, '2025-07-11 02:44:40');
insert into reserve (customerId, bookId, return_time) values (200000041, 1000000030, '2023-04-11 04:40:31');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000014, '2025-10-12 03:56:25');
insert into reserve (customerId, bookId, return_time) values (200000004, 1000000026, '2024-05-25 05:21:54');
insert into reserve (customerId, bookId, return_time) values (200000009, 1000000011, '2025-08-11 00:41:22');
insert into reserve (customerId, bookId, return_time) values (200000008, 1000000023, '2023-06-01 07:23:22');
insert into reserve (customerId, bookId, return_time) values (200000019, 1000000026, '2026-10-05 07:18:27');
insert into reserve (customerId, bookId, return_time) values (200000046, 1000000019, '2026-11-19 19:52:08');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000000, '2024-05-09 18:14:54');
insert into reserve (customerId, bookId, return_time) values (200000042, 1000000004, '2025-08-13 10:11:10');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000020, '2026-08-14 13:46:34');
insert into reserve (customerId, bookId, return_time) values (200000002, 1000000029, '2025-07-11 22:48:19');
insert into reserve (customerId, bookId, return_time) values (200000035, 1000000025, '2025-07-15 05:49:54');
insert into reserve (customerId, bookId, return_time) values (200000034, 1000000006, '2026-07-21 02:07:00');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000025, '2025-06-14 22:48:37');
insert into reserve (customerId, bookId, return_time) values (200000046, 1000000024, '2024-05-10 17:01:38');
insert into reserve (customerId, bookId, return_time) values (200000032, 1000000016, '2024-03-16 01:31:33');
insert into reserve (customerId, bookId, return_time) values (200000001, 1000000030, '2025-09-25 12:52:33');
insert into reserve (customerId, bookId, return_time) values (200000019, 1000000013, '2025-09-06 03:47:24');
insert into reserve (customerId, bookId, return_time) values (200000002, 1000000003, '2026-09-29 06:20:05');
insert into reserve (customerId, bookId, return_time) values (200000024, 1000000001, '2026-01-18 08:18:18');
insert into reserve (customerId, bookId, return_time) values (200000034, 1000000021, '2026-07-19 04:57:58');
insert into reserve (customerId, bookId, return_time) values (200000041, 1000000004, '2024-07-06 03:06:48');
insert into reserve (customerId, bookId, return_time) values (200000014, 1000000012, '2023-12-23 16:55:42');
insert into reserve (customerId, bookId, return_time) values (200000036, 1000000011, '2025-11-12 12:46:12');
insert into reserve (customerId, bookId, return_time) values (200000030, 1000000023, '2025-05-24 09:46:58');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000030, '2025-04-20 23:48:58');
insert into reserve (customerId, bookId, return_time) values (200000043, 1000000014, '2026-02-28 22:19:27');
insert into reserve (customerId, bookId, return_time) values (200000033, 1000000027, '2023-06-17 20:34:02');
insert into reserve (customerId, bookId, return_time) values (200000021, 1000000022, '2026-07-30 18:21:53');
insert into reserve (customerId, bookId, return_time) values (200000008, 1000000023, '2023-02-02 14:37:12');
insert into reserve (customerId, bookId, return_time) values (200000047, 1000000004, '2026-06-05 07:22:43');
insert into reserve (customerId, bookId, return_time) values (200000044, 1000000027, '2024-05-28 03:14:03');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000017, '2025-12-12 03:37:14');
insert into reserve (customerId, bookId, return_time) values (200000007, 1000000020, '2025-08-31 02:14:46');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000000, '2023-03-11 01:32:31');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000026, '2026-05-10 14:01:30');
insert into reserve (customerId, bookId, return_time) values (200000008, 1000000017, '2025-05-22 06:31:14');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000001, '2025-10-11 14:36:18');
insert into reserve (customerId, bookId, return_time) values (200000009, 1000000011, '2023-02-17 07:50:47');
insert into reserve (customerId, bookId, return_time) values (200000035, 1000000030, '2025-03-11 05:51:44');
insert into reserve (customerId, bookId, return_time) values (200000029, 1000000010, '2025-09-22 18:28:01');
insert into reserve (customerId, bookId, return_time) values (200000006, 1000000019, '2024-02-23 12:56:30');
insert into reserve (customerId, bookId, return_time) values (200000046, 1000000017, '2023-02-11 04:59:57');
insert into reserve (customerId, bookId, return_time) values (200000011, 1000000015, '2026-06-17 04:41:48');
insert into reserve (customerId, bookId, return_time) values (200000038, 1000000030, '2026-09-08 12:30:46');
insert into reserve (customerId, bookId, return_time) values (200000012, 1000000024, '2024-06-15 15:10:25');
insert into reserve (customerId, bookId, return_time) values (200000016, 1000000008, '2025-04-28 15:43:03');
insert into reserve (customerId, bookId, return_time) values (200000028, 1000000027, '2023-08-19 06:55:45');
insert into reserve (customerId, bookId, return_time) values (200000037, 1000000017, '2024-02-22 21:46:47');
insert into reserve (customerId, bookId, return_time) values (200000000, 1000000025, '2026-12-09 08:54:58');
insert into reserve (customerId, bookId, return_time) values (200000024, 1000000019, '2023-12-26 04:19:23');
insert into reserve (customerId, bookId, return_time) values (200000042, 1000000018, '2023-06-26 08:30:31');
insert into reserve (customerId, bookId, return_time) values (200000023, 1000000001, '2023-08-22 16:51:31');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000026, '2024-07-15 23:14:56');
insert into reserve (customerId, bookId, return_time) values (200000003, 1000000012, '2023-03-17 14:20:12');
insert into reserve (customerId, bookId, return_time) values (200000011, 1000000011, '2026-12-06 04:01:35');
insert into reserve (customerId, bookId, return_time) values (200000031, 1000000015, '2025-12-15 19:36:31');
insert into reserve (customerId, bookId, return_time) values (200000039, 1000000001, '2023-11-16 21:22:47');
insert into reserve (customerId, bookId, return_time) values (200000017, 1000000014, '2025-11-15 23:31:17');
insert into reserve (customerId, bookId, return_time) values (200000020, 1000000010, '2023-07-29 18:07:13');
insert into reserve (customerId, bookId, return_time) values (200000034, 1000000024, '2024-09-25 20:27:33');
insert into reserve (customerId, bookId, return_time) values (200000024, 1000000013, '2023-02-19 21:51:33');
insert into reserve (customerId, bookId, return_time) values (200000028, 1000000012, '2025-10-08 22:33:14');
insert into reserve (customerId, bookId, return_time) values (200000020, 1000000030, '2024-03-23 14:48:42');
insert into reserve (customerId, bookId, return_time) values (200000041, 1000000005, '2026-02-26 05:29:22');
insert into reserve (customerId, bookId, return_time) values (200000025, 1000000011, '2024-10-22 09:59:58');
insert into reserve (customerId, bookId, return_time) values (200000033, 1000000023, '2024-11-08 02:00:03');
insert into reserve (customerId, bookId, return_time) values (200000016, 1000000014, '2025-08-10 16:37:46');
insert into reserve (customerId, bookId, return_time) values (200000047, 1000000006, '2023-09-22 08:55:48');
insert into reserve (customerId, bookId, return_time) values (200000021, 1000000005, '2023-11-21 15:36:28');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000002, '2024-08-10 11:44:16');
insert into reserve (customerId, bookId, return_time) values (200000031, 1000000007, '2026-05-11 12:35:27');
insert into reserve (customerId, bookId, return_time) values (200000018, 1000000017, '2026-06-01 04:46:35');
insert into reserve (customerId, bookId, return_time) values (200000003, 1000000007, '2024-06-01 18:04:42');
insert into reserve (customerId, bookId, return_time) values (200000009, 1000000004, '2023-05-29 20:23:40');
insert into reserve (customerId, bookId, return_time) values (200000027, 1000000020, '2023-12-29 10:32:41');
insert into reserve (customerId, bookId, return_time) values (200000040, 1000000016, '2023-04-02 18:21:18');
insert into reserve (customerId, bookId, return_time) values (200000021, 1000000004, '2023-07-04 10:26:10');
insert into reserve (customerId, bookId, return_time) values (200000015, 1000000006, '2026-03-10 12:27:30');
insert into reserve (customerId, bookId, return_time) values (200000005, 1000000008, '2026-04-28 21:24:34');
insert into reserve (customerId, bookId, return_time) values (200000008, 1000000005, '2025-06-23 06:20:54');
insert into reserve (customerId, bookId, return_time) values (200000042, 1000000006, '2025-11-02 16:21:37');
insert into reserve (customerId, bookId, return_time) values (200000044, 1000000028, '2025-03-26 19:39:53');
insert into reserve (customerId, bookId, return_time) values (200000046, 1000000014, '2026-01-05 20:08:22');
insert into reserve (customerId, bookId, return_time) values (200000033, 1000000009, '2023-10-25 04:35:41');
insert into reserve (customerId, bookId, return_time) values (200000030, 1000000023, '2024-12-25 15:31:25');
insert into reserve (customerId, bookId, return_time) values (200000003, 1000000026, '2026-11-27 11:13:50');


-- Read table ------------------

-- make a Read table, it has readId, authorId, bookId, readDate.
-- the readDate is the current time.

CREATE TABLE readReport (
    readId INT NOT NULL AUTO_INCREMENT,
    authorId INT NOT NULL,
    bookId INT,
    readDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_read primary key (readId),

    constraint fk_authorId_read
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade,
    constraint fk_bookId_read
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 read records

INSERT INTO readReport (authorId, bookId)
VALUES
    (100000000, 1000000000),
    (100000001, 1000000001),
    (100000002, 1000000002),
    (100000003, 1000000003),
    (100000004, 1000000004),
    (100000005, 1000000005),
    (100000006, 1000000006),
    (100000007, 1000000007),
    (100000007, 1000000008),
    (100000007, 1000000009),
    (100000001, 1000000009);


insert into readReport (authorId, bookId) values (100000006, 1000000018);
insert into readReport (authorId, bookId) values (100000025, 1000000030);
insert into readReport (authorId, bookId) values (100000028, 1000000023);
insert into readReport (authorId, bookId) values (100000025, 1000000029);
insert into readReport (authorId, bookId) values (100000027, 1000000013);
insert into readReport (authorId, bookId) values (100000020, 1000000005);
insert into readReport (authorId, bookId) values (100000014, 1000000004);
insert into readReport (authorId, bookId) values (100000017, 1000000028);
insert into readReport (authorId, bookId) values (100000024, 1000000006);
insert into readReport (authorId, bookId) values (100000018, 1000000010);
insert into readReport (authorId, bookId) values (100000019, 1000000009);
insert into readReport (authorId, bookId) values (100000005, 1000000016);
insert into readReport (authorId, bookId) values (100000029, 1000000019);
insert into readReport (authorId, bookId) values (100000029, 1000000008);
insert into readReport (authorId, bookId) values (100000013, 1000000024);
insert into readReport (authorId, bookId) values (100000002, 1000000016);
insert into readReport (authorId, bookId) values (100000025, 1000000000);
insert into readReport (authorId, bookId) values (100000009, 1000000020);
insert into readReport (authorId, bookId) values (100000009, 1000000017);
insert into readReport (authorId, bookId) values (100000027, 1000000010);
insert into readReport (authorId, bookId) values (100000016, 1000000018);
insert into readReport (authorId, bookId) values (100000026, 1000000023);
insert into readReport (authorId, bookId) values (100000017, 1000000001);
insert into readReport (authorId, bookId) values (100000005, 1000000029);
insert into readReport (authorId, bookId) values (100000005, 1000000003);
insert into readReport (authorId, bookId) values (100000032, 1000000029);
insert into readReport (authorId, bookId) values (100000014, 1000000009);
insert into readReport (authorId, bookId) values (100000018, 1000000009);
insert into readReport (authorId, bookId) values (100000024, 1000000007);
insert into readReport (authorId, bookId) values (100000001, 1000000017);
insert into readReport (authorId, bookId) values (100000020, 1000000003);
insert into readReport (authorId, bookId) values (100000001, 1000000014);
insert into readReport (authorId, bookId) values (100000008, 1000000030);
insert into readReport (authorId, bookId) values (100000011, 1000000023);
insert into readReport (authorId, bookId) values (100000005, 1000000024);
insert into readReport (authorId, bookId) values (100000017, 1000000012);
insert into readReport (authorId, bookId) values (100000006, 1000000002);
insert into readReport (authorId, bookId) values (100000016, 1000000009);
insert into readReport (authorId, bookId) values (100000006, 1000000012);
insert into readReport (authorId, bookId) values (100000006, 1000000029);
insert into readReport (authorId, bookId) values (100000024, 1000000001);
insert into readReport (authorId, bookId) values (100000027, 1000000021);
insert into readReport (authorId, bookId) values (100000016, 1000000019);
insert into readReport (authorId, bookId) values (100000014, 1000000006);
insert into readReport (authorId, bookId) values (100000009, 1000000001);
insert into readReport (authorId, bookId) values (100000010, 1000000023);
insert into readReport (authorId, bookId) values (100000016, 1000000020);
insert into readReport (authorId, bookId) values (100000001, 1000000001);
insert into readReport (authorId, bookId) values (100000021, 1000000030);
insert into readReport (authorId, bookId) values (100000023, 1000000004);
insert into readReport (authorId, bookId) values (100000018, 1000000020);
insert into readReport (authorId, bookId) values (100000027, 1000000006);
insert into readReport (authorId, bookId) values (100000015, 1000000014);
insert into readReport (authorId, bookId) values (100000016, 1000000002);
insert into readReport (authorId, bookId) values (100000008, 1000000021);
insert into readReport (authorId, bookId) values (100000001, 1000000029);
insert into readReport (authorId, bookId) values (100000012, 1000000015);
insert into readReport (authorId, bookId) values (100000027, 1000000010);
insert into readReport (authorId, bookId) values (100000011, 1000000015);
insert into readReport (authorId, bookId) values (100000023, 1000000011);
insert into readReport (authorId, bookId) values (100000003, 1000000023);
insert into readReport (authorId, bookId) values (100000032, 1000000010);
insert into readReport (authorId, bookId) values (100000005, 1000000004);
insert into readReport (authorId, bookId) values (100000003, 1000000005);
insert into readReport (authorId, bookId) values (100000006, 1000000012);
insert into readReport (authorId, bookId) values (100000005, 1000000015);
insert into readReport (authorId, bookId) values (100000019, 1000000024);
insert into readReport (authorId, bookId) values (100000021, 1000000028);
insert into readReport (authorId, bookId) values (100000018, 1000000026);
insert into readReport (authorId, bookId) values (100000002, 1000000000);
insert into readReport (authorId, bookId) values (100000010, 1000000025);
insert into readReport (authorId, bookId) values (100000020, 1000000002);
insert into readReport (authorId, bookId) values (100000029, 1000000029);
insert into readReport (authorId, bookId) values (100000020, 1000000005);
insert into readReport (authorId, bookId) values (100000016, 1000000013);
insert into readReport (authorId, bookId) values (100000007, 1000000023);
insert into readReport (authorId, bookId) values (100000009, 1000000000);
insert into readReport (authorId, bookId) values (100000006, 1000000004);
insert into readReport (authorId, bookId) values (100000009, 1000000029);
insert into readReport (authorId, bookId) values (100000007, 1000000007);
insert into readReport (authorId, bookId) values (100000008, 1000000018);
insert into readReport (authorId, bookId) values (100000002, 1000000011);
insert into readReport (authorId, bookId) values (100000008, 1000000016);
insert into readReport (authorId, bookId) values (100000005, 1000000027);
insert into readReport (authorId, bookId) values (100000020, 1000000001);
insert into readReport (authorId, bookId) values (100000013, 1000000009);
insert into readReport (authorId, bookId) values (100000009, 1000000023);
insert into readReport (authorId, bookId) values (100000030, 1000000010);
insert into readReport (authorId, bookId) values (100000003, 1000000027);
insert into readReport (authorId, bookId) values (100000002, 1000000015);
insert into readReport (authorId, bookId) values (100000031, 1000000018);
insert into readReport (authorId, bookId) values (100000014, 1000000020);
insert into readReport (authorId, bookId) values (100000018, 1000000005);
insert into readReport (authorId, bookId) values (100000011, 1000000019);
insert into readReport (authorId, bookId) values (100000027, 1000000026);
insert into readReport (authorId, bookId) values (100000002, 1000000003);
insert into readReport (authorId, bookId) values (100000019, 1000000004);
insert into readReport (authorId, bookId) values (100000030, 1000000008);
insert into readReport (authorId, bookId) values (100000013, 1000000030);
insert into readReport (authorId, bookId) values (100000019, 1000000004);
insert into readReport (authorId, bookId) values (100000005, 1000000030);
insert into readReport (authorId, bookId) values (100000022, 1000000024);
insert into readReport (authorId, bookId) values (100000025, 1000000002);
insert into readReport (authorId, bookId) values (100000017, 1000000028);
insert into readReport (authorId, bookId) values (100000029, 1000000006);
insert into readReport (authorId, bookId) values (100000023, 1000000002);
insert into readReport (authorId, bookId) values (100000006, 1000000002);
insert into readReport (authorId, bookId) values (100000015, 1000000014);
insert into readReport (authorId, bookId) values (100000005, 1000000025);
insert into readReport (authorId, bookId) values (100000010, 1000000018);
insert into readReport (authorId, bookId) values (100000021, 1000000024);
insert into readReport (authorId, bookId) values (100000001, 1000000016);
insert into readReport (authorId, bookId) values (100000022, 1000000008);
insert into readReport (authorId, bookId) values (100000014, 1000000008);
insert into readReport (authorId, bookId) values (100000021, 1000000026);
insert into readReport (authorId, bookId) values (100000028, 1000000010);
insert into readReport (authorId, bookId) values (100000030, 1000000011);
insert into readReport (authorId, bookId) values (100000011, 1000000023);
insert into readReport (authorId, bookId) values (100000027, 1000000011);
insert into readReport (authorId, bookId) values (100000009, 1000000015);
insert into readReport (authorId, bookId) values (100000001, 1000000029);
insert into readReport (authorId, bookId) values (100000008, 1000000025);
insert into readReport (authorId, bookId) values (100000013, 1000000001);
insert into readReport (authorId, bookId) values (100000022, 1000000021);
insert into readReport (authorId, bookId) values (100000006, 1000000030);
insert into readReport (authorId, bookId) values (100000000, 1000000010);
insert into readReport (authorId, bookId) values (100000026, 1000000001);
insert into readReport (authorId, bookId) values (100000011, 1000000024);
insert into readReport (authorId, bookId) values (100000025, 1000000021);
insert into readReport (authorId, bookId) values (100000021, 1000000005);
insert into readReport (authorId, bookId) values (100000016, 1000000014);
insert into readReport (authorId, bookId) values (100000016, 1000000019);
insert into readReport (authorId, bookId) values (100000018, 1000000010);
insert into readReport (authorId, bookId) values (100000019, 1000000013);
insert into readReport (authorId, bookId) values (100000025, 1000000000);
insert into readReport (authorId, bookId) values (100000018, 1000000029);
insert into readReport (authorId, bookId) values (100000032, 1000000024);
insert into readReport (authorId, bookId) values (100000028, 1000000014);
insert into readReport (authorId, bookId) values (100000024, 1000000024);
insert into readReport (authorId, bookId) values (100000031, 1000000006);
insert into readReport (authorId, bookId) values (100000012, 1000000022);
insert into readReport (authorId, bookId) values (100000005, 1000000000);
insert into readReport (authorId, bookId) values (100000010, 1000000016);
insert into readReport (authorId, bookId) values (100000028, 1000000026);
insert into readReport (authorId, bookId) values (100000002, 1000000030);
insert into readReport (authorId, bookId) values (100000017, 1000000028);
insert into readReport (authorId, bookId) values (100000008, 1000000023);
insert into readReport (authorId, bookId) values (100000031, 1000000003);
insert into readReport (authorId, bookId) values (100000011, 1000000001);
insert into readReport (authorId, bookId) values (100000005, 1000000007);




-- generate a read record without bookId, since it is possible that a report has no book.

INSERT INTO readReport (authorId)
VALUES
    (100000008);

--  Report table ------------------

-- make a Report table, it has reportId, employeeId, reportStartDate, type, reportEndDate, generateTime.
-- type can be 'Profit_Report', 'Genre_Report', 'Book_Report'.

CREATE TABLE report (
    reportId INT NOT NULL AUTO_INCREMENT,
    employeeId INT NOT NULL,
    reportStartDate TIMESTAMP NOT NULL,
    type ENUM('Profit_Report', 'Genre_Report', 'Book_Report') NOT NULL,
    reportEndDate TIMESTAMP NOT NULL,
    generateTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    constraint pk_report primary key (reportId),

    constraint fk_employeeId_report
        foreign key (employeeId) references employee(employeeId)
        on delete cascade
        on update cascade


);


-- generate 10 report records

INSERT INTO report (employeeId, reportStartDate, type, reportEndDate)
VALUES
    (300000000, '2019-11-11 13:59:59', 'Profit_Report', '2021-11-11 13:59:59'),
    (300000001, '2020-12-21 23:41:59', 'Genre_Report', '2021-11-19 23:41:59'),
    (300000002, '2012-10-01 21:52:59', 'Book_Report', '2021-10-01 21:52:59'),
    (300000003, '2020-10-11 22:53:59', 'Profit_Report', '2021-11-11 22:53:59'),
    (300000004, '2020-6-21 12:54:59', 'Genre_Report', '2021-9-21 12:54:59'),
    (300000001, '2020-2-10 01:55:59', 'Book_Report', '2021-3-10 01:55:59'),
    (300000002, '2020-5-11 02:56:59', 'Profit_Report', '2021-5-15 02:56:59'),
    (300000003, '2020-2-12 05:57:59', 'Genre_Report', '2021-5-12 05:57:59'),
    (300000004, '2020-8-13 08:58:59', 'Book_Report', '2021-10-13 08:58:59'),
    (300000001, '2020-10-01 09:59:59', 'Profit_Report', '2021-11-01 09:59:59');


insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-02-26 04:08:39', 'Profit_Report', '2022-02-10 08:40:21');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000027, '2022-03-25 13:28:23', 'Genre_Report', '2022-11-12 01:20:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000015, '2022-07-22 12:52:29', 'Genre_Report', '2022-04-06 03:16:15');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000006, '2022-06-07 05:03:39', 'Profit_Report', '2022-07-23 19:24:32');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-08-02 10:30:02', 'Book_Report', '2022-01-12 13:01:44');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000006, '2022-01-18 05:00:54', 'Genre_Report', '2022-01-03 04:58:33');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000019, '2022-05-09 15:27:04', 'Book_Report', '2022-11-07 17:33:18');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000003, '2022-09-15 21:42:10', 'Genre_Report', '2022-06-19 14:30:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000004, '2022-05-21 16:51:53', 'Book_Report', '2022-05-09 10:29:32');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000021, '2022-01-01 14:03:38', 'Genre_Report', '2022-06-07 05:02:28');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000014, '2022-05-02 06:29:03', 'Book_Report', '2022-10-10 23:39:08');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000011, '2022-06-28 13:56:03', 'Genre_Report', '2022-09-15 17:14:19');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-09-22 01:06:43', 'Book_Report', '2022-01-28 07:56:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000015, '2022-02-27 23:47:56', 'Book_Report', '2022-07-30 06:53:42');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2022-03-14 04:06:46', 'Genre_Report', '2021-12-20 07:12:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000026, '2022-02-15 07:20:44', 'Book_Report', '2022-08-06 02:12:37');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-07-16 16:50:34', 'Profit_Report', '2022-04-26 02:48:49');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-07-21 12:44:59', 'Book_Report', '2022-06-27 07:03:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000028, '2022-09-22 04:46:34', 'Genre_Report', '2022-06-24 23:28:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-01-01 16:44:35', 'Genre_Report', '2022-10-17 22:37:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000008, '2022-07-03 17:13:19', 'Book_Report', '2021-12-16 03:59:26');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000027, '2022-11-20 05:27:11', 'Profit_Report', '2022-07-30 05:09:22');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000033, '2022-08-13 09:51:34', 'Book_Report', '2022-04-02 06:18:01');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000003, '2022-03-31 12:02:03', 'Book_Report', '2022-08-30 09:37:09');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000027, '2022-10-06 05:42:24', 'Profit_Report', '2022-10-17 04:15:41');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-11-07 19:25:03', 'Profit_Report', '2022-01-19 03:38:16');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-12-04 16:57:33', 'Book_Report', '2022-02-02 06:29:21');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2022-09-24 03:21:26', 'Book_Report', '2022-11-09 16:01:32');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-05-12 16:59:39', 'Profit_Report', '2022-09-30 14:52:08');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000006, '2022-11-16 01:32:17', 'Genre_Report', '2022-02-16 02:35:36');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000023, '2022-11-24 01:42:01', 'Book_Report', '2022-01-31 12:25:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-04-27 01:33:34', 'Genre_Report', '2022-01-20 06:39:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2021-12-26 13:58:55', 'Genre_Report', '2022-11-30 17:48:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-07-12 08:29:22', 'Book_Report', '2022-09-25 07:01:24');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000032, '2022-03-15 16:21:09', 'Book_Report', '2022-10-04 12:18:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000005, '2022-03-29 08:32:33', 'Profit_Report', '2022-05-14 18:55:40');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000026, '2022-02-14 17:39:50', 'Genre_Report', '2022-09-26 22:24:26');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000005, '2022-03-14 15:30:09', 'Genre_Report', '2022-11-07 04:58:04');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-10-25 08:42:47', 'Profit_Report', '2022-12-02 03:38:49');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000008, '2021-12-31 03:26:34', 'Genre_Report', '2022-01-15 15:23:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2022-11-21 03:56:25', 'Genre_Report', '2022-10-01 08:37:48');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000000, '2022-08-28 01:24:48', 'Profit_Report', '2022-04-06 07:13:36');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-07-09 07:33:45', 'Book_Report', '2022-10-19 05:37:33');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000004, '2022-11-17 01:45:24', 'Profit_Report', '2022-04-22 14:59:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000005, '2022-11-18 09:17:55', 'Genre_Report', '2022-07-06 05:26:14');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000007, '2022-07-11 18:52:53', 'Genre_Report', '2021-12-31 22:09:54');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000033, '2022-08-08 00:56:08', 'Profit_Report', '2022-10-19 09:47:00');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000009, '2022-04-25 23:20:03', 'Genre_Report', '2022-06-29 23:40:44');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-11-01 01:08:41', 'Genre_Report', '2022-07-07 19:11:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2021-12-22 07:25:37', 'Book_Report', '2022-07-06 07:54:03');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000014, '2022-06-29 10:05:25', 'Profit_Report', '2022-09-28 08:19:32');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2021-12-14 01:18:36', 'Genre_Report', '2022-08-03 04:27:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000005, '2022-04-19 11:08:50', 'Genre_Report', '2022-06-07 23:36:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2022-03-09 19:53:07', 'Book_Report', '2022-01-29 05:06:12');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000022, '2022-08-05 04:11:38', 'Profit_Report', '2022-06-04 02:25:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000006, '2022-06-04 08:21:39', 'Genre_Report', '2022-09-17 21:10:28');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000031, '2022-05-09 05:55:32', 'Book_Report', '2022-12-07 18:17:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000019, '2022-10-30 19:11:34', 'Genre_Report', '2022-01-27 16:51:25');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000009, '2022-10-15 03:14:24', 'Genre_Report', '2022-01-26 20:53:45');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000001, '2022-04-03 17:22:12', 'Profit_Report', '2022-11-27 04:06:18');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000010, '2022-09-24 12:06:39', 'Genre_Report', '2022-01-08 23:11:03');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000031, '2022-03-24 07:17:42', 'Genre_Report', '2022-03-27 18:34:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000008, '2022-11-21 04:05:39', 'Genre_Report', '2022-11-23 03:28:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000015, '2022-12-09 21:20:38', 'Book_Report', '2022-09-16 08:43:12');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000009, '2021-12-12 21:29:06', 'Profit_Report', '2022-06-29 22:02:40');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000029, '2022-02-24 14:37:47', 'Genre_Report', '2022-10-20 10:36:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000028, '2022-04-12 13:57:32', 'Book_Report', '2022-07-25 22:43:37');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000001, '2022-02-13 20:51:37', 'Profit_Report', '2022-05-03 04:58:58');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000023, '2022-04-12 05:14:20', 'Genre_Report', '2022-10-27 10:47:05');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000019, '2022-03-09 22:46:51', 'Genre_Report', '2022-10-08 16:34:48');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-07-14 02:19:10', 'Genre_Report', '2022-07-09 01:38:39');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000026, '2022-12-09 22:56:37', 'Book_Report', '2022-11-24 10:35:15');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000023, '2022-09-03 19:04:04', 'Genre_Report', '2022-05-01 04:35:43');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000033, '2022-08-05 16:30:59', 'Profit_Report', '2021-12-19 11:12:21');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000008, '2022-11-20 07:30:15', 'Book_Report', '2022-05-06 00:26:04');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000026, '2022-04-26 07:59:18', 'Profit_Report', '2022-01-29 12:36:56');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-04-19 00:08:59', 'Genre_Report', '2022-01-16 15:49:08');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000005, '2022-06-01 06:21:32', 'Genre_Report', '2022-03-29 18:09:43');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000002, '2022-07-17 06:24:04', 'Profit_Report', '2022-06-19 16:20:30');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000001, '2022-08-29 07:24:55', 'Book_Report', '2022-08-10 22:17:19');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000033, '2022-01-07 00:58:16', 'Book_Report', '2021-12-29 07:23:05');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000013, '2022-01-27 01:54:13', 'Profit_Report', '2021-12-15 14:32:27');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-02-28 19:11:27', 'Profit_Report', '2022-07-24 06:10:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000028, '2022-10-11 15:55:54', 'Genre_Report', '2022-01-25 09:24:20');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000014, '2022-03-12 05:30:23', 'Genre_Report', '2022-04-24 02:29:59');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000029, '2021-12-27 22:21:37', 'Profit_Report', '2022-02-03 16:00:24');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000009, '2022-04-22 15:40:53', 'Profit_Report', '2022-03-28 23:23:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000027, '2021-12-30 18:13:20', 'Genre_Report', '2022-08-16 02:50:21');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000006, '2021-12-25 09:33:47', 'Book_Report', '2022-03-17 05:09:32');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000028, '2022-11-28 15:35:18', 'Genre_Report', '2022-06-13 09:16:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-06-22 20:20:33', 'Profit_Report', '2022-05-12 21:26:25');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000001, '2021-12-16 02:43:49', 'Profit_Report', '2022-01-07 01:28:28');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000031, '2022-02-28 06:45:08', 'Profit_Report', '2022-11-01 04:07:40');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2022-01-16 08:11:07', 'Book_Report', '2022-01-04 14:56:35');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-04-27 14:15:22', 'Book_Report', '2022-08-08 07:01:38');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000021, '2022-05-01 21:35:42', 'Profit_Report', '2022-08-20 03:55:30');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-04-18 20:42:59', 'Book_Report', '2022-01-14 08:50:01');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000010, '2022-08-12 19:54:05', 'Book_Report', '2022-11-13 11:56:48');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000028, '2022-03-29 04:48:58', 'Book_Report', '2022-09-03 14:18:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000013, '2021-12-25 13:45:58', 'Book_Report', '2021-12-13 04:04:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000004, '2022-06-04 01:30:08', 'Profit_Report', '2022-08-11 05:15:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000002, '2022-08-12 10:26:29', 'Book_Report', '2022-05-12 09:31:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000015, '2021-12-16 13:13:09', 'Genre_Report', '2022-05-14 10:33:12');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000013, '2022-09-26 12:07:28', 'Book_Report', '2022-05-12 19:49:43');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-01-22 17:20:46', 'Book_Report', '2022-07-26 04:00:20');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000014, '2022-06-09 12:21:53', 'Genre_Report', '2022-01-14 13:54:28');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000008, '2022-11-15 01:07:37', 'Book_Report', '2022-11-18 17:48:38');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000029, '2022-08-30 10:53:05', 'Profit_Report', '2022-01-25 09:20:39');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000022, '2022-09-14 02:11:27', 'Genre_Report', '2021-12-23 10:52:05');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-03-02 05:20:20', 'Genre_Report', '2022-02-22 05:31:19');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000021, '2021-12-24 16:11:06', 'Genre_Report', '2022-11-27 15:00:38');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000009, '2021-12-12 23:05:03', 'Book_Report', '2022-05-11 01:16:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-08-28 23:35:35', 'Profit_Report', '2021-12-13 09:57:58');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-10-10 05:34:51', 'Book_Report', '2022-08-19 06:13:22');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000012, '2022-07-21 04:01:08', 'Profit_Report', '2022-11-07 15:30:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000004, '2022-08-28 06:59:32', 'Genre_Report', '2022-06-23 11:43:06');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000016, '2022-01-11 05:44:32', 'Genre_Report', '2022-03-14 18:24:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000031, '2022-04-20 21:30:42', 'Book_Report', '2022-03-16 06:09:17');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000021, '2022-01-27 08:41:44', 'Book_Report', '2022-05-02 15:36:35');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000023, '2022-10-07 10:14:32', 'Profit_Report', '2022-01-29 02:10:19');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000021, '2022-01-09 15:08:46', 'Book_Report', '2022-04-02 02:33:10');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2022-04-01 22:26:47', 'Profit_Report', '2021-12-10 10:17:05');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000027, '2022-08-29 19:27:56', 'Book_Report', '2022-11-15 10:31:16');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000020, '2022-03-26 17:51:12', 'Genre_Report', '2022-06-04 02:56:48');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000026, '2022-01-31 05:08:10', 'Book_Report', '2022-05-24 06:29:06');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000022, '2022-08-16 04:58:08', 'Book_Report', '2022-06-17 05:35:17');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000024, '2022-12-01 12:23:39', 'Genre_Report', '2022-02-05 08:12:55');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000030, '2022-10-16 01:08:54', 'Book_Report', '2022-08-23 18:31:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000030, '2022-08-15 21:21:31', 'Genre_Report', '2022-05-06 15:40:49');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000032, '2022-03-01 16:55:07', 'Genre_Report', '2022-11-02 23:19:17');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000013, '2022-08-14 23:24:37', 'Genre_Report', '2022-01-19 02:07:56');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000003, '2022-02-06 15:35:17', 'Book_Report', '2021-12-29 03:54:13');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000011, '2021-12-15 20:13:22', 'Genre_Report', '2022-06-06 10:23:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-03-10 23:28:02', 'Book_Report', '2022-10-06 04:39:04');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000034, '2022-11-17 19:14:35', 'Genre_Report', '2022-11-03 11:54:53');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000031, '2022-04-10 10:03:42', 'Profit_Report', '2022-03-06 09:18:14');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2022-03-01 06:42:08', 'Genre_Report', '2022-08-02 05:06:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000010, '2022-10-02 21:39:36', 'Genre_Report', '2022-06-25 01:31:58');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000014, '2022-06-05 22:39:47', 'Genre_Report', '2022-11-19 13:30:07');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000022, '2022-10-12 18:16:45', 'Profit_Report', '2022-10-09 17:56:58');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000025, '2022-06-04 05:47:39', 'Genre_Report', '2022-09-22 04:30:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000032, '2022-12-03 15:49:29', 'Profit_Report', '2022-06-28 22:42:39');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000025, '2021-12-18 02:08:23', 'Profit_Report', '2022-06-16 21:34:34');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000017, '2022-08-12 05:52:30', 'Book_Report', '2022-01-25 04:24:37');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000032, '2022-01-19 01:50:19', 'Profit_Report', '2022-05-22 23:31:50');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000016, '2022-08-28 05:46:59', 'Genre_Report', '2022-10-01 02:10:31');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000018, '2021-12-20 15:31:13', 'Book_Report', '2022-04-22 03:18:58');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000010, '2022-11-30 01:17:48', 'Book_Report', '2022-01-23 01:42:26');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000001, '2022-02-25 11:50:05', 'Profit_Report', '2022-05-31 16:43:57');
insert into report (employeeId, reportStartDate, type, reportEndDate) values (300000000, '2022-03-17 08:26:32', 'Profit_Report', '2022-02-14 23:56:25');


--  BookGenre table ------------------

-- make a BookGenre table, it has bookId, category.

CREATE TABLE bookGenre (
    bookId INT NOT NULL,
    category VARCHAR(255) NOT NULL,

    constraint pk_bookGenre primary key (bookId, category),
    constraint fk_bookId_bookGenre
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade
);

-- generate 10 bookGenre records

INSERT INTO bookGenre (bookId, category)
VALUES
    (1000000000, 'Fiction'),
    (1000000001, 'Non-Fiction'),
    (1000000002, 'Slice of Life'),
    (1000000003, 'Romance'),
    (1000000001, 'Fiction'),
    (1000000002, 'Non-Fiction'),
    (1000000003, 'Fiction'),
    (1000000001, 'Science'),
    (1000000003, 'SCI-FI'),
    (1000000006, 'Science');


insert into bookGenre (bookId, category) values (1000000010, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000012, 'Science');
insert into bookGenre (bookId, category) values (1000000015, 'Science');
insert into bookGenre (bookId, category) values (1000000029, 'Romance');
insert into bookGenre (bookId, category) values (1000000006, 'Romance');
insert into bookGenre (bookId, category) values (1000000012, 'Romance');
insert into bookGenre (bookId, category) values (1000000014, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000027, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000003, 'School Life');
insert into bookGenre (bookId, category) values (1000000029, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000029, 'School Life');
insert into bookGenre (bookId, category) values (1000000014, 'Romance');
insert into bookGenre (bookId, category) values (1000000024, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000023, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000015, 'Fiction');
insert into bookGenre (bookId, category) values (1000000022, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000022, 'Fiction');
insert into bookGenre (bookId, category) values (1000000005, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000025, 'Fiction');
insert into bookGenre (bookId, category) values (1000000011, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000025, 'Romance');
insert into bookGenre (bookId, category) values (1000000003, 'Fantasy');
insert into bookGenre (bookId, category) values (1000000001, 'Romance');
insert into bookGenre (bookId, category) values (1000000027, 'School Life');
insert into bookGenre (bookId, category) values (1000000006, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000003, 'Shounen');
insert into bookGenre (bookId, category) values (1000000004, 'Fiction');
insert into bookGenre (bookId, category) values (1000000001, 'School Life');
insert into bookGenre (bookId, category) values (1000000013, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000024, 'Romance');
insert into bookGenre (bookId, category) values (1000000022, 'Romance');
insert into bookGenre (bookId, category) values (1000000001, 'Action');
insert into bookGenre (bookId, category) values (1000000016, 'Fiction');
insert into bookGenre (bookId, category) values (1000000029, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000023, 'Romance');
insert into bookGenre (bookId, category) values (1000000020, 'SCI-FI');
insert into bookGenre (bookId, category) values (1000000030, 'Fiction');
insert into bookGenre (bookId, category) values (1000000018, 'Romance');
insert into bookGenre (bookId, category) values (1000000030, 'Science');
insert into bookGenre (bookId, category) values (1000000019, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000018, 'Science');
insert into bookGenre (bookId, category) values (1000000008, 'Fiction');
insert into bookGenre (bookId, category) values (1000000006, 'School Life');
insert into bookGenre (bookId, category) values (1000000028, 'School Life');
insert into bookGenre (bookId, category) values (1000000024, 'Action');
insert into bookGenre (bookId, category) values (1000000012, 'Non-Fiction');
insert into bookGenre (bookId, category) values (1000000018, 'Fiction');
insert into bookGenre (bookId, category) values (1000000022, 'Sport');
insert into bookGenre (bookId, category) values (1000000024, 'Fiction');
insert into bookGenre (bookId, category) values (1000000008, 'Science');
insert into bookGenre (bookId, category) values (1000000003, 'Sport');
insert into bookGenre (bookId, category) values (1000000022, 'Science');



-- Include table ------------------

-- make a Include table, it has bookId, reportId.

CREATE TABLE include (
    bookId INT NOT NULL,
    reportId INT NOT NULL,

    constraint pk_include primary key (bookId, reportId),
    constraint fk_bookId_include
        foreign key (bookId) references book(bookId)
        on delete cascade
        on update cascade,
    constraint fk_reportId_include
        foreign key (reportId) references report(reportId)
        on delete cascade
        on update cascade
);


-- generate 10 includedIn records

INSERT INTO include (bookId, reportId)
VALUES
    (1000000000, 1),
    (1000000001, 2),
    (1000000002, 3),
    (1000000003, 4),
    (1000000004, 5),
    (1000000001, 1),
    (1000000006, 7),
    (1000000007, 8),
    (1000000008, 9),
    (1000000005, 10);


insert into include (bookId, reportId) values (1000000022, 69);
insert into include (bookId, reportId) values (1000000024, 151);
insert into include (bookId, reportId) values (1000000027, 72);
insert into include (bookId, reportId) values (1000000004, 88);
insert into include (bookId, reportId) values (1000000006, 75);
insert into include (bookId, reportId) values (1000000028, 99);
insert into include (bookId, reportId) values (1000000024, 121);
insert into include (bookId, reportId) values (1000000008, 151);
insert into include (bookId, reportId) values (1000000022, 45);
insert into include (bookId, reportId) values (1000000000, 149);
insert into include (bookId, reportId) values (1000000030, 3);
insert into include (bookId, reportId) values (1000000006, 35);
insert into include (bookId, reportId) values (1000000000, 159);
insert into include (bookId, reportId) values (1000000005, 142);
insert into include (bookId, reportId) values (1000000002, 154);
insert into include (bookId, reportId) values (1000000014, 87);
insert into include (bookId, reportId) values (1000000002, 22);
insert into include (bookId, reportId) values (1000000013, 56);
insert into include (bookId, reportId) values (1000000018, 99);
insert into include (bookId, reportId) values (1000000008, 101);
insert into include (bookId, reportId) values (1000000013, 113);
insert into include (bookId, reportId) values (1000000014, 93);
insert into include (bookId, reportId) values (1000000016, 47);
insert into include (bookId, reportId) values (1000000010, 26);
insert into include (bookId, reportId) values (1000000008, 115);
insert into include (bookId, reportId) values (1000000004, 73);
insert into include (bookId, reportId) values (1000000005, 32);
insert into include (bookId, reportId) values (1000000001, 158);
insert into include (bookId, reportId) values (1000000013, 3);
insert into include (bookId, reportId) values (1000000011, 122);
insert into include (bookId, reportId) values (1000000016, 36);
insert into include (bookId, reportId) values (1000000020, 31);
insert into include (bookId, reportId) values (1000000004, 126);
insert into include (bookId, reportId) values (1000000025, 33);
insert into include (bookId, reportId) values (1000000000, 106);
insert into include (bookId, reportId) values (1000000027, 13);
insert into include (bookId, reportId) values (1000000022, 36);
insert into include (bookId, reportId) values (1000000027, 130);
insert into include (bookId, reportId) values (1000000005, 35);
insert into include (bookId, reportId) values (1000000029, 135);
insert into include (bookId, reportId) values (1000000020, 15);
insert into include (bookId, reportId) values (1000000024, 12);
insert into include (bookId, reportId) values (1000000029, 154);
insert into include (bookId, reportId) values (1000000013, 14);
insert into include (bookId, reportId) values (1000000010, 22);
insert into include (bookId, reportId) values (1000000009, 43);
insert into include (bookId, reportId) values (1000000011, 45);
insert into include (bookId, reportId) values (1000000017, 1);
insert into include (bookId, reportId) values (1000000020, 5);
insert into include (bookId, reportId) values (1000000030, 15);
insert into include (bookId, reportId) values (1000000023, 37);
insert into include (bookId, reportId) values (1000000016, 99);
insert into include (bookId, reportId) values (1000000021, 63);
insert into include (bookId, reportId) values (1000000002, 21);
insert into include (bookId, reportId) values (1000000014, 36);
insert into include (bookId, reportId) values (1000000016, 94);
insert into include (bookId, reportId) values (1000000018, 117);
insert into include (bookId, reportId) values (1000000015, 34);
insert into include (bookId, reportId) values (1000000012, 93);
insert into include (bookId, reportId) values (1000000020, 54);
insert into include (bookId, reportId) values (1000000018, 28);
insert into include (bookId, reportId) values (1000000021, 98);
insert into include (bookId, reportId) values (1000000015, 126);
insert into include (bookId, reportId) values (1000000028, 62);
insert into include (bookId, reportId) values (1000000005, 147);
insert into include (bookId, reportId) values (1000000001, 59);
insert into include (bookId, reportId) values (1000000026, 73);
insert into include (bookId, reportId) values (1000000006, 102);
insert into include (bookId, reportId) values (1000000005, 31);
insert into include (bookId, reportId) values (1000000014, 48);
insert into include (bookId, reportId) values (1000000016, 100);
insert into include (bookId, reportId) values (1000000015, 159);
insert into include (bookId, reportId) values (1000000027, 105);
insert into include (bookId, reportId) values (1000000010, 112);
insert into include (bookId, reportId) values (1000000007, 1);
insert into include (bookId, reportId) values (1000000019, 131);
insert into include (bookId, reportId) values (1000000002, 99);
insert into include (bookId, reportId) values (1000000016, 37);
insert into include (bookId, reportId) values (1000000022, 93);
insert into include (bookId, reportId) values (1000000007, 84);
insert into include (bookId, reportId) values (1000000010, 150);
insert into include (bookId, reportId) values (1000000006, 126);
insert into include (bookId, reportId) values (1000000024, 107);
insert into include (bookId, reportId) values (1000000008, 13);
insert into include (bookId, reportId) values (1000000009, 9);
insert into include (bookId, reportId) values (1000000009, 45);
insert into include (bookId, reportId) values (1000000000, 127);
insert into include (bookId, reportId) values (1000000008, 110);
insert into include (bookId, reportId) values (1000000001, 61);
insert into include (bookId, reportId) values (1000000029, 86);
insert into include (bookId, reportId) values (1000000009, 75);
insert into include (bookId, reportId) values (1000000025, 138);
insert into include (bookId, reportId) values (1000000014, 122);
insert into include (bookId, reportId) values (1000000010, 118);
insert into include (bookId, reportId) values (1000000002, 84);
insert into include (bookId, reportId) values (1000000010, 11);
insert into include (bookId, reportId) values (1000000021, 139);
insert into include (bookId, reportId) values (1000000006, 145);
insert into include (bookId, reportId) values (1000000011, 10);
insert into include (bookId, reportId) values (1000000015, 23);
insert into include (bookId, reportId) values (1000000022, 128);
insert into include (bookId, reportId) values (1000000025, 86);
insert into include (bookId, reportId) values (1000000009, 5);
insert into include (bookId, reportId) values (1000000022, 35);
insert into include (bookId, reportId) values (1000000026, 130);
insert into include (bookId, reportId) values (1000000014, 141);
insert into include (bookId, reportId) values (1000000000, 99);
insert into include (bookId, reportId) values (1000000019, 53);
insert into include (bookId, reportId) values (1000000005, 150);
insert into include (bookId, reportId) values (1000000012, 122);
insert into include (bookId, reportId) values (1000000024, 11);
insert into include (bookId, reportId) values (1000000005, 54);
insert into include (bookId, reportId) values (1000000005, 60);
insert into include (bookId, reportId) values (1000000016, 57);
insert into include (bookId, reportId) values (1000000030, 59);
insert into include (bookId, reportId) values (1000000022, 116);
insert into include (bookId, reportId) values (1000000010, 154);
insert into include (bookId, reportId) values (1000000001, 124);
insert into include (bookId, reportId) values (1000000025, 65);
insert into include (bookId, reportId) values (1000000020, 70);
insert into include (bookId, reportId) values (1000000016, 106);
insert into include (bookId, reportId) values (1000000009, 118);
insert into include (bookId, reportId) values (1000000012, 17);
insert into include (bookId, reportId) values (1000000025, 42);
insert into include (bookId, reportId) values (1000000021, 29);
insert into include (bookId, reportId) values (1000000022, 16);
insert into include (bookId, reportId) values (1000000000, 53);
insert into include (bookId, reportId) values (1000000018, 46);
insert into include (bookId, reportId) values (1000000029, 151);
insert into include (bookId, reportId) values (1000000007, 69);
insert into include (bookId, reportId) values (1000000018, 95);
insert into include (bookId, reportId) values (1000000030, 110);
insert into include (bookId, reportId) values (1000000003, 94);
insert into include (bookId, reportId) values (1000000013, 73);
insert into include (bookId, reportId) values (1000000019, 76);
insert into include (bookId, reportId) values (1000000014, 159);
insert into include (bookId, reportId) values (1000000028, 57);
insert into include (bookId, reportId) values (1000000012, 131);
insert into include (bookId, reportId) values (1000000022, 42);
insert into include (bookId, reportId) values (1000000014, 8);
insert into include (bookId, reportId) values (1000000018, 60);
insert into include (bookId, reportId) values (1000000013, 38);
insert into include (bookId, reportId) values (1000000029, 141);
insert into include (bookId, reportId) values (1000000011, 56);
insert into include (bookId, reportId) values (1000000015, 35);
insert into include (bookId, reportId) values (1000000016, 13);
insert into include (bookId, reportId) values (1000000026, 109);
insert into include (bookId, reportId) values (1000000003, 146);
insert into include (bookId, reportId) values (1000000023, 111);
insert into include (bookId, reportId) values (1000000001, 96);


-- AuthorBankAccount table ------------------

-- make a AuthorBankAccount table, it has authorId, bankAccountId.
-- bankAccountId is 8-12 digits.

CREATE TABLE authorBankAccount (
    authorId INT NOT NULL,
    bankAccountNum VARCHAR(12) NOT NULL,

    constraint pk_authorBankAccount primary key (authorId, bankAccountNum),
    constraint fk_authorId_authorBankAccount
        foreign key (authorId) references author(authorId)
        on delete cascade
        on update cascade,
    constraint check_bankAccountNum
        check (bankAccountNum REGEXP '^[0-9]{8,12}$')
);


-- generate 10 authorBankAccount records

INSERT INTO authorBankAccount (authorId, bankAccountNum)
VALUES
    (100000000, 218349705),
    (100000000, 1235671253),
    (100000001, 126387112),
    (100000002, 127831233),
    (100000003, 981723123),
    (100000004, 1287361287),
    (100000005, 09123719203),
    (100000006, 125376125673),
    (100000007, 90123719237),
    (100000008, 17263581723),
    (100000009, 1627531723);


insert into authorBankAccount (authorId, bankAccountNum) values (100000021, 56679345447);
insert into authorBankAccount (authorId, bankAccountNum) values (100000015, 68558451734);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 81647601484);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 39159403072);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 53699549365);
insert into authorBankAccount (authorId, bankAccountNum) values (100000000, 85089168249);
insert into authorBankAccount (authorId, bankAccountNum) values (100000003, 71676904494);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 80327809567);
insert into authorBankAccount (authorId, bankAccountNum) values (100000030, 96213794321);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 19346367074);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 56483037878);
insert into authorBankAccount (authorId, bankAccountNum) values (100000009, 76139989402);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 82469953315);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 38300647039);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 84935234750);
insert into authorBankAccount (authorId, bankAccountNum) values (100000009, 92544802622);
insert into authorBankAccount (authorId, bankAccountNum) values (100000007, 11476784716);
insert into authorBankAccount (authorId, bankAccountNum) values (100000001, 85715747489);
insert into authorBankAccount (authorId, bankAccountNum) values (100000003, 23048729533);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 9371381847);
insert into authorBankAccount (authorId, bankAccountNum) values (100000002, 27482052020);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 49601931013);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 15456531927);
insert into authorBankAccount (authorId, bankAccountNum) values (100000001, 60464549714);
insert into authorBankAccount (authorId, bankAccountNum) values (100000015, 83410481657);
insert into authorBankAccount (authorId, bankAccountNum) values (100000023, 25896906920);
insert into authorBankAccount (authorId, bankAccountNum) values (100000029, 12028682079);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 99363681802);
insert into authorBankAccount (authorId, bankAccountNum) values (100000030, 82644837460);
insert into authorBankAccount (authorId, bankAccountNum) values (100000006, 94248477585);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 76211060842);
insert into authorBankAccount (authorId, bankAccountNum) values (100000002, 79870549723);
insert into authorBankAccount (authorId, bankAccountNum) values (100000001, 1078501225);
insert into authorBankAccount (authorId, bankAccountNum) values (100000009, 32656979476);
insert into authorBankAccount (authorId, bankAccountNum) values (100000021, 2038094965);
insert into authorBankAccount (authorId, bankAccountNum) values (100000002, 46347822158);
insert into authorBankAccount (authorId, bankAccountNum) values (100000007, 12940835302);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 71319601982);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 44195845442);
insert into authorBankAccount (authorId, bankAccountNum) values (100000027, 36248251263);
insert into authorBankAccount (authorId, bankAccountNum) values (100000015, 84127361659);
insert into authorBankAccount (authorId, bankAccountNum) values (100000024, 11654159793);
insert into authorBankAccount (authorId, bankAccountNum) values (100000024, 62273473174);
insert into authorBankAccount (authorId, bankAccountNum) values (100000032, 99274210416);
insert into authorBankAccount (authorId, bankAccountNum) values (100000029, 30211962782);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 38503288035);
insert into authorBankAccount (authorId, bankAccountNum) values (100000031, 29223710179);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 49853786156);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 96080829773);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 7272507976);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 8719923177);
insert into authorBankAccount (authorId, bankAccountNum) values (100000020, 50887771198);
insert into authorBankAccount (authorId, bankAccountNum) values (100000020, 5464413121);
insert into authorBankAccount (authorId, bankAccountNum) values (100000016, 72664845423);
insert into authorBankAccount (authorId, bankAccountNum) values (100000025, 37143746740);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 52490004001);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 46210695309);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 37291088952);
insert into authorBankAccount (authorId, bankAccountNum) values (100000014, 15690952956);
insert into authorBankAccount (authorId, bankAccountNum) values (100000026, 13007868790);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 6397544454);
insert into authorBankAccount (authorId, bankAccountNum) values (100000023, 89253013437);
insert into authorBankAccount (authorId, bankAccountNum) values (100000009, 23715941385);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 83165486149);
insert into authorBankAccount (authorId, bankAccountNum) values (100000025, 7615871157);
insert into authorBankAccount (authorId, bankAccountNum) values (100000031, 63956628854);
insert into authorBankAccount (authorId, bankAccountNum) values (100000026, 55129025692);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 31473346121);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 462935983);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 40466229397);
insert into authorBankAccount (authorId, bankAccountNum) values (100000027, 17332459312);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 59766601790);
insert into authorBankAccount (authorId, bankAccountNum) values (100000003, 29345891185);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 95315710742);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 81449020074);
insert into authorBankAccount (authorId, bankAccountNum) values (100000016, 88695020805);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 64688372016);
insert into authorBankAccount (authorId, bankAccountNum) values (100000000, 64617293881);
insert into authorBankAccount (authorId, bankAccountNum) values (100000027, 65608569823);
insert into authorBankAccount (authorId, bankAccountNum) values (100000007, 59145463473);
insert into authorBankAccount (authorId, bankAccountNum) values (100000016, 22975307228);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 49078849849);
insert into authorBankAccount (authorId, bankAccountNum) values (100000025, 35170200637);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 39282668842);
insert into authorBankAccount (authorId, bankAccountNum) values (100000031, 73615045340);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 38292615531);
insert into authorBankAccount (authorId, bankAccountNum) values (100000030, 29560954528);
insert into authorBankAccount (authorId, bankAccountNum) values (100000018, 47204184417);
insert into authorBankAccount (authorId, bankAccountNum) values (100000010, 50722757099);
insert into authorBankAccount (authorId, bankAccountNum) values (100000004, 3191750635);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 64624135288);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 71040995368);
insert into authorBankAccount (authorId, bankAccountNum) values (100000006, 35346137372);
insert into authorBankAccount (authorId, bankAccountNum) values (100000006, 25152631805);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 83371446706);
insert into authorBankAccount (authorId, bankAccountNum) values (100000024, 49947900459);
insert into authorBankAccount (authorId, bankAccountNum) values (100000018, 43975518532);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 3842968750);
insert into authorBankAccount (authorId, bankAccountNum) values (100000016, 9493021912);
insert into authorBankAccount (authorId, bankAccountNum) values (100000000, 89937434601);
insert into authorBankAccount (authorId, bankAccountNum) values (100000003, 51396589106);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 25670811263);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 68038901031);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 67310519507);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 16948062160);
insert into authorBankAccount (authorId, bankAccountNum) values (100000022, 85915119735);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 72118220399);
insert into authorBankAccount (authorId, bankAccountNum) values (100000006, 94204989413);
insert into authorBankAccount (authorId, bankAccountNum) values (100000014, 67461209827);
insert into authorBankAccount (authorId, bankAccountNum) values (100000003, 43700261749);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 61937914016);
insert into authorBankAccount (authorId, bankAccountNum) values (100000013, 21583044222);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 9587139578);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 17093306783);
insert into authorBankAccount (authorId, bankAccountNum) values (100000015, 2637129572);
insert into authorBankAccount (authorId, bankAccountNum) values (100000032, 11315771776);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 12571149357);
insert into authorBankAccount (authorId, bankAccountNum) values (100000001, 3717187933);
insert into authorBankAccount (authorId, bankAccountNum) values (100000018, 34236588521);
insert into authorBankAccount (authorId, bankAccountNum) values (100000030, 39683517751);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 11780486625);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 29695642688);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 11694321141);
insert into authorBankAccount (authorId, bankAccountNum) values (100000001, 9841745584);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 96530596839);
insert into authorBankAccount (authorId, bankAccountNum) values (100000014, 23193233722);
insert into authorBankAccount (authorId, bankAccountNum) values (100000030, 29111954606);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 17926967682);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 17481489005);
insert into authorBankAccount (authorId, bankAccountNum) values (100000025, 93080551004);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 77304783836);
insert into authorBankAccount (authorId, bankAccountNum) values (100000015, 50995720854);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 62908990410);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 32300904843);
insert into authorBankAccount (authorId, bankAccountNum) values (100000020, 50424406671);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 17382076792);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 81796230347);
insert into authorBankAccount (authorId, bankAccountNum) values (100000008, 71610475235);
insert into authorBankAccount (authorId, bankAccountNum) values (100000019, 58034226246);
insert into authorBankAccount (authorId, bankAccountNum) values (100000011, 45853629300);
insert into authorBankAccount (authorId, bankAccountNum) values (100000012, 35439780697);
insert into authorBankAccount (authorId, bankAccountNum) values (100000017, 93569079523);
insert into authorBankAccount (authorId, bankAccountNum) values (100000005, 25063596017);
insert into authorBankAccount (authorId, bankAccountNum) values (100000023, 3558387644);
insert into authorBankAccount (authorId, bankAccountNum) values (100000031, 35010756278);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 83709887342);
insert into authorBankAccount (authorId, bankAccountNum) values (100000000, 50266206239);
insert into authorBankAccount (authorId, bankAccountNum) values (100000026, 17625994427);
insert into authorBankAccount (authorId, bankAccountNum) values (100000028, 28959972460);
insert into authorBankAccount (authorId, bankAccountNum) values (100000023, 45353268718);
