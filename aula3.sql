-- Selecionar todos os dados da tabela de usuários
SELECT * FROM usuarios;

-- Selecionar usuários com filtro
SELECT nome, email FROM usuarios WHERE nome = 'João';

-- Ordenar os resultados pelo nome
SELECT * FROM usuarios ORDER BY nome ASC;
