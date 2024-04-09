-- char_length 문자의 갯수
-- length 바이트 수
select char_length('hello'), length('hello'), char_length('안녕'), length('안녕');  

-- concat
-- concat_ws
select concat('dreams', 'come', 'true'), concat_ws('-', '2023', '01', '29');

-- left 왼쪽에서 몇개
-- right 오른쪽에서 몇개
-- substr 몇번째부터 몇개
select left('SQL 공부', 3), right('SQL 공부', 2), substr('SQL 공부', 3,4), substr('SQL 공부', 5); 

-- substring_index 구분자를 만날 때까지 문자열을 잘라냄
-- 인덱스는 몇번째 구분자를 만날때까지 자를지를 결정
select substring_index('서울시 동작구 흑성동', ' ', 1), 
substring_index('서울시 동작구 흑성동', ' ', 2), 
substring_index('서울시 동작구 흑성동', ' ', -1),
substring_index(substring_index('서울시 동작구 흑성동', ' ', 2),' ', -1);

-- lpad : 지정한 길이에서 문자열을 제외한 나머지를 특수문자로 왼쪽에 채움
-- rpad : 오른쪽에 채움
select lpad('sql', 10, '#'), rpad('sql', 10, '#') ;

-- ltrim : 왼쪽 공백제거
-- rtrim : 오른쪽 공백제거
-- trim : 공백제거
select ltrim('   sql'), rtrim('sql   '), trim('   sql   ');  

-- field 문자열의 위치를 찾음
-- (찾는 문자열, 문자열1, 문자열2, 문자열3, ....)
-- find_in_set 문자열 리스트에서 지정한 문자열을 찾음
-- find_in_set(찾는 문자열, 문자열 리스트)
select field('java', 'sql', 'java', 'javascript'); 
select find_in_set('java', 'sql,java,javascript'); 

-- locate : 기준문자열에서 부분문자열의 위치를 찾음
-- locate : (부분문자열, 기준문자열)
select locate('world', 'hello world.');

-- elt 지정한 위치에 있는 문자열을 반환
select elt(2, 'sql', 'java', 'javascript'); 

-- repeat 문자열의 반복
select repeat ('*', 5);

-- replace 문자열의 일부를 다른 문자열로 대체
-- replace(기준문자열, 바꿀 문자열, 바뀔 문자열)
select replace ('010_1234_5678', '_', '-');

-- reverse 문자열 거꾸로 바꿈
select reverse('hello');








