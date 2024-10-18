-- Inserir um pedido
INSERT INTO pedidos (usuario_id, valor_total) VALUES (1, 59.80);

-- Atualizar o status do pedido
UPDATE pedidos SET status = 'enviado' WHERE id = 1;
