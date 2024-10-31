-- user 테이블
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL
);

-- schedule 테이블
CREATE TABLE schedules (
    schedule_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    todo VARCHAR(45) NOT NULL,
    password INT,
    last_update DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES uswer(user_id)
);

-- user 생성 query
INSERT INTO users (user_id, name) VALUES
(1, 'kim');

-- 일정 생성 query
INSERT INTO schedules (schedule_id, user_id, todo, password, "last_update") VALUES
(1, 1, '공부하기', 1234, '2024-10-31 17:18:00');

-- 전체 일정 조회 query
SELECT schedule_id, user_id, todo, last_update
FROM schedules;

-- 선택 일정 조회 query
SELECT schedule_id, user_id, todo, last_update
FROM schedules
WHERE schedule_id = 1;

-- 선택 일정 수정 query
UPDATE schedules
SET todo = '장보기'
WHERE schedule_id = 1;

-- 선택 일정 삭제 query
DELETE FROM schedules WHERE schedule_id = 1;