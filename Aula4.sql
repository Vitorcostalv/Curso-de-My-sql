-- Contar o número de usuários
SELECT COUNT(*) AS total_usuarios FROM usuarios;

-- Calcular a média de idade dos usuários
SELECT AVG(YEAR(CURDATE()) - YEAR(data_nascimento)) AS idade_media FROM usuarios;

-- Agrupar por ano de nascimento e contar
SELECT YEAR(data_nascimento) AS ano, COUNT(*) AS total
FROM usuarios
GROUP BY ano;
