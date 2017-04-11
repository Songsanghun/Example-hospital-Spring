SELECT * FROM TAB;

-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
CREATE TABLE Doctor(
    doc_id VARCHAR2(20),
    doc_pass VARCHAR2(20) NOT NULL, 
    major_treat VARCHAR2(20) NOT NULL,
    doc_name VARCHAR2(20) NOT NULL,
    doc_gen VARCHAR2(2) NOT NULL,
    doc_phone VARCHAR2(20),
    doc_email VARCHAR2(20) NOT NULL,
    doc_position VARCHAR2(20) NOT NULL,
    PRIMARY KEY(doc_id)
);

-- nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
CREATE TABLE Nurse(
    nur_id VARCHAR2(20),
    nur_pass VARCHAR2(20) NOT NULL,
    major_job VARCHAR2(20) NOT NULL,
    nur_name VARCHAR2(20) NOT NULL,
    nur_gen VARCHAR2(20) NOT NULL,
    nur_phone VARCHAR2(20),
    nur_email VARCHAR2(20),
    nur_position VARCHAR2(20) NOT NULL,
    PRIMARY KEY(nur_id)
);

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
CREATE TABLE Patient(
    pat_id VARCHAR2(20),
    nur_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    pat_pass VARCHAR2(20) NOT NULL,
    pat_name VARCHAR2(20) NOT NULL,
    pat_gen VARCHAR2(2) NOT NULL,
    pat_jumin VARCHAR2(20) NOT NULL,
    pat_addr VARCHAR2(20) NOT NULL,
    pat_phone VARCHAR2(20),
    pat_email VARCHAR2(20),
    pat_job VARCHAR2(20) NOT NULL,
    PRIMARY KEY(pat_id),
    FOREIGN KEY(nur_id) REFERENCES Nurse(nur_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id)
);

-- treat_id, pat_id, doc_id, treat_contents, treat_date
CREATE TABLE Treatment(
    treat_id VARCHAR2(20),
    pat_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    treat_contents VARCHAR2(100) NOT NULL,
    treat_date VARCHAR2(20) NOT NULL,
    PRIMARY KEY(treat_id),
    FOREIGN KEY(pat_id) REFERENCES Patient(pat_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id)
);

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
CREATE TABLE Chart(
    chart_id VARCHAR2(20),
    treat_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    pat_id VARCHAR2(20) NOT NULL,
    nur_id VARCHAR2(20) NOT NULL,
    chart_contents VARCHAR2(100) NOT NULL,
    PRIMARY KEY(chart_id),
    FOREIGN KEY(treat_id) REFERENCES Treatment(treat_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id),
    FOREIGN KEY(pat_id) REFERENCES Patient(pat_id),
    FOREIGN KEY(nur_id) REFERENCES Nurse(nur_id)
);


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
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('psong',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');

INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Ahri',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Leblanc',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Syndra',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Twisted Fate',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Zed',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Yasuo',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Irelia',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Riven',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Leesin',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Elise',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Evelyn',  'nlee2',  'dkim3',  '1', '\uC1A1\uC131\uBB35', 'M', '987643', '\uC11C\uC6B8', '010-222-5874', 'ssm@bb.com', '\uD559\uC0DD');
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
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('r_131205056', '131205056', 'dkim',  'nshin',  'plee',   '\uC8FC\uC0AC \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_131218024', '131218024', 'dlee2', 'nyou',   'pchoi',  '\uADD3\uC18D\uCCAD\uC18C \uBC0F \uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_131224012', '131224012', 'dkim2', 'nla',    'pjeong', '\uC7A5\uC5FC \uC785\uC6D0\uCE58\uB8CC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_140103001', '140103001', 'dcha',  'nkim2',  'pyou',   '\uC5EC\uB4DC\uB9BC \uCE58\uB8CC\uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_140109026', '140109026', 'djeon', 'nlee',   'pchoi2', '\uC704\uB0B4\uC2DC\uACBD' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140226102', '140226102', 'dhong', 'nkim3',  'plee2',  '\uD654\uC0C1 \uD06C\uB9BC\uC57D \uCC98\uBC29' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140303003', '140303003', 'dyou',  'npark',  'poh',    '\uC785\uC6D0\uCE58\uB8CC' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_140308087', '140308087', 'dkim3', 'nlee2',  'psong',  '\uC7A5\uC5FC \uC785\uC6D0\uCE58\uB8CC' );
 
SELECT * FROM PATIENT;



-- seq, id, title, contents, regdate(2017-02-15), read_count --

DROP TABLE Article;
DROP SEQUENCE art_seq;
-- CREATE SEQUENCE art_seq

	CREATE SEQUENCE art_seq
	 START WITH     1
	 INCREMENT BY   1
	 NOCACHE
	 NOCYCLE;
	
-- CREATE TABLE Article
	CREATE TABLE Article(
	art_seq  DECIMAL ,
	pat_id VARCHAR2(15) NOT NULL,
	title VARCHAR2(100),
	contents VARCHAR2(100),
	regdate VARCHAR2(10),
	read_count VARCHAR2(10),
	PRIMARY KEY(art_seq),
	FOREIGN KEY(pat_id) REFERENCES Patient(pat_id)
	);

-- INSERT(11\uAC74)
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pahn','\uC5BC\uB808\uB9AC','\uC11C\uBE44\uC2A4 \uC885\uB8CC','2017-04-08','100');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pahn','\uAF34\uB808\uB9AC','\uACF5\uC815\uC704 \uC778\uC0AC \uC678\uC555','2017-01-29','101');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pahn','\uC2DC\uC9D1\uAC00\uB294\uB0A0','\uAD8C\uC120\uD0DD \uB300\uC804\uC2DC\uC7A5 \uACF5\uC9C1\uC120\uAC70\uBC95 \uC9D5\uC5ED\uD615','2017-03-10','102');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pkim','\uC6B4\uC218\uC88B\uC740\uB0A0','\uBE0C\uB79C\uB4DC \uB85C\uACE0 \uC18D \uC228\uC5B4\uC788\uB294 \uC758\uBBF8','2017-01-11','103');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'plee','\uC815\uBCF4\uCC98\uB9AC','def','2015-01-12','104');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pchoi','\uC2DC\uD5D8','efg','2012-01-13','105');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pjeong','\uD569\uACA9','  \uC5B4\uC81C \uC790\uAE30 \uC545\uD50C \uC77D\uB294 \uC720\uC2B9\uBBFC','2017-01-14','106');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pyou','\uB108\uB294','\uD53D\uBE44','2017-01-15','107');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'pchoi2','\uB098\uC758','\uD648\uC1FC\uD551\uC5D0\uC11C \uAC01\uC120\uBBF8','2014-11-16','108');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'poh','\uBCF4\uBB3C\uC778\uAC00','\uB0A8\uC790\uAE30\uC790\uAC00 \uC5EC\uC790\uC575\uCEE4\uC5D0\uAC8C \uACE0\uBC31\uD558\uAE30','2017-01-30','109');
	INSERT INTO Article(art_seq, pat_id, title, contents, regdate, read_count ) VALUES(art_seq.nextval,'psong','\uC4F0\uB808\uAE34\uAC00','\uC9C4\uC815\uD55C \uAC78\uADF8\uB86D \uB0A8\uD32C','2013-02-18','110');
-- READ ALL                      
	SELECT art_seq, id, title, contents, regdate, read_count FROM Article;
-- READ SOME
	SELECT art_seq, id, title, contents, regdate, read_count FROM Article WHERE id='';
-- READ ONE
	SELECT art_seq, id, title, contents, regdate, read_count FROM Article WHERE art_seq='';
-- UPDATE
	UPDATE Article  SET  WHERE seq='';
-- DELETE
	DELETE FROM %s WHERE art_seq='';
	
	SELECT art_seq, id, title, contents, regdate, read_count FROM Article WHERE title LIKE '%\uC548%';
SELECT art_seq, id, title, contents, regdate, read_count FROM Article;
SELECT COUNT(*) AS COUNT FROM article;
	
SELECT art_seq, pat_id, title, contents, regdate, read_count FROM Article;
	
SELECT t2.*
FROM (SELECT ROWNUM seq,t.* 
FROM (SELECT * FROM Article ORDER BY art_seq DESC) t) t2
WHERE t2.seq BETWEEN 11 AND 15 ;
	