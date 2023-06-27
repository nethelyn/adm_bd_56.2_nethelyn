create database departamentos;
use departamentos;

# criacao da tabela departamentos
create table departamentos (
id int auto_increment,
nome varchar(60),
primary key (id) 
);
 
 # inserindo dados na tabela departamentos
insert into departamentos values (1, "financeiros");
insert into departamentos values (2,"vendas");
insert into departamentos values (3, "desenvolvimentos de produtos");
insert into departamentos values (4, "TI");
insert into departamentos values (5, "juridico");
insert into departamentos values (6, "qualidade");
insert into departamentos values (7, "administracao");
insert into departamentos values (8, "atendimento ao cliente");
insert into departamentos values (9, "recurss humanos");
insert into departamentos values (10, "marketing");
insert into departamentos values (11, "producao");
insert into departamentos values (12, "executivo");
insert into departamentos values (13, "gerente financeiro");
insert into departamentos values (14, "gerente de marketing");
insert into departamentos values (15, "gerente de producao");

select * from departamentos;

#alteracao da tabela funcionarios
#adicionando a coluna id_departamento como chave estrangeira
#relacionamento entre tabelas
alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamentos 
foreign key (id_departamento) references departamentos(id);

select * from funcionarios;

#atualiza a tabela de funcionarios e altera a tabela de departamentos
update funcionarios
set id_departamento = 1 
where id = 1;

update funcionarios
set id_departamento = 2
where id = 3 or id = 4 or id= 5;

update funcionarios
set id_departamento = 5
where id = 10 or id = 11 or id= 12 or id=13 ;

update funcionarios
set id_departamento = 9
where id = 14 or id = 15 or id= 16 or id= 17;

#descobrindo id do funcionario com maior salario
select * from funcionarios where id order by salario desc; 

#atualiza o funcionario com o maior salario para departamento 
update funcionarios
set id_departamento = 12
where id =303;

update funcionarios
set id_departamento = 13
where id =601;

update funcionarios
set id_departamento = 15
where id =881;

update funcionarios
set id_departamento = 14
where id =856;

