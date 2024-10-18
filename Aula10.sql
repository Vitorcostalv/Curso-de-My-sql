-- Criar um trigger para atualizar o timestamp de modificação de um usuário
CREATE TRIGGER atualizar_data_modificacao
BEFORE UPDATE ON usuarios
FOR EACH ROW
SET NEW.data_modificacao = NOW();
