mysql -u root -p
--input password
create user 'hanbit' identified by 'hanbit';
exit
GRANT ALL PRIVILEGES ON *.* TO 'hanbit' IDENTIFIED BY 'hanbit' WITH GRANT OPTION;
CREATE DATABASE hanbit;
mysql - u hanbit -p hanbit  --여기서 -p 뒤에 hanbit 은 DATABASE 이름이다.
--input password
SHOW tables;

CREATE table test(...............) default character set utf8 collate utf8_general_ci ;

CREATE TABLE Test(
.........
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


DROP TABLE IF EXISTS Chart;
DROP TABLE IF EXISTS Treatment;
DROP TABLE IF EXISTS Patient;
DROP TABLE IF EXISTS Nurse;
DROP TABLE IF EXISTS Doctor;


SELECT * FROM TAB;

-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
CREATE TABLE Doctor(
    doc_id VARCHAR(20) NOT NULL,   
    doc_pass VARCHAR(20) NOT NULL, 
    major_treat VARCHAR(20) NOT NULL, -- 전공
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
    pat_email VARCHAR(20)NULL,
    pat_job VARCHAR(20) NOT NULL,
    PRIMARY KEY(pat_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

--    FOREIGN KEY(nur_id) REFERENCES Nurse(nur_id),
--    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id)

ALTER TABLE Patient
	ADD CONSTRAINT fk_doctor_to_patient
	FOREIGN KEY(doc_id)	
	REFERENCES Doctor(doc_id)
	ON DELETE SET NULL;

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
    treat_id VARCHAR(20) NOT NULL,
    doc_id VARCHAR(20) NOT NULL,
    pat_id VARCHAR(20) NOT NULL,
    nur_id VARCHAR(20) NOT NULL,
    chart_contents VARCHAR(100) NOT NULL,
    PRIMARY KEY(chart_id)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;


-- dummy 입력 부분-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
-- SELECT * FROM Doctor;
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee', '1', '소아과', '이태정', 'M', '010-333-1340', 'ltj@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dahn', '1', '내과', '안성기', 'M', '011-222-0987', 'ask@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim', '1', '외과', '김민종', 'M', '010-333-8743', 'kmj@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee2', '1', '피부과', '이태서', 'M', '019-777-3764', 'lts@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim2', '1', '소아과', '김연아', 'F', '010-555-3746', 'kya@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dcha', '1', '내과', '차태현', 'M', '011-222-7643', 'cth@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('djeon', '1', '소아과', '전지현', 'F', '010-999-1265', 'jjh@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dhong', '1', '피부과', '홍길동', 'M', '016-333-7263', 'hgd@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dyou', '1', '방사선과', '유재석', 'M', '010-222-1263', 'yjs@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim3', '1', '외과', '김병만', 'M', '010-555-3542', 'kbm@hanbh.com', '전문의');

-- nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
-- SELECT * FROM Nurse;
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim', '1', '소아과', '김은영', 'F', '010-555-8751', 'key@hanbh.com', '수간호사');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyoon', '1', '내과', '윤성애', 'F', '016-333-8745', 'ysa@hanbh.com', '수간호사');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nshin', '1', '피부과', '신지원', 'M', '010-666-7646', 'sjw@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyou', '1', '방사선과', '유정화', 'F', '010-333-4588', 'yjh@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nla', '1', '내과', '라하나', 'F', '010-222-1340', 'nhn@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim2', '1', '소아과', '김화경', 'F', '019-888-4116', 'khk@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee', '1', '소아과', '이선용', 'M', '010-777-1234', 'lsy@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim3', '1', '외과', '김현', 'M', '010-999-8520', 'kh@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('npark', '1', '피부과', '박성완', 'M', '010-777-4996', 'psw@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nur_pass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee2', '1', '외과', '이서연', 'F', '010-222-3214', 'lsy2@hanbh.com', '간호사');

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
-- SELECT * FROM Patient;
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pahn', 'nkim', 'dlee', '1', '안상건', 'M', '232345', '서울', '010-555-7845', 'ask@ab.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pkim', 'nyoon', 'dahn', '1', '김성룡', 'M', '543545', '서울', '010-333-7812', 'ksr@bb.com', '자영업');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee', 'nshin', 'dkim', '1', '이종진', 'M', '433424', '부산', '019-888-4859', 'ljj@ab.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi', 'nyou', 'dlee2', '1', '최광석', 'M', '677675', '당진', '010-222-4847', 'cks@cc.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pjeong', 'nla', 'dkim2', '1', '정한경', 'M', '744533', '강릉', '010-777-9630', 'jhk@ab.com', '교수');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pyou', 'nkim2', 'dcha', '1', '유원현', 'M', '765546', '대구', '016-777-0214', 'ywh@cc.com', '자영업');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi2', 'nlee', 'djeon', '1', '최재정', 'M', '454543', '부산', '010-555-4187', 'cjj@bb.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee2', 'nkim3', 'dhong', '1', '이진희', 'F', '119768', '서울', '010-888-3675', 'ljh@ab.com', '교수');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('poh', 'npark', 'dyou', '1', '오나미', 'F', '234234', '속초', '010-999-6541', 'onm@cc.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('psong', 'nlee2', 'dkim3', '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');

-- treat_id, pat_id, doc_id, treat_contents, treat_date
-- SELECT * FROM Treatment;
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130516023', 'pahn', 'dlee', '감기, 몸살', '2013-05-16');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130628100', 'pkim', 'dahn', '피부 트러블 치료', '2013-06-28');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131205056', 'plee', 'dkim', '목 디스크로 MRI 촬영', '2013-12-05');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131218024', 'pchoi', 'dlee2', '중이염', '2013-12-18');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131224012', 'pjeong','dkim2', '장염', '2013-12-24');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140103001', 'pyou', 'dcha', '여드름 치료', '2014-01-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140109026', 'pchoi2','djeon', '위염', '2014-01-09');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140226102', 'plee2', 'dhong', '화상치료', '2014-02-26');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140303003', 'poh', 'dyou', '교통사고 외상치료', '2014-03-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140308087', 'psong', 'dkim3', '장염', '2014-03-08');

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
-- SELECT * FROM Chart;
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_130516023', '130516023', 'dlee', 'nkim', 'pahn', '감기 주사 및 약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628100', '130628100', 'dahn', 'nyoon', 'pkim', '피부 감염 방지 주사' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('r_131205056', '131205056', 'dkim', 'nshin', 'plee', '주사 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_131218024', '131218024', 'dlee2', 'nyou', 'pchoi', '귓속청소 및 약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_131224012', '131224012', 'dkim2', 'nla', 'pjeong', '장염 입원치료' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_140103001', '140103001', 'dcha', 'nkim2', 'pyou', '여드림 치료약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_140109026', '140109026', 'djeon', 'nlee', 'pchoi2', '위내시경' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140226102', '140226102', 'dhong', 'nkim3', 'plee2', '화상 크림약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140303003', '140303003', 'dyou', 'npark', 'poh', '입원치료' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_140308087', '140308087', 'dkim3', 'nlee2', 'psong', '장염 입원치료' );
--INSERT(Article)
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pahn','전인','전인 가슴이 사람은 있는 불러 가치를 끓는다. 넣는 설레는 청춘의 이상이 이것이다.','2017-02-01','7887');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pkim','전인','사랑의 자신과 무엇을 바로 맺어, 새가 어디 보라. 고동을 이상이 그들에게 우리의 때까지 있다. 따뜻한 소리다.이것은 이상은 눈이 반짝이는 청춘이 피다.','2017-02-01','7887');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'plee','반짝이는','반짝이는 착목한는 구할 기관과 현저하게 열락의 소리다.이것은 청춘에서만 사막이다. 때에, 몸이 피어나기 약동하다. 구할 인간은 놀이 이상의 이상의 것이다. 아니한 살았으며, 청춘의 꾸며 꽃이 사람은 운다.','2017-02-05','5555');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pchoi','못할','못할 뭇 위하여 트고, 어디 거선의 이것이다. 이상의 따뜻한 할지라도 밥을 같이, 황금시대를 보내는 봄바람이다. 그와 청춘이 고행을 교향악이다.','2017-02-15','3333');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pjeong','아름답고','아름답고 우는 꽃이 노래하며 인간의 것이다. 피어나기 끝까지 황금시대를 희망의 보이는 말이다. 얼음과 이는 이상의 가치를 위하여 생명을 약동하다. 별과 불어 바이며, 인생을 풍부하게 끓는다. 풍부하게 못할 장식하는 별과 작고 인간의 같은 무한한 이것이다.','2017-02-11','1111');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pyou','오버워치 후기','아름답고 총은 쏘는데 맞질 않는다.','2017-02-09','6665');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pchoi2','못하다 후기','못하다 하는 피는 바이며, 있으랴? 눈에 튼튼하며, 그들의 얼음에 두손을 뿐이다. 없으면, 만천하의 얼음이 사막이다. 유소년에게서 아름답고 무엇을 끓는 투명하되 많이 내는 타오르고 것이다. 따뜻한 따뜻한 무엇을 자신과 방황하였으며, 것이다.','2017-02-03','2222');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'plee2','메트릭스 후기','못하다 하는 피는 바이며, 있으랴? 눈에 튼튼하며, 그들의 얼음에 두손을 뿐이다. 없으면, 만천하의 얼음이 사막이다. 유소년에게서 아름답고 무엇을 끓는 투명하되 많이 내는 타오르고 것이다. 따뜻한 따뜻한 무엇을 자신과 방황하였으며, 것이다.','2017-02-05','1234');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'poh','오딘스피어 후기','인생에 품으며, 그들은 것이다. 인류의 청춘 더운지라 이성은 노년에게서 약동하다. 대중을 일월과 그림자는 전인 이상 우리 용기가 아니다. 물방아 지혜는 주며, 무엇을 있으며, 칼이다..','2017-02-14','6547');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'psong','Java JSP 공부 후기','꽃이 가진 그와 있는 눈이 우리 끝까지 운다. 생명을 불어 새 싶이 기쁘며, 노년에게서 역사를 트고, 운다. 천고에 피가 뜨고, 위하여 가장 품으며, 날카로우나 생명을 이것이다.?','2017-02-15','7675');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'psong','끓는','끓는 생의 그들의 인생을 품에 뜨거운지라, 설산에서 있다. 수 오아이스도 방황하여도, 무엇이 때까지 힘차게 새가 쓸쓸하랴? 따뜻한 곳이 그들을 황금시대다. 가장 밝은 풀이 투명하되 이것이다.','2017-02-11','765');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'poh','평화스러운','평화스러운 이상 대고, 곳으로 우는 것이다. 희망의 대한 끓는 그들은 뼈 그것은 피어나기 것이다. 끓는 이상은 인류의 힘차게 그러므로 얼음과 보내는 그림자는 보라.','2017-01-18','7742');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'plee','능히','능히 낙원을 가는 이성은 이상의 사랑의 가는 그리하였는가? 곧 가장 그들의 현저하게 얼음과 목숨을 피다. 있는 영원히 인간이 힘있다.','2017-02-05','2222');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'plee','OOP 은 상추다.','Encupsulation, information hiding, abstracion, polymorphism','2017-02-15','5555');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pkim','인도하겠다는 ','인도하겠다는 그들의 미인을 기관과 것이다. 붙잡아 살았으며, 방황하였으며, 맺어, 따뜻한 청춘은 때까지 하는 이것이다. 하여도 착목한는 인간의 따뜻한 싶이 보라.','2017-02-15','5555');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pkim','하였으며','하였으며, 이 그들은 만물은 이 이상이 가치를 것은 ? 수 오아이스도 인생에 충분히 소금이라 천하를 교향악이다. 듣기만 이상의 더운지라 약동하다. 영원히 있으며, 가진 교향악이다.','2017-02-15','5555');
INSERT INTO Article(art_seq,pat_id,title,content,regdate,read_count)
VALUES(art_seq.nextval,'pyou','반짝이는','반짝이는 일월과 그들은 끓는 청춘 이상의 아름답고 ? 얼음 가는 하는 불어 예가 찬미를 스며들어 말이다. 위하여서 일월과 석가는 방지하는 천자만홍이 아니다.','2017-02-15','5555');

SELECT * FROM patient;



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
	pat_id VARCHAR(15) NOT NULL,
	title VARCHAR(100),
	contents VARCHAR(100),
	regdate VARCHAR(10),
	read_count VARCHAR(10),
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
	