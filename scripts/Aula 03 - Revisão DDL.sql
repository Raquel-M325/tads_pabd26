-- Inserir
insert into funcionario values
('11122233344', 'Joao', 'Silva', 'joao@tads.ifrn', 'Natal-RN', 9990, '2000-01-01', 'M', null, null),
('22233344455', 'Joana', 'Sales', 'joana@tads.ifrn', 'Parnamirim-RN', 8990, '2001-11-01', 'M', null, null),
('33344455566', 'Jose', 'Sousa', 'jose@tads.ifrn', 'Teresina-PI', 7990, '2002-12-01', 'M', null, null);

insert into funcionario(cpf, pnome, unome, email, salario, data_nasc, sexo) values 
('44455566677', 'Jobson', 'Soares', 'jobson@tads.ifrn', 6990, '2003-03-03', 'M');

-- Atualizar
update funcionario 
set sexo='F'
where cpf='22233344455'
returning cpf, pnome, unome, sexo;

-- Remover
delete from funcionario
where cpf='44455566677'
returning cpf, pnome, unome;

insert into departamento values
(1, 'TI', '88888888888', current_date),
(2, 'financeiro', '99999999999', current_date - interval '3 days'),
(3, 'RH', '77777777777', current_date - interval '5 days');
-- internal: year, month, day. Possibilidade de uso: '1 year, 1 month, 12 days'

-- O supervisor de todos os funcionarios deve ser o cpf='1212121212121'
update funcionario
set cpf_supervisor='1212121212121'
where cpf <> '1212121212121';

update funcionario
set numero_departamento=1
where cpf in ('1212121212121', '1010101010101');

update funcionario
set numero_departamento=2
where cpf in ('77777777777');

update funcionario
set numero_departamento=3
where cpf in ('55555555555');
