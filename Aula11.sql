-- Iniciar uma transação
START TRANSACTION;

-- Executar algumas operações
INSERT INTO usuarios (nome, email) VALUES ('Carlos', 'carlos@example.com');

-- Confirmar a transação
COMMIT;

-- Ou reverter
ROLLBACK;
