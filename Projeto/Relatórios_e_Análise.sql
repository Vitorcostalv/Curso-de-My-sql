-- Relatório de livros mais vendidos
SELECT livros.titulo, SUM(itens_pedido.quantidade) AS total_vendido
FROM itens_pedido
JOIN livros ON itens_pedido.livro_id = livros.id
GROUP BY livros.id
ORDER BY total_vendido DESC;

-- Faturamento mensal
SELECT DATE_FORMAT(data, '%Y-%m') AS mes, SUM(valor_total) AS faturamento
FROM pedidos
WHERE status = 'concluido'
GROUP BY mes
ORDER BY mes DESC;
