mysql -u root -p
--input password
create user 'hanbit' identified by 'hanbit';
exit
GRANT ALL PRIVILEGES ON *.* TO 'hanbit' IDENTIFIED BY 'hanbit' WITH GRANT OPTION;
CREATE DATABASE hanbit;
mysql - u hanbit -p hanbit  --여기서 -p 뒤에 hanbit 은 DATABASE 이름이다.
use hanbit
--input password
SHOW tables;

ALTER TABLE patient ADD CONSTRAINT 
    
    FK_Doctor_TO_Patient
	FOREIGN KEY(doc_id)
	REFERENCES Doctor(doc_id)
	ON DELETE SET NULL;	



DROP TABLE IF EXISTS Chart;
DROP TABLE IF EXISTS Treatment;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Nurse;
DROP TABLE IF EXISTS Doctor;




-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
CREATE TABLE Doctor(
    doc_id VARCHAR(20) NOT NULL, 
    doc_pass VARCHAR(20) NOT NULL, 
    major_treat VARCHAR(20) NOT NULL, --전공
    doc_name VARCHAR(20) NOT NULL, 
    doc_gen VARCHAR(2) NOT NULL,
    doc_phone VARCHAR(20) NULL,
    doc_email VARCHAR(20) NOT NULL,
    doc_position VARCHAR(20) NOT NULL,
   	PRIMARY KEY(doc_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
CREATE TABLE Nurse(
    nur_id VARCHAR(20) NOT NULL,
    nur_pass VARCHAR(20) NOT NULL,
    major_job VARCHAR(20) NOT NULL,
    nur_name VARCHAR(20) NOT NULL,
    nur_gen VARCHAR(20) NOT NULL,
    nur_phone VARCHAR(20) NULL,
    nur_email VARCHAR(20) NULL,
    nur_position VARCHAR(20) NOT NULL,
    PRIMARY KEY(nur_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
CREATE TABLE Patient(
    pat_id VARCHAR(20) NOT NULL,
    nur_id VARCHAR(20) NULL,
    doc_id VARCHAR(20) NULL,
    pat_pass VARCHAR(20) NOT NULL,
    pat_name VARCHAR(20) NOT NULL,
    pat_gen VARCHAR(2) NOT NULL,
    pat_jumin VARCHAR(20) NOT NULL,
    pat_addr VARCHAR(20) NOT NULL,
    pat_phone VARCHAR(20) NULL,
    pat_email VARCHAR(20) NULL,
    pat_job VARCHAR(20) NOT NULL,
    PRIMARY KEY(pat_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- treat_id, pat_id, doc_id, treat_contents, treat_date
CREATE TABLE Treatment(
    treat_id VARCHAR(20) NOT NULL,
    pat_id VARCHAR(20) NULL,
    doc_id VARCHAR(20) NULL,
    treat_contents VARCHAR(100) NOT NULL,
    treat_date VARCHAR(20) NOT NULL,
    PRIMARY KEY(treat_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
CREATE TABLE Chart(
    chart_id VARCHAR(20) NOT NULL,
    treat_id VARCHAR(20) NULL,
    doc_id VARCHAR(20) NULL,
    pat_id VARCHAR(20) NULL,
    nur_id VARCHAR(20) NULL,
    chart_contents VARCHAR(100) NOT NULL,
    PRIMARY KEY(chart_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


-- dummy \uC785\uB825 \uBD80\uBD84-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
-- SELECT * FROM Doctor;
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee', '1', '\uC18C\uC544\uACFC', '\uC774\uD0DC\uC815', 'M', '010-333-1340', 'ltj@hanbh.com', '\uACFC\uC7A5');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dahn', '1', '\uB0B4\uACFC', '\uC548\uC131\uAE30', 'M', '011-222-0987', 'ask@hanbh.com', '\uACFC\uC7A5');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim', '1', '\uC678\uACFC', '\uAE40\uBBFC\uC885', 'M', '010-333-8743', 'kmj@hanbh.com', '\uACFC\uC7A5');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee2', '1', '\uD53C\uBD80\uACFC', '\uC774\uD0DC\uC11C', 'M', '019-777-3764', 'lts@hanbh.com', '\uACFC\uC7A5');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim2', '1', '\uC18C\uC544\uACFC', '\uAE40\uC5F0\uC544', 'F', '010-555-3746', 'kya@hanbh.com', '\uC804\uBB38\uC758');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dcha', '1', '\uB0B4\uACFC', '\uCC28\uD0DC\uD604', 'M', '011-222-7643', 'cth@hanbh.com', '\uC804\uBB38\uC758');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('djeon', '1', '\uC18C\uC544\uACFC', '\uC804\uC9C0\uD604', 'F', '010-999-1265', 'jjh@hanbh.com', '\uC804\uBB38\uC758');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dhong', '1', '\uD53C\uBD80\uACFC', '\uD64D\uAE38\uB3D9', 'M', '016-333-7263', 'hgd@hanbh.com', '\uC804\uBB38\uC758');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dyou', '1', '\uBC29\uC0AC\uC120\uACFC', '\uC720\uC7AC\uC11D', 'M', '010-222-1263', 'yjs@hanbh.com', '\uACFC\uC7A5');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim3', '1', '\uC678\uACFC', '\uAE40\uBCD1\uB9CC', 'M', '010-555-3542', 'kbm@hanbh.com', '\uC804\uBB38\uC758');

-- nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
-- SELECT * FROM  Nurse;
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim',  '1', '\uC18C\uC544\uACFC', '\uAE40\uC740\uC601', 'F', '010-555-8751', 'key@hanbh.com', '\uC218\uAC04\uD638\uC0AC');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyoon', '1', '\uB0B4\uACFC', '\uC724\uC131\uC560', 'F', '016-333-8745', 'ysa@hanbh.com', '\uC218\uAC04\uD638\uC0AC');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nshin', '1', '\uD53C\uBD80\uACFC', '\uC2E0\uC9C0\uC6D0', 'M', '010-666-7646', 'sjw@hanbh.com', '\uC8FC\uC784');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyou',  '1', '\uBC29\uC0AC\uC120\uACFC', '\uC720\uC815\uD654', 'F', '010-333-4588', 'yjh@hanbh.com', '\uC8FC\uC784');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nla',   '1', '\uB0B4\uACFC', '\uB77C\uD558\uB098', 'F', '010-222-1340', 'nhn@hanbh.com', '\uC8FC\uC784');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim2', '1', '\uC18C\uC544\uACFC', '\uAE40\uD654\uACBD', 'F', '019-888-4116', 'khk@hanbh.com', '\uC8FC\uC784');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee',  '1', '\uC18C\uC544\uACFC', '\uC774\uC120\uC6A9', 'M', '010-777-1234', 'lsy@hanbh.com', '\uAC04\uD638\uC0AC');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim3', '1', '\uC678\uACFC', '\uAE40\uD604', 'M', '010-999-8520', 'kh@hanbh.com', '\uAC04\uD638\uC0AC');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('npark', '1', '\uD53C\uBD80\uACFC', '\uBC15\uC131\uC644', 'M', '010-777-4996', 'psw@hanbh.com', '\uAC04\uD638\uC0AC');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee2', '1', '\uC678\uACFC', '\uC774\uC11C\uC5F0', 'F', '010-222-3214', 'lsy2@hanbh.com', '\uAC04\uD638\uC0AC');

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
-- SELECT * FROM Patient;
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pahn',   'nkim',   'dlee',   '1', '\uC548\uC0C1\uAC74', 'M', '232345', '\uC11C\uC6B8', '010-555-7845', 'ask@ab.com', '\uD68C\uC0AC\uC6D0');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pkim',   'nyoon',  'dahn',   '1', '\uAE40\uC131\uB8E1', 'M', '543545', '\uC11C\uC6B8', '010-333-7812', 'ksr@bb.com', '\uC790\uC601\uC5C5');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee',   'nshin',  'dkim',   '1', '\uC774\uC885\uC9C4', 'M', '433424', '\uBD80\uC0B0', '019-888-4859', 'ljj@ab.com', '\uD68C\uC0AC\uC6D0');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi',  'nyou',   'dlee2',  '1', '\uCD5C\uAD11\uC11D', 'M', '677675', '\uB2F9\uC9C4', '010-222-4847', 'cks@cc.com', '\uD68C\uC0AC\uC6D0');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pjeong', 'nla',    'dkim2',  '1', '\uC815\uD55C\uACBD', 'M', '744533', '\uAC15\uB989', '010-777-9630', 'jhk@ab.com', '\uAD50\uC218');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pyou',   'nkim2',  'dcha',   '1', '\uC720\uC6D0\uD604', 'M', '765546', '\uB300\uAD6C', '016-777-0214', 'ywh@cc.com', '\uC790\uC601\uC5C5');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi2', 'nlee',   'djeon',  '1', '\uCD5C\uC7AC\uC815', 'M', '454543', '\uBD80\uC0B0', '010-555-4187', 'cjj@bb.com', '\uD68C\uC0AC\uC6D0');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee2',  'nkim3',  'dhong',  '1', '\uC774\uC9C4\uD76C', 'F', '119768', '\uC11C\uC6B8', '010-888-3675', 'ljh@ab.com', '\uAD50\uC218');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('poh',    'npark',  'dyou',   '1', '\uC624\uB098\uBBF8', 'F', '234234', '\uC18D\uCD08', '010-999-6541', 'onm@cc.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('song',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('hong',  'nlee2',  'dkim3',  '1', '\uD64D\uAE38\uB3D9', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('kim',  'nlee2',  'dkim3',  '1', '\uAE40\uC720\uC2E0', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('lee',  'nlee2',  'dkim3',  '1', '\uC774\uC21C\uC2E0', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('soo',  'nlee2',  'dkim3',  '1', '\uBC15\uC2B9\uC218', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');

-- treat_id, pat_id, doc_id, treat_contents, treat_date
-- SELECT * FROM Treatment;
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130516023', 'pahn',  'dlee',  '\uAC10\uAE30, \uBAB8\uC0B4', '2013-05-16');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130628100', 'pkim',  'dahn',  '\uD53C\uBD80 \uD2B8\uB7EC\uBE14 \uCE58\uB8CC', '2013-06-28');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131205056', 'plee',  'dkim',  '\uBAA9 \uB514\uC2A4\uD06C\uB85C MRI \uCD2C\uC601', '2013-12-05');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131218024', 'pchoi', 'dlee2', '\uC911\uC774\uC5FC', '2013-12-18');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131224012', 'pjeong','dkim2', '\uC7A5\uC5FC', '2013-12-24');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140103001', 'pyou',  'dcha',  '\uC5EC\uB4DC\uB984 \uCE58\uB8CC', '2014-01-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140109026', 'pchoi2','djeon', '\uC704\uC5FC', '2014-01-09');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140226102', 'plee2', 'dhong', '\uD654\uC0C1\uCE58\uB8CC', '2014-02-26');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140303003', 'poh',   'dyou',  '\uAD50\uD1B5\uC0AC\uACE0 \uC678\uC0C1\uCE58\uB8CC', '2014-03-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140308087', 'psong', 'dkim3', '\uC7A5\uC5FC', '2014-03-08');

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
-- SELECT * FROM Chart;
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_130516023', '130516023', 'dlee', 'nkim',  'pahn',  '\uAC10\uAE30 \uC8FC\uC0AC \uBC0F \uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628100', '130628100', 'dahn',  'nyoon',  'pkim',   '\uD53C\uBD80 \uAC10\uC5FC \uBC29\uC9C0 \uC8FC\uC0AC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628101', '130628100', 'dahn',  'nyoon',  'pkim',   '\uD53C\uBD80 \uAC10\uC5FC \uBC29\uC9C0 \uC8FC\uC0AC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628102', '130628100', 'dahn',  'nyoon',  'pkim',   '\uD53C\uBD80 \uAC10\uC5FC \uBC29\uC9C0 \uC8FC\uC0AC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628103', '130628100', 'dahn',  'nyoon',  'pkim',   '\uD53C\uBD80 \uAC10\uC5FC \uBC29\uC9C0 \uC8FC\uC0AC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('r_131205056', '131205056', 'dkim',  'nshin',  'plee',   '\uC8FC\uC0AC \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_131218024', '131218024', 'dlee2', 'nyou',   'pchoi',  '\uADD3\uC18D\uCCAD\uC18C \uBC0F \uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_131224012', '131224012', 'dkim2', 'nla',    'pjeong', '\uC7A5\uC5FC \uC785\uC6D0\uCE58\uB8CC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_140103001', '140103001', 'dcha',  'nkim2',  'pyou',   '\uC5EC\uB4DC\uB9BC \uCE58\uB8CC\uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_140109026', '140109026', 'djeon', 'nlee',   'pchoi2', '\uC704\uB0B4\uC2DC\uACBD' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140226102', '140226102', 'dhong', 'nkim3',  'plee2',  '\uD654\uC0C1 \uD06C\uB9BC\uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140303003', '140303003', 'dyou',  'npark',  'poh',    '\uC785\uC6D0\uCE58\uB8CC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_140308087', '140308087', 'dkim3', 'nlee2',  'psong',  '\uC7A5\uC5FC \uC785\uC6D0\uCE58\uB8CC' );


SELECT * FROM nurse;

-- seq,pat_id,title,content,regdate(2017-02-15),read_count --
--CREATE SEQUENCE
CREATE SEQUENCE art_seq
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

--CREATE TABLE Article
CREATE TABLE Article(
	art_seq DECIMAL NOT NULL PRIMARY KEY,
	pat_id VARCHAR2(10) NOT NULL,
	title VARCHAR2(10) NOT NULL,
	content VARCHAR2(100)NOT NULL,
	regdate VARCHAR2(10) NOT NULL,
	readCount DECIMAL NOT NULL,
	FOREIGN KEY(pat_id) REFERENCES Patient(pat_id)
	
)
--INSERT
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC548\uB155', '\uC548\uB155\uD558\uC138\uC694?\uD64D\uAE38\uB3D9 \uC785\uB2C8\uB2E4.', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', 'aaa', '\uC548\uB155\uD558\uC138\uC694?\uD55C\uBE5B \uBCD1\uC6D0\uC785\uB2C8\uB2E4.', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'lee', 'bbb', 'bbb', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'song', 'ccc', 'ccc', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'soo', 'ddd', 'ddd', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC548\uB155', '\uC548\uB155\uD558\uC138\uC694?\uD64D\uAE38\uB3D9 \uC785\uB2C8\uB2E4.', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, name, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uBCD1\uC6D0', '\uBCD1\uC6D0 \uD6C4\uAE30', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', 'jjjj', 'jjjj', '2017-02-15',5);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', 'ccc', 'ccc', '2017-02-15',7);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', 'dddrrr', 'rrrrr', '2017-02-15',1);
--
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC798\uAC00', '\uC798\uBA39\uACE0 \uC798\uC0B4\uC544\uB77C \u3160\u3160', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', '\uADF8\uB4E4\uC740', '\uADF8\uB4E4\uC740 \uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0 \uC548\uACE0, \uD669\uAE08\uC2DC\uB300\uB2E4', '2017-01-02',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'lee', '\uC0C8 \uC5F4\uB77D', '\uADF8\uB4E4\uC740 \uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0 \uC548\uACE0, \uD669\uAE08\uC2DC\uB300\uB2E4', '2017-03-07',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'song', '\uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0', '\uADF8\uB4E4\uC740 \uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0 \uC548\uACE0, \uD669\uAE08\uC2DC\uB300\uB2E4', '2017-02-22',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'soo', '\uB05D\uC5D0 \uC548\uACE0', '\uADF8\uB4E4\uC740 \uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0 \uC548\uACE0, \uD669\uAE08\uC2DC\uB300\uB2E4', '2017-02-17',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC548\uB155', '\uADF8\uB4E4\uC740 \uADF8\uAC83\uC740 \uAC83\uC774 \uB05D\uC5D0 \uC548\uACE0, \uD669\uAE08\uC2DC\uB300\uB2E4', '2017-02-01',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC720\uC18C\uB144', '\uC720\uC18C\uB144\uC5D0\uAC8C\uC11C \uC778\uC0DD\uC758 \uC5C6\uC73C\uBA74, \uC2F6\uC774 \uAC00\uB294 \uBD80\uD328\uBFD0\uC774\uB2E4', '2017-02-30',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC778\uC0DD\uC758', '\uC720\uC18C\uB144\uC5D0\uAC8C\uC11C \uC778\uC0DD\uC758 \uC5C6\uC73C\uBA74,', '2017-02-08',5);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uCCAD\uCD98 \uBC1C\uD718', '\uCCAD\uCD98 \uBC1C\uD718\uD558\uAE30 \uADF8\uB4E4\uC740 \uC774\uAC83\uC774\uB2E4.', '2017-02-09',7);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uADF8\uB4E4\uC740', '\uCCAD\uCD98 \uBC1C\uD718\uD558\uAE30 \uADF8\uB4E4\uC740 \uC774\uAC83\uC774\uB2E4', '2017-02-03',1);
--
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uD2BC\uD2BC\uD558\uBA70', '\uD22C\uBA85\uD558\uB418 \uAD73\uC138\uAC8C \uBBF8\uBB18\uD55C \uADF8\uB4E4\uC758 \uB9D0\uC774\uB2E4', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', '\uD2BC\uD2BC', '\uC601\uC6D0\uD788 \uC5C6\uB294 \uC601\uB77D\uACFC', '2017-01-02',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'lee', '\uB05D\uAE4C\uC9C0', '\uC774\uC0C1\uC740 \uC11D\uAC00\uB294 \uB300\uC911\uC744', '2017-03-07',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'song', '\uD53C\uAC00 \uBD80\uD328', '\uC774\uC0C1\uC740 \uC11D\uAC00\uB294 \uB300\uC911\uC744', '2017-02-22',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'soo', '\uD22C\uBA85\uD558\uB418', '\uC601\uC6D0\uD788 \uC5C6\uB294 \uC601\uB77D', '2017-02-17',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uBBF8\uBB18\uD55C', '\uADF8\uB4E4\uC758 \uB9D0\uC774\uB2E4', '2017-02-01',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC601\uC6D0\uD788', '\uADF8\uB4E4\uC758 \uB9D0\uC774\uB2E4', '2017-02-30',1);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC601\uB77D\uACFC', '\uD22C\uBA85\uD558\uB418 \uAD73\uC138\uAC8C', '2017-02-08',5);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC774\uC0C1\uC740', '\uB05D\uAE4C\uC9C0 \uD53C\uAC00 \uBD80\uD328\uBFD0\uC774\uB2E4', '2017-02-09',7);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'hong', '\uC11D\uAC00\uB294', '\uC774\uC0C1\uC740 \uC11D\uAC00\uB294 \uB300\uC911\uC744 \uAC83\uC774\uB2E4', '2017-02-03',1);

INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', '\uC601\uB77D\uACFC', '\uD22C\uBA85\uD558\uB418 \uAD73\uC138\uAC8C', '2016-06-06',5);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', '\uC774\uC0C1\uC740', '\uB05D\uAE4C\uC9C0 \uD53C\uAC00 \uBD80\uD328\uBFD0\uC774\uB2E4', '2016-08-08',7);
INSERT INTO Article (art_seq, pat_id, title, content, regdate, readCount)
VALUES(art_seq.nextval, 'kim', '\uC11D\uAC00\uB294', '\uC774\uC0C1\uC740 \uC11D\uAC00\uB294 \uB300\uC911\uC744 \uAC83\uC774\uB2E4', '2016-09-09',1);
--READ ALL
SELECT art_seq, pat_id, title, content, regdate, readCount  FROM Article;
--READ SOME
SELECT * FROM Article WHERE pat_id = 'hong';
--READ ONE
SELECT * FROM Article WHERE art_seq=1;
--UPDATE
UPDATE Article SET content = '\uC790\uC720\uAC8C\uC2DC\uD310' WHERE pat_id='hong';
--DELETE
DELETE FROM Article WHERE hong = 'hong';

SELECT art_seq,pat_id,title,content,regdate,readCount  FROM Article WHERE title LIKE '%\uC548%';

SELECT COUNT(*) AS count FROM Article;

SELECT t2.*
FROM (SELECT ROWNUM seq,t.* 
FROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2
WHERE t2.seq BETWEEN 11 AND 15;

SELECT t2.*	FROM (SELECT ROWNUM seq,t.*	FROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2	WHERE t2.seq BETWEEN 1 AND 5;

/*
========= app-ChartView ====
@AUTHOR : loveiamsong@gmail.com
@CREATE DATE : 2017-4-1
@UPDATE DATE : 2017-4-1
@DESC : 
==============================
*/
/*진료일 진료no 담당의사 직책 진료과목 병명 처방내역	*/
/*treatDate doctorName doctorPosition doctorMajor chartContents treatContents*/
CREATE VIEW ChartView
AS
SELECT 
  p.pat_id AS patientId,
  p.nur_id AS nurseId,
  p.doc_id AS doctorId,
  p.pat_pass AS pass,
  p.pat_name AS name,
  p.pat_gen AS gen,
  p.pat_jumin AS jumin,
  p.pat_addr AS addr,
  p.pat_phone AS phone,
  p.pat_email AS email,
  p.pat_job AS job,
  c.chart_id AS chartId,
  t.treat_id AS treatmentId,
  c.chart_contents AS chartContents,
  d.major_treat AS doctorMajor,
  d.doc_name AS doctorName,
  d.doc_position AS doctorPosition,
  n.nur_name AS nurseName,
  n.nur_position AS nursePosition,
  t.treat_contents AS treatContents,
  t.treat_date AS treatDate
  FROM 
  Patient p
  LEFT JOIN Chart c ON c.pat_id = p.pat_id
  LEFT join Doctor d ON d.doc_id = p.doc_id  
  LEFT join Nurse n ON n.nur_id = p.nur_id
  LEFT join Treatment t ON t.pat_id = p.pat_id 

  SELECT * FROM ChartView;


