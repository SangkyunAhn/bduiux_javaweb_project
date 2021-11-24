DROP TABLE t_board;

-- SQLINES DEMO *** �� 생성
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE t_board(
    articleNO bigint PRIMARY KEY,
    parentNO bigint default 0,
    title VARCHAR(500) NOT NULL,
    content VARCHAR(4000),
    imageFileName VARCHAR(100),
    writeDate DATETIME DEFAULT SYSDATE() NOT NULL,
    id VARCHAR(10)
);

-- SQLINES DEMO *** ��트 글 추가
INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(1, 0, '테스트 글입니다.', '테스트 글입니다.', NULL, SYSDATE(), 'hong');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(2, 0, '안녕하세요', '상품 후기입니다.', NULL, SYSDATE(), 'hong');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(4, 0, '김유신입니다.', '김유신 테스트 글입니다.', NULL, SYSDATE(), 'kim');

COMMIT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT * FROM t_board;