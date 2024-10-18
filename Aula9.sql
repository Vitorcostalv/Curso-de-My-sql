-- Criar uma procedure para inserir um usuário
DELIMITER //
CREATE PROCEDURE inserir_usuario(IN nome_usuario VARCHAR(100), IN email_usuario VARCHAR(100))
BEGIN
    INSERT INTO usuarios (nome, email) VALUES (nome_usuario, email_usuario);
END //
DELIMITER ;

-- Chamar a procedure
CALL inserir_usuario('Maria', 'maria@example.com');
