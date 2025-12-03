-- employees 테이블을 생성해주세요
CREATE TABLE employee (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name varchar(100),
	position varchar(100),
	salary decimal(10,2)
);

-- 직원 데이터를 employees에 추가해주세요
INSERT into employee (name,position,salary)
VALUES 
('혜린', 'PM', 90000),
('은우', 'Frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 7800),
('민혁', 'Frontend', 96000),
('하온', 'Backend', 130000);

-- 모든 직원의 이름과 연봉 정보만을 조회하는 쿼리를 작성해주세요
select name,position from employee;

-- Frontend 직책을 가진 직원 중에서 연봉이 90000 이하인 직원의 이름과 연봉을 조회하세요.
select * from employee where position = 'Frontend' and salary < 90000;

-- PM 직책을 가진 모든 직원의 연봉을 10% 인상한 후 그 결과를 확인하세요.
update employee set salary = salary * 1.1 where position = 'PM';
select * from employee e where position = 'PM';

-- 모든 Backend' 직책을 가진 직원의 연봉을 5% 인상하세요.
update employee set salary = salary * 1.05 where position = 'Backend';
select * from employee e where position = 'Backend';

-- 민혁 사원의 데이터를 삭제하세요
DELETE FROM employee WHERE name = '민혁';

-- 모든 직원을 position 별로 그룹화하여 각 직책의 평균 연봉을 계산하세요.
select position,COUNT(*) AS cnt,SUM(salary) / COUNT(*) as avg from employee group BY position;

-- employees 테이블을 삭제하세요.
drop table employee;

