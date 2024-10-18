-- Criar uma tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

-- Inserir dados na tabela
INSERT INTO usuarios (nome, email) VALUES ('João', 'joao@example.com');

-- Alterar a tabela para adicionar uma nova coluna
ALTER TABLE usuarios ADD data_nascimento DATE;

-- Excluir a tabela
DROP TABLE usuarios;
