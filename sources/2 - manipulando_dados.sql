USE curso_sql;

/* Adicionando dados na tabela funcionarios */
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Maria Jose', 1000, 'estagiário');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Igo', 4000, 'ciencia de dados');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Rita', 4000, 'ciencia de dados');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Júlia', 5500, 'TI');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Guilherme', 2000, 'marketing');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('José Fernando', 1300, 'limpesa');

/* Consultando a tabela funcionarios */
SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE nome = 'Igo';
SELECT * FROM funcionarios WHERE salario <= 2000;

/* Realiando um update na tabela funcionarios */
UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 6;

/*
SET SQL_SAFE_UPDATES = 0; HABILITA O SAFE UPDATE
SET SQL_SAFE_UPDATES = 1; DESABILITA O SAFE UPDATE
*/

/* Realiando um update na tabela funcionarios */
UPDATE funcionarios SET salario = salario * 1.1;


/* Realiando um update na tabela funcionarios */
UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

/* Removendo um registro da tabela funcionario */
DELETE FROM funcionarios WHERE id = 3;


/* Adicionando dados na tabela veiculos */
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'FIAT', 'SBC-2020');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'FOX', 'ABC-2918');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (null, 'Motocicleta', 'PIN-3355');

SELECT * FROM veiculos;

/* Realiando um update na tabela funcionarios */
UPDATE veiculos SET funcionario_id = 6 WHERE id = 2;


/* Adicionando dados na tabela veiculos */
INSERT INTO salarios (faixa, inicio, fim) VALUES ('engenheiro de dados jr', 2000, 4000);
INSERT INTO salarios (faixa, inicio, fim) VALUES ('cientista de dados pleno', 4000, 8000);

SELECT * FROM salarios;

SELECT nome AS Funcionários, salario FROM funcionarios f WHERE f.salario < 2000;


# UNION - Retorna os registros sem repetições
SELECT * FROM funcionarios WHERE nome = 'Igo'
UNION
SELECT * FROM funcionarios WHERE id = 3;

# UNION ALL - Retorna todos os registro
SELECT * FROM funcionarios WHERE nome = 'Igo'
UNION ALL
SELECT * FROM funcionarios WHERE id = 2;











