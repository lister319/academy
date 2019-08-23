create table memo (
idx number not null primary key, --글번호
writer varchar2(50) not null, --이름
memo varchar2(4000) not null, --내용
post_date date default sysdate --날짜
);

select * from memo order by idx desc;