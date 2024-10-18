-- Criar uma tabela de pedidos com relacionamento com a tabela de usuários
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    produto VARCHAR(100),
    quantidade INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Selecionar pedidos e informações dos usuários relacionados
SELECT usuarios.nome, pedidos.produto, pedidos.quantidade
FROM pedidos
JOIN usuarios ON pedidos.usuario_id = usuarios.id;
