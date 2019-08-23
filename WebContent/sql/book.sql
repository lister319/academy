select * from book;

drop table book;

create table book (
id number not null
, title varchar2(50)
, author varchar2(20)
, price number default 0
, qty number default 0
, primary key(id)
);

--�Ϸù�ȣ�� ����� ���� nvl(max()+1,1) ������ ��
-- nvl(A,B) A�� null�̸� B, null�� �ƴϸ� A
select max(id)+1 from book;
select nvl(max(id)+1, 1) from book;

--�ڷ� �Է�
insert into book
values( (select nvl(max(id)+1, 1) from book), 'OS', 'Wiley', 30700, 50 );
insert into book
values( (select nvl(max(id)+1, 1) from book), 'Java', 'OReily', 35000, 10 );
insert into book
values( (select nvl(max(id)+1, 1) from book), 'C++', '����', 45000, 20 );
insert into book
values( (select nvl(max(id)+1, 1) from book), 'HTML5', '���', 30000, 15 );
insert into book
values( (select nvl(max(id)+1, 1) from book), 'Oracle', '�Ѻ�', 40000, 25 );

-- �Է� �ڷ� Ȯ��
select * from book;

--id�� 5���� ���ڵ�
select * from book where id=5;

commit;


