CREATE DATABASE bootcamp CREATE TABLE public.etudiants (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  birthdate VARCHAR(100) NOT NULL,
)
INSERT INTO public.etudiants("firstname", "lastname", birthdate)
VALUES ('Ziade', 'Ange', '20/10/2022'),
  ('Marc', 'Bénichou', '1998-11-02'),
  ('Yann', 'Cohen', '03/12/2010'),
  ('Léa', 'Bénichou', '27/07/1987'),
  ('Amélie', 'Dux', '07/04/1996'),
  ('David', 'Grez', '14/06/2003'),
  ('Omer', 'Simpson', '03/10/1980');
--1 
select *
from public.etudiants --- 2 
select "firstname",
  "lastname"
from public.etudiants -- 3
  -- 3.1 
select "firstname",
  "lastname"
from public.etudiants
where "ID" = 2 -- 3.2 
select "firstname",
  "lastname"
from public.etudiants
where "Name" = 'Bénichou'
  and "firstname" = 'Marc' -- 3.3 
select "firstname",
  "lastname"
from public.etudiants
where "Name" = 'Bénichou'
  or "firstname" = 'Marc' -- 3.4 
select "firstname",
  "lastname"
from public.etudiants
where "firstname" like '%a%' --3.5 
select "firstname",
  "lastname"
from public.etudiants
where "firstname" like 'a%' --3.6 
select "firstname",
  "Name"
from public.etudiants
where "firstname" like '%a' -- 3.7 
select "firstname",
  "lastname"
from public.etudiants
where left(right("firstname", 2), 1) = 'a' -- 3.8 
select "firstname",
  "lastname"
from public.etudiants
where "ID" in(1, 3) -- 4 
select *
from public.etudiants
where birthdate >= '01-01-2000'