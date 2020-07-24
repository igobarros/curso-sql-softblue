/* Seleciona o banco de dados curso_sql */
USE curso_sql;

/* Storage engines do mysql */
SHOW ENGINES;

/* Criando a tabela contas_bancarias */
CREATE TABLE contas_bancarias(
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    PRIMARY KEY (id) 
) engine = InnoDB;

/* Adicionando dados na tabela contas_bancarias */
INSERT INTO contas_bancarias (titular, saldo) VALUES ('Douglas', 1000);
INSERT INTO contas_bancarias (titular, saldo) VALUES ('Thiago', 2000);

SELECT * FROM contas_bancarias;

/* ---------------------- ROLLBACK ---------------- */
/* Inicia uma transação */
START TRANSACTION;

UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 2;

/* Volta atrás a transação, caso algo dê errado */
ROLLBACK;


/* ---------------------- COMMIT ---------------- */
/* Inicia uma transação */
START TRANSACTION;

UPDATE contas_bancarias SET saldo = saldo - 100 WHERE id = 1;
UPDATE contas_bancarias SET saldo = saldo + 100 WHERE id = 2;

/* Confirma a transação caso operação seja concluida com sucesso */
COMMIT;
