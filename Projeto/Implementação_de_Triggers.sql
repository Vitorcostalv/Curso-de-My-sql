-- Trigger para atualizar o estoque de livros
CREATE TRIGGER atualizar_estoque
AFTER INSERT ON itens_pedido
FOR EACH ROW
BEGIN
    UPDATE livros SET estoque = estoque - NEW.quantidade WHERE id = NEW.livro_id;
END;
