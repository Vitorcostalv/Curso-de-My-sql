-- Selecionar usuários que já fizeram pedidos
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM pedidos);
