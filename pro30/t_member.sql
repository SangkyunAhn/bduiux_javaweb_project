DROP TABLE t_member CASCADE CONSTRAINTS;

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE t_member(
    id VARCHAR(10) PRIMARY KEY,
    pwd VARCHAR(10),
    name VARCHAR(50),
    email VARCHAR(50),
    joinDate DATETIME DEFAULT SYSDATE()
);

INSERT INTO t_member VALUES('lee', '1212', '이순심', 'lee@test.com', SYSDATE());
INSERT INTO t_member VALUES('park', '1234', '박혁거세', 'park@test.com', SYSDATE());
INSERT INTO t_member VALUES('kim', '5678', '김유신', 'kim@test.com', SYSDATE());

-- SQLINES LICENSE FOR EVALUATION USE ONLY
SELECT * FROM t_member;

UPDATE t_member SET name='이순신' WHERE id='lee';

DELETE FROM t_member WHERE id='lee';

COMMIT;