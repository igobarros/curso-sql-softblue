/* Seleciona o banco de dados curso_sql */
USE curso_sql;

/* Criando a tabela pedidos */
CREATE TABLE pedidos(
	id int unsigned not null auto_increment,
    descricao varchar(100) not null,
    valor double not null default '0',
    pago varchar(3) not null default 'Não',
    PRIMARY KEY(id)
);

/* Adicionando dados a tabela pedidos */
INSERT INTO pedidos (descricao, valor) VALUES ('TV', 3000);
INSERT INTO pedidos (descricao, valor) VALUES ('Geladeira', 1400);
INSERT INTO pedidos (descricao, valor) VALUES ('DVD Player', 300);

/* Realizando um update na tabela pedidos */
UPDATE pedidos SET pago = 'Sim' WHERE id = 8;

SELECT * FROM pedidos;

/* Criando uma Store Procedure */
CREATE DEFINER='root'@'localhost' PROCEDURE 'limpa_pedidos'()
BEGIN
	SET SQL_SAFE_UPDATES = 0;
	DELETE FROM pedidos WHERE pago = 'Não';
END

/* Invoca a store procedure limpa_pedidos() */
CALL limpa_pedidos();

/* Criando a tabela estoque */
CREATE TABLE estoque(
	id int unsigned not null auto_increment,
    descricao varchar(100) not null,
    quantidade int not null,
    PRIMARY KEY(id)
);

/* Criando uma trigger invocando a store procedure limpa_pedidos */
CREATE TRIGGER gatilhos_limpa_pedidos
BEFORE INSERT
ON estoque
FOR EACH ROW
CALL limpa_pedidos;

/* Adicionando dados a tabela estoque */
INSERT INTO estoque (descricao, quantidade) VALUES ('Geladeira', 100);
INSERT INTO estoque (descricao, quantidade) VALUES ('Sofar', 2);

SELECT * FROM estoque;

SELECT * FROM pedidos;






