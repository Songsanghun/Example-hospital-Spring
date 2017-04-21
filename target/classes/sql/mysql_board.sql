
--CREATE TABLE Article
CREATE TABLE Article(
	art_seq INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	writer_id VARCHAR(10) NOT NULL,
	name VARCHAR(10) NOT NULL,
	title VARCHAR(10) NOT NULL,
	content VARCHAR(100)NOT NULL,
	reg_date VARCHAR(10) NOT NULL,
	read_count INT NOT NULL
);
--INSERT
INSERT INTO Article (writer_id, name, title, content, reg_date, read_count)
VALUES('hong', '홍길동', '안녕', '안녕하세요?홍길동 입니다.', '2017-02-15',1);
INSERT INTO Article (writer_id, name, title, content, reg_date, read_count)
VALUES( 'kim', '김유신', 'aaa', '안녕하세요?한빛 병원입니다.', '2017-02-15',1);
INSERT INTO Article (writer_id, name, title, content, reg_date, read_count)
VALUES( 'lee', '이순신', 'bbb', 'bbb', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'song', '송시열', 'ccc', 'ccc', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'soo', '박승수', 'ddd', 'ddd', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '안녕', '안녕하세요?홍길동 입니다.', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '병원', '병원 후기', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', 'jjjj', 'jjjj', '2017-02-15',5);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', 'ccc', 'ccc', '2017-02-15',7);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', 'dddrrr', 'rrrrr', '2017-02-15',1);
--
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '잘가', '잘먹고 잘살아라 ㅠㅠ', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'kim', '김유신', '그들은', '그들은 그것은 것이 끝에 안고, 황금시대다', '2017-01-02',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'lee', '이순신', '새 열락', '그들은 그것은 것이 끝에 안고, 황금시대다', '2017-03-07',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'song', '송시열', '그것은 것이 끝에', '그들은 그것은 것이 끝에 안고, 황금시대다', '2017-02-22',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'soo', '박승수', '끝에 안고', '그들은 그것은 것이 끝에 안고, 황금시대다', '2017-02-17',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '안녕', '그들은 그것은 것이 끝에 안고, 황금시대다', '2017-02-01',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '유소년', '유소년에게서 인생의 없으면, 싶이 가는 부패뿐이다', '2017-02-30',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '인생의', '유소년에게서 인생의 없으면,', '2017-02-08',5);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '청춘 발휘', '청춘 발휘하기 그들은 이것이다.', '2017-02-09',7);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '그들은', '청춘 발휘하기 그들은 이것이다', '2017-02-03',1);
--
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '튼튼하며', '투명하되 굳세게 미묘한 그들의 말이다', '2017-02-15',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'kim', '김유신', '튼튼', '영원히 없는 영락과', '2017-01-02',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'lee', '이순신', '끝까지', '이상은 석가는 대중을', '2017-03-07',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'song', '송시열', '피가 부패', '이상은 석가는 대중을', '2017-02-22',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'soo', '박승수', '투명하되', '영원히 없는 영락', '2017-02-17',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '미묘한', '그들의 말이다', '2017-02-01',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '영원히', '그들의 말이다', '2017-02-30',1);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '영락과', '투명하되 굳세게', '2017-02-08',5);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '이상은', '끝까지 피가 부패뿐이다', '2017-02-09',7);
INSERT INTO Article ( writer_id, name, title, content, reg_date, read_count)
VALUES( 'hong', '홍길동', '석가는', '이상은 석가는 대중을 것이다', '2017-02-03',1);
--READ ALL
SELECT * FROM Article;
--READ SOME
SELECT * FROM Article WHERE id = 'hong';
--READ ONE
SELECT * FROM Article WHERE art_seq=1;
--UPDATE
UPDATE Article SET content = '자유게시판' WHERE id='hong';
--DELETE
DELETE FROM Article WHERE hong = 'hong';

SELECT id,title,content,reg_date,read_count  FROM Article WHERE title LIKE '%안%';

SELECT COUNT(*) AS count FROM Article;

<!-- 아이디와 제목 검색 -->

SELECT t2.*
		from (select @ROWNUM := @ROWNUM + 1 AS rownum
		,t.title
		,t.content
		,t.reg_date
		,t.art_seq
		from Article t
		,(SELECT @ROWNUM :=0) R
			WHERE t.writer_id = 'hong'
			AND t.title LIKE '%안%'
			ORDER BY t.reg_date DESC
		) t2
where t2.rownum between 1 and 10
order by t2.rownum asc;

<!-- 아이디 검색-->

SELECT t2.*
		from (select @ROWNUM := @ROWNUM + 1 AS rownum
		,t.title
		,t.content
		,t.reg_date
		,t.art_seq
		from Article t
		,(SELECT @ROWNUM :=0) R
			WHERE t.writer_id = 'hong'
			
			ORDER BY t.reg_date DESC
		) t2
where t2.rownum between 1 and 10
order by t2.rownum asc;

<!--전체글 조회-->

SELECT t2.*
		from (select @ROWNUM := @ROWNUM + 1 AS rownum
		,t.title
		,t.content
		,t.reg_date
		,t.art_seq
		from Article t
		,(SELECT @ROWNUM :=0) R
			ORDER BY t.reg_date DESC
		) t2
where t2.rownum between 1 and 10
order by t2.rownum asc;

