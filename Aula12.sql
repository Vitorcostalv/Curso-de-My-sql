-- Criar um índice na coluna de email
CREATE INDEX idx_email ON usuarios(email);

-- Analisar a execução de uma consulta
EXPLAIN SELECT * FROM usuarios WHERE email = 'joao@example.com';
