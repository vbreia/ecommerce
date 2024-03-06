USE ecommerce;

CREATE TABLE IF NOT EXISTS vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    observacao VARCHAR(256),
    status CHAR NOT NULL,
    cod_rastreio VARCHAR(13),
    id_produto INT NOT NULL,
    id_cliente INT NOT NULL,
    id_transportadora INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_transportadora) REFERENCES transportadora(id)
);