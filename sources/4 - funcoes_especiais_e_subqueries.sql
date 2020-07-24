USE curso_sql;

SELECT * FROM funcionarios;

/* Funções de agregação */
SELECT COUNT(*) from funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1800;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1800 AND departamento = 'ciencia de dados';

SELECT SUM(salario) FROM funcionarios WHERE departamento = 'ciencia de dados';
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'ciencia de dados';
SELECT MAX(salario) FROM funcionarios WHERE departamento = 'ciencia de dados';

/* DISTINCT - Retorna os registros únicos */
SELECT DISTINCT(departamento) FROM funcionarios;

/* COUNT(DISTINCT()) - Retorna a quantidade de valores únicos */
SELECT COUNT(DISTINCT(departamento)) FROM funcionarios;

/* Ordenação crescente */
SELECT * FROM funcionarios ORDER BY nome;

/* Ordenação decrescente */
SELECT * FROM funcionarios ORDER BY nome DESC;

/* Pula a primeira linha e retorna as próximas 3 linhas */
SELECT * FROM funcionarios LIMIT 3 OFFSET 1;

/* Faz a mesma coisa que a linha anterior, porém usando apenas o atributo LIMIT */
SELECT * FROM funcionarios LIMIT 1, 3;

/* Agrupa os dados pela coluna departamento e filtra apenas os registros com média salarial maior que 2000 */
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000;

/* SUBQUERY - Seleciona apenas o nome dos funcionarios da agregação da coluna departamento e 
filtra apenas os registros com média salarial maior que 2000 */
SELECT nome FROM funcionarios
WHERE departamento IN (
	SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000
);

/* Retorna os nomes dos funciorios de cada departamento filtrando pela média salarial maior que 2000 */
SELECT nome FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000;


/* Retorna a quantidade de registros da coluna salario apenas do departamento de ciencia de dados */
SELECT COUNT(salario) FROM funcionarios WHERE departamento = 'ciencia de dados';





