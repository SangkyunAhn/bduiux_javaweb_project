DROP TABLE t_board;

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

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(1, 0, '신제품 출시 안내(볼링공)', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(2, 0, '서버 점검 안내', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(3, 0, '신제품 출시 안내(볼링화)', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(4, 0, '긴급 서버 점검 안내', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(5, 0, '일부 제품 단종 안내', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(6, 0, '신제품 출시 안내(볼링가방)', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(7, 0, '신제품 출시 안내(볼링아대)', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(8, 0, '서버 점검 안내', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(9, 0, '신제품 출시 안내(퍼프볼/로진백)', '공지사항입니다.', NULL, SYSDATE(), 'admin');

INSERT INTO t_board(articleNO, parentNO, title, content, imageFileName, writeDate, id)
VALUES(10, 0, '서버 점검 안내', '공지사항입니다.', NULL, SYSDATE(), 'admin');

COMMIT;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT * FROM t_board;