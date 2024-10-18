-- Criar índice no título dos livros
CREATE INDEX idx_titulo ON livros(titulo);

-- Analisar consulta com EXPLAIN
EXPLAIN SELECT * FROM livros WHERE titulo LIKE '%Exemplo%';
