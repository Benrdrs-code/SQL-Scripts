CREATE DATABASE consulta_bd;
Use consulta_bd;

create table cargo(
 id int identity primary key,
 nome_cargo varchar(50) not null)
 create table funcionario(
 id int identity primary key,
 nome_funcionario varchar(50) not null,
 salario_func numeric (18,2),
 fk_idCargo int,
 foreign key (fk_idCargo) references cargo (id))
 
 /*Insert dos cargos*/
 insert into cargo(nome_cargo)
 values ('Gerente'),
 ('Coordenador de Sistemas'),
 ('Coordenador de Infra'),
 ('Analista de Sistemas'),
 ('Analista de Infra'),
 ('Estagiário de Sistemas'),
 ('Estagiário de Infra');

 /*Insert dos fUNCIONARIOS*/
 insert into funcionario(nome_funcionario, salario_func, fk_idCargo)
 values
 ('Silvio', 5000.00,1),
 ('José', 1500.00,5),
 ('Raul', 700.00,7),
 ('Cleide', 3000.00,2),
 ('Debora', 5000.00,1),
 ('Gabriela', 4500.00,1),
 ('Luiz', 1500.00,4),
 ('Erick', 2000.00,null),
 ('Larrisa', 1000.00,null),
 ('Thais', 700.00,null);