create table memo (
idx number not null primary key, --�۹�ȣ
writer varchar2(50) not null, --�̸�
memo varchar2(4000) not null, --����
post_date date default sysdate --��¥
);

select * from memo order by idx desc;