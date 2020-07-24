# Libera o acesso a um IP específico
#           usuário			IP 	                        senha
CREATE USER 'cursoA'@'200.234.312.123' IDENTIFIED BY 'password123';

# Libera acesso a qualquer IP
CREATE USER 'cursoA'@'%' IDENTIFIED BY 'password123';

# Libera o acesso ao IP local/padrão
CREATE USER 'cursoA'@'localhost' IDENTIFIED BY '321';

# Dando acesso a todas as permissões do banco curso_sql
GRANT ALL ON curso_sql.* TO 'cursoA'@'localhost';

/* Criando e liberando acesso a um usuário */
CREATE USER 'cursoA'@'%' IDENTIFIED BY '123';
GRANT SELECT ON curso_sql.* TO 'cursoA'@'%';
GRANT INSERT ON curso_sql.funcionarios TO 'cursoA'@'%';

# Removendo acessos do usuário
REVOKE INSERT ON curso_sql.funcionarios FROM 'cursoA'@'%';
REVOKE INSERT ON curso_sql.* FROM 'cursoA'@'%';
REVOKE ALL ON curso_sql.* FROM 'cursoA'@'%';

# Remove um usuário
DROP USER 'cursoA'@'%';

# Lista os usuários do mysql
SELECT User FROM mysql.user;

# Lista as permissões que o usuário tem
SHOW GRANTS FOR 'cursoA'@'%';