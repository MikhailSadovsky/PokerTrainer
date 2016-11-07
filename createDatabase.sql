drop table results;
drop table answers;
drop table questions;
drop table students;

create table students (s_id int NOT NULL AUTO_INCREMENT, s_name VARCHAR(100), s_pass VARCHAR(100), lvl CHAR(1),PRIMARY KEY (s_id)); 
create table questions (q_id int NOT NULL AUTO_INCREMENT, q_text VARCHAR(100), PRIMARY KEY (q_id));
create table answers (a_id int NOT NULL AUTO_INCREMENT, q_id int, a_text VARCHAR(100), is_true CHAR(1), PRIMARY KEY (a_id),FOREIGN KEY  (q_id)REFERENCES questions(q_id));
create table results(r_id int NOT NULL AUTO_INCREMENT, s_id int, cor_ans int, lvl CHAR(1), PRIMARY KEY (r_id),  FOREIGN KEY  (s_id )REFERENCES students(s_id));


INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Alex', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'A');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Alex1', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'A');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Alex2', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'A');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Alex3', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'A');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Mixa', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'N');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Mixa1', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'N');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Mixa2', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'N');
INSERT INTO students ( s_name, s_pass, lvl) VALUES ('Mixa3', '$2a$10$McGXjrn...KK0wHwEKM4cOiKmeVVclWC7meAySB6pcXtEL3lDh0TG', 'N');


INSERT INTO results ( s_id, cor_ans, lvl) VALUES (1, 9, 'A');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES ( 2, 10, 'A');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES ( 3, 10, 'A');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES ( 4, 8, 'A');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES (5, 3, 'N');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES (6, 2, 'N');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES (7, 1, 'N');
INSERT INTO results ( s_id, cor_ans, lvl) VALUES (8, 4, 'N');



INSERT INTO questions (q_text) VALUES ( '��� ����� ����?');
INSERT INTO questions (q_text) VALUES ( '����� ������ �������?');
INSERT INTO questions (q_text) VALUES ( '������� ���� ����������� �� �����?');
INSERT INTO questions (q_text) VALUES ( '��� ����� ����-����?');
INSERT INTO questions (q_text) VALUES ( '������� ���� �� ���� � ��������� �������?');
INSERT INTO questions (q_text) VALUES ( '��� ����� ������ ���� �� ������� �� �������, � ��� ��������� �����������?');
INSERT INTO questions (q_text) VALUES ( '��� ����� ���?');
INSERT INTO questions (q_text) VALUES ( '��� ����� �����?');
INSERT INTO questions (q_text) VALUES ( '��� ����� �����-����?');
INSERT INTO questions (q_text) VALUES ( '��� ����� ��������?');


INSERT INTO answers ( q_id, a_text, is_true) VALUES (1, '���� ���� ����� �����', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (1, '�������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (1, '�������� ����� �� ����� �������� ��� �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (1, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (2, '������� � ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (2, '������ � ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (2, '������� � �����', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (2, '������ � �������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (3, '5', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (3, '4', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (3, '3', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (3, '2', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (4, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (4, '���� ���� ����� �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (4, '���� ���� ����� ����� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (4, '��� ����� ������ ����������� � ��� ����� �������', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (5, '5', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (5, '4', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (5, '3', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (5, '2', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (6, '�������', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (6, '���������', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (6, '������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (6, '�������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (7, '�� ����� �������� 4 �����', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (7, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (7, '���� ���� ����� �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (7, '��� ����� ������ ����������� � ��� ����� �������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (8, '�� ����� �������� 4 �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (8, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (8, '�� ����� �������� 5 ����', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (8, '��� ����� ������ ����������� � ��� ����� �������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (9, '�� ����� �������� 4 �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (9, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (9, '���� ���� ����� ����� ������', 'Y');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (9, '��� ����� ������ ����������� � ��� ����� �������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (10, '�� ����� �������� 4 �����', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (10, '���� ���� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (10, '���� ���� ����� ����� ������', 'N');
INSERT INTO answers ( q_id, a_text, is_true) VALUES (10, '����� �����-��', 'Y');





--��������� ����������� ��������� � ������ � � b
select a.c/b.c as p1, c.c/b.c as p2 from
(select count(*) as c  from results) b,
(select count(*) as c from results where lvl = 'A') a, 
(select count(*) as c from results where lvl = 'N') c;

--�������� �����������
select a.c/d.c  as p1, c.c/b.c as p2 from
(select count(*) as c  from results where lvl = 'N') b,
(select count(*) as c  from results where lvl = 'A') d,
(select count(*) as c from results where cor_ans < 5 and lvl = 'A') a, 
(select count(*) as c from results where cor_ans < 5 and lvl = 'N') c;

--������� ������ ������������� �����������(������ 8 ����� ���������� �������� � �������� ��� ���������� ���������� �������������)
select cond.p1 * a.p1 / (cond.p1 * a.p1 + cond.p2 * a.p2) as p1, cond.p2 * a.p2/ (cond.p1 * a.p1 + cond.p2 * a.p2) as p2 from
(select a.c/b.c as p1, c.c/b.c as p2 from
(select count(*) as c  from results) b,
(select count(*) as c from results where lvl = 'A') a, 
(select count(*) as c from results where lvl = 'N') c) a, 
(select a.c/d.c  as p1, c.c/b.c as p2 from
(select count(*) as c  from results where lvl = 'N') b,
(select count(*) as c  from results where lvl = 'A') d,
(select count(*) as c from results where cor_ans <= 8 and lvl = 'A') a, 
(select count(*) as c from results where cor_ans <= 8 and lvl = 'N') c) cond
;
