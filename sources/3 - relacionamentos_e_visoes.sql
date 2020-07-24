USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

# FULL JOIN
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;


/* Criando a tabela cpfs */
CREATE TABLE cpfs(
	id int unsigned not null,
    cpf varchar(14) not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id)
);

/* Adicionando os dados na tabela cpfs */
INSERT INTO cpfs (id, cpf) VALUES (1, '111.111.111-11');
INSERT INTO cpfs (id, cpf) VALUES (2, '222.222.222-22');
INSERT INTO cpfs (id, cpf) VALUES (3, '333.333.333-33');
INSERT INTO cpfs (id, cpf) VALUES (4, '444.444.444-44');
INSERT INTO cpfs (id, cpf) VALUES (5, '555.555.555-55');
INSERT INTO cpfs (id, cpf) VALUES (6, '666.666.666-66');

SELECT * FROM cpfs;

# INNER JOIN
SELECT * FROM funcionarios f INNER JOIN cpfs c ON f.id = c.id;
SELECT * FROM funcionarios f INNER JOIN cpfs USING(id);

/* Criando a tabela clientes */
CREATE TABLE clientes(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY(id),
    CONSTRAINT fk_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES clientes (id)
);

/* Adicionando os dados na tabela clientes */
INSERT INTO clientes (id, nome, quem_indicou) VALUES (1, 'André', NULL);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (2, 'Samuel', 1);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (3, 'Carlos', 2);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (4, 'Dugaiel', 1);

SELECT * FROM clientes;

/* INNER JOIN */
SELECT a.nome AS cliente, b.nome AS indicação FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;

# Joins de 3 tabelas
SELECT f.nome, f.salario, f.departamento, v.veiculo, v.placa, c.cpf FROM funcionarios f
INNER JOIN veiculos v ON v.funcionario_id = f.id
INNER JOIN cpfs c ON c.id = f.id;


/* Criando uma view */
CREATE VIEW funcionarios_salario_menor_que_2000
AS
SELECT * FROM funcionarios as f WHERE f.salario <= 2000;

/* Selecionando os dados da view */
SELECT * FROM funcionarios_salario_menor_que_2000;









