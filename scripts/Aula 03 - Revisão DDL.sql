-- Inserir
insert into funcionario values
('11222333444', 'Joao', 'Silva', 'joao@tads.ifrn', 'Natal-RN', 9990, '2000-01-01', 'M', null, null),
('11111111111', 'Joana', 'Sales', 'joana@tads.ifrn', 'Parnamirim-RN', 8990, '2001-01-01', 'M', null, null),
('22222222222', 'Jose', 'Sousa', 'jose@tads.ifrn', 'Teresina-PI', 7990, '2002-12-01', 'M', null, null);

insert into funcionario(cpf, pnome ,unome, email, salario, data_nasc, sexo) values
('44444444444', 'Jobson', 'Soares', 'job@tads.ifrn', 6990, '2003-03-03', 'M');


-- Atualizar
update funcionario
set sexo='F' --o que voce quer mudar
where cpf='11111111111' --tem que ser igual ao que está cadastrado
returning cpf, pnome, unome, sexo;


-- Remover
delete from funcionario
where cpf='44444444444'
returning cpf, pnome, unome;