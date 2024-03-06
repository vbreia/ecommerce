USE ecommerce;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL,
    categoria VARCHAR(32) NOT NULL,
    descricao VARCHAR(256) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    id_fornecedor INT NOT NULL,
    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id)
);