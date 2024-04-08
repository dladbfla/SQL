use testdb;

-- 1. 모든 사원의 이름과 부서번호를 조회하세요.
select 이름, 부서번호 from 사원;

-- 2. 사원중에서 직위가 과장인 사원들의 이름과 직위를 사원번호의 내림차순으로 조회하세요
select 이름, 직위, 사원번호 from 사원 where 직위 = '과장' order by 사원번호 desc;

-- 3. 고객번호가 'CCOPI'인 고객의 고객회사명과 담당자명을 조회하세요
select 고객회사명, 담당자명 from 고객 where 고객번호 = 'CCOPI';

-- 4. 주문일이 2021년 5월 1일 이후인 주문의 주문번호와 주문일을 최신 주문일 순으로 조회하세요
select 주문번호, 주문일 from 주문 where 주문일 > '2021-05-01' order by 주문일;

-- 5. 제품의 재고가 50개 미만인 제품들의 제품명과 재고를 조회하세요
select 제품명, 재고 from 제품 where 재고 < 50;

-- 6. 사원 중에서 남성 사원의 이름과 성별을 조회하세요.
select 이름, 성별 from 사원 where 성별 = '남';

-- 7. 고객의 마일리지가 1000이상인 고객들의 고객회사명과 마일리지를 조회하세요 결과는 마일리지가 높은 순으로 정렬하세요
select 고객회사명, 마일리지 from 고객 where 마일리지 >= 1000 order by 마일리지 desc;

-- 8. 주문세부에서 제품번호가 77인 제품의 주문번호와 주문수량을 조회하세요.
select 주문번호, 주문수량 from 주문세부 where 제품번호 = 77;

-- 9. 주문일이 2021년 1월 1일이전인 주문의 주문번호와 주문일을 조회하세요.
select 주문번호, 주문일 from 주문 where 주문일 < '2021-01-01';

-- 10. 사원의 성별이 여성이고, 직위가 '사원'인 사원들의 이름과 성별, 직위를 조회하세요.
select 이름, 성별, 직위 from 사원 where 성별 = '여' and 직위 = '사원';

-- 11. 제품의 단가가 8000원 이상인 제품들 중에서 제품명 순으로 정렬하여 조회하세요.
select * from 제품 where 단가 >= 8000 order by 제품명;

-- 12. 주문세부에서 주문수량이 5개 이상인 주문의 주문번호와 주문수량을 조회하세요. 결과는 주문수량이 많은 순으로 정렬하세요.
select 주문번호, 주문수량 from 주문세부 where 주문수량 >= 5 order by 주문수량 desc;

-- 13. 사원의 생일이 1990년 1월 1일 이후인 사원들의 이름과 생일을 조회하세요.
select 이름, 생일 from 사원 where 생일 > '1990-01-01';

-- 14. 사원의 직위가 '사원'인 사람들 중에서 가장 최근에 입사한 사원의 이름과 입사일을 조회하세요.
select 이름, 입사일 from 사원 where 직위 = '사원' order by 입사일 desc limit 1;

-- 15. 고객들 중에서 도시가 '대전광역시'인 고객들의 고객번호와 고객회사명을 조회하세요.
select 고객번호, 고객회사명 from 고객 where 도시 = '대전광역시';