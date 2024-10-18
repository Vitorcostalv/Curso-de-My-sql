-- Criar uma view para mostrar pedidos e nomes dos usuários
CREATE VIEW pedidos_com_usuarios AS
SELECT usuarios.nome, pedidos.produto, pedidos.quantidade
FROM pedidos
JOIN usuarios ON pedidos.usuario_id = usuarios.id;

-- Usar a view
SELECT * FROM pedidos_com_usuarios;
