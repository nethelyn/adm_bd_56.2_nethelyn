#deleta a tabela
delete from funcionarios;

#usa-se para ter certeza de deletar a tabela
set sql_safe_updates = 0;

select * from funcionarios;

#seleciona a contagem da quantidade de funcionarios 
select id_departamento, count(*) as total_funcionarios 
from funcionarios 
group by id_departamento;

select id_departamento, count(*) as total_funcionarios 
from funcionarios 
where salario>10000
group by id_departamento;

select id_departamento, count(*) as total_funcionarios 
from funcionarios 
where salario between 5000 and 10000
group by id_departamento;

select id_departamento, sum(salario) as soma_salario
from funcionarios
group by id_departamento;






