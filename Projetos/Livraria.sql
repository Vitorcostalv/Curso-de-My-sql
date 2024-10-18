-- Criar a tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255),
    tipo ENUM('cliente', 'administrador') DEFAULT 'cliente'
);

-- Criar a tabela de categorias
CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) UNIQUE
);

-- Criar a tabela de livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Criar a tabela de pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('pendente', 'processando', 'enviado', 'concluido', 'cancelado') DEFAULT 'pendente',
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Criar a tabela de itens de pedido
CREATE TABLE itens_pedido (
    pedido_id INT,
    livro_id INT,
    quantidade INT,
    PRIMARY KEY (pedido_id, livro_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Criar a tabela de pagamentos
CREATE TABLE pagamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor DECIMAL(10, 2),
    metodo_pagamento ENUM('cartao_credito', 'boleto', 'paypal') DEFAULT 'cartao_credito',
    status ENUM('pendente', 'pago', 'falha') DEFAULT 'pendente',
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);
