-- Procedimento para adicionar um usuário com verificação de entrada
DELIMITER //
CREATE PROCEDURE adicionar_usuario(IN nome_usuario VARCHAR(100), IN email_usuario VARCHAR(100), IN senha_usuario VARCHAR(255))
BEGIN
    IF NOT EXISTS (SELECT 1 FROM usuarios WHERE email = email_usuario) THEN
        INSERT INTO usuarios (nome, email, senha) VALUES (nome_usuario, email_usuario, senha_usuario);
    END IF;
END //
DELIMITER ;
