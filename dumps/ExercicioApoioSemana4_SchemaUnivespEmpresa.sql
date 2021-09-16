create schema Univesp_Empresa;
create table funcionario
(
ident int primary key,
nome varchar(50) not null,
sobrenome varchar(50),
endereco varchar(200),
dtnasc date,
salario numeric(18,2),
sexo char,
supident int NULL,
dnumero int NULL
);

create table dependente
(
fident int,
nome varchar(50),
dtnasc date,
sexo char,
relacionamento varchar (20)
);


create table departamento
(
numero int primary key,
nome varchar (50) not null,
gident int NULL,
dtinicio date
);

create table localizacoes
(
dnumero int,
localizacao varchar(50)
);

create table projeto
(
numero int primary key,
nome varchar (45) not null,
localizacao varchar (50),
dnumero int
);

create table trabalha_em
(
pnumero int,
fident int,
horas int
);

alter table funcionario add constraint fk_func_depto  foreign key (dnumero) references departamento (numero);
alter table funcionario add constraint fk_func_func foreign key (supident) references funcionario (ident) ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table dependente add primary key pk_dependente  (fident,nome);
alter table dependente add constraint fk_dep_func foreign key (fident) references funcionario (ident);

alter table departamento add constraint fk_depto_func  foreign key (gident) references funcionario (ident) ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table localizacoes add primary key pk_localizacoes  (dnumero,localizacao);
alter table localizacoes add constraint fk_loca_depto foreign key (dnumero) references departamento (numero);

alter table projeto add constraint fk_proj_local foreign key (dnumero, localizacao) references localizacoes (dnumero,localizacao);

alter table trabalha_em add primary key pk_trabalhaem (pnumero, fident);
alter table trabalha_em add constraint fk_trab_proj foreign key (pnumero) references projeto (numero);
alter table trabalha_em add constraint fk_trab_func foreign key (fident) references funcionario (ident);

insert into departamento values (1,"Informática",NULL,"2010-01-01");
insert into departamento values (3,"Engenharia",NULL,"2000-08-10");
insert into departamento values (4,"Recursos Humanos",NULL,"2015-05-07");
insert into departamento values (5,"Logistica",NULL,"2021-03-19");


insert into funcionario values (1163,"Claudia","Morais","Rua A,1 SP","1974-08-12",5558.01,"F",NULL,4);
insert into funcionario values (1164,"Jorge","Vila Verde","Rua B,1 SP","1986-01-29",1550.00,"M",1163,1);
insert into funcionario values (1165,"Moacir","Junqueira","Rua F, 57 - SP","1981-11-08",1550.00,"M",1164,1);
insert into funcionario values (1166,"Patrícia","Sorte","Rua F, 22 - SP","1979-06-22",2200.00,"F",1163,4);
insert into funcionario values (1167,"Caio","Brotas","Rua I, 100 - SP","1977-08-15",3400.00,"M",1163,3);
insert into funcionario values (1170,"Antonio","Monde","Rua X, 5 - SP","1985-03-23",2300.00,"M",1167,NULL);

update departamento set gident=1164 where numero=1;
update departamento set gident=1163 where numero=3;
update departamento set gident=1167 where numero=4;


insert into dependente values (1164,"Jorge Vila Verde Filho","2005-09-16","M","Filho");
insert into dependente values (1164,"Manoela Vila Verde","2008-09-23","F","Filha");
insert into dependente values (1167,"Luciana Brotas","2007-03-26","F","Filha");


insert into localizacoes values (1,"São Paulo");
insert into localizacoes values (1,"Ribeirão Preto");
insert into localizacoes values (3,"São Paulo");
insert into localizacoes values (3,"Recife");
insert into localizacoes values (4,"São Paulo");

insert into projeto values (1,"Sistema CRM","São Paulo",1);
insert into projeto values (2,"Esteira de Big Data","São Paulo",1);
insert into projeto values (3,"DRE Financeiro","São Paulo",1);
insert into projeto values (4,"Reestrutura do Parque X","São Paulo",3);

insert into trabalha_em values (1,1164,20);
insert into trabalha_em values (1,1165,13);
insert into trabalha_em values (2,1164,10);
insert into trabalha_em values (2,1165,12);
insert into trabalha_em values (4,1167,40);

