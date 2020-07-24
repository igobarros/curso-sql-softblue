
/* Criando o banco de dados */
CREATE DATABASE curso_sql;

/* Selecionando o banco de dados criado */
USE curso_sql;

/* Criando a tabela funcionarios */
CREATE TABLE funcionarios(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    PRIMARY KEY (id)
);

/* Criando a tabela veiculos */
CREATE TABLE veiculos(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(45) not null default '',
    PRIMARY KEY (id),
    CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (funcionario_id) REFERENCES funcionarios (id)
);

/* Criando a tabela salarios */
CREATE TABLE salarios(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    PRIMARY KEY (faixa)
);


/* Alterando atributos da tabela */
ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(50) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(45) not null;


/* Removendo uma tabela inteira */
DROP TABLE salarios;

/* Criando índice */
CREATE INDEX departamentos ON funcionarios (departamento);
CREATE INDEX nomes ON funcionarios (nome(6));









