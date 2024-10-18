-- Inserir um novo livro
INSERT INTO livros (titulo, autor, descricao, preco, estoque, categoria_id) 
VALUES ('Livro Exemplo', 'Autor Exemplo', 'Descrição do livro exemplo', 29.90, 10, 1);

-- Atualizar o preço de um livro
UPDATE livros SET preco = 24.90 WHERE id = 1;

-- Excluir um usuário
DELETE FROM usuarios WHERE email = 'usuario@example.com';
