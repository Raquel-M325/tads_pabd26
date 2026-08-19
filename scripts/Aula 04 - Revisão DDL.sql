select * from funcionario;

select pnome, unome, numero_departamento from funcionario;

select pnome || '' || unome, numero_departamento from funcionario; --juntou os nomes, mas buga o nome da coluna

--alias
select pnome || '' || unome as "Nome Completo", numero_departamento as "Dep" from funcionario; --não aceita aspas simples, tem que ser duplas!
select pnome || '' || unome nome, numero_departamento dep from funcionario;

select all numero_departamento from funcionario;

-- Exibir valores distintos que não se repetem
select distinct numero_departamento from funcionario;

-- round: especifica casas decimais, só aceita NUMERIC
select pnome || '' || unome nome, salario, round(salario::numeric*0.11, 2) inss from funcionario;

--WHERE: filtro
select cpf, pnome, unome from funcionario
where endereco='Natal-RN'

select cpf, pnome, unome from funcionario
where numero_departamento=1 and salario>9000;

select cpf, pnome, unome from funcionario
where salario>=8000 and salario<=10000;

select cpf, pnome, unome from funcionario
where salario not between 8000 and 10000;

-- %: substitui qualquer cadeia textual
-- _: substitui qualquer o caractere específico

select cpf, pnome, unome from funcionario
where endereco like '%PI';

select cpf, pnome, unome from funcionario
where pnome like '%ana%';

-- ilike: comparação desconsiderando case sensitive
select cpf, pnome, unome from funcionario
where endereco ilike '%pi'; --quando voce não sabe se é maiusculo ou minusculo, entao o ilike ajuda

select cpf, pnome, unome from funcionario
where endereco like '%R_';