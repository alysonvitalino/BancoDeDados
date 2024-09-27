DROP DATABASE eletronicos;
CREATE DATABASE eletronicos;
USE eletronicos;


CREATE TABLE categoria
	(
    id_categoria INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoria_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE fornecedor
	(
    id_fornecedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fornecedor_nome VARCHAR(255)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE produto
	(
    id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto_nome VARCHAR(255) NOT NULL,
    produto_preco DECIMAL (10,2),
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE empregado
	(
    id_empregado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    empregado_nome VARCHAR(255) NOT NULL,
    id_supervisor INT,
	FOREIGN KEY (id_supervisor) REFERENCES empregado (id_empregado)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Anna Julia', 1);
INSERT INTO empregado (empregado_nome) VALUES ('Bianca');
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Rafaela', 1);
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Nycolas', 2);
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Carol', 3);

SELECT * FROM empregado;

INSERT INTO categoria (categoria_nome) VALUES ('Eletronicos');
INSERT INTO categoria (categoria_nome) VALUES ('Acessorios');
INSERT INTO categoria (categoria_nome) VALUES ('Computadores');
INSERT INTO categoria (categoria_nome) VALUES ('Aparelhos de Audio');
INSERT INTO categoria (categoria_nome) VALUES ('Cameras');

INSERT INTO fornecedor (fornecedor_nome) VALUES ('TechCorp');
INSERT INTO fornecedor (fornecedor_nome) VALUES ('Gadgets  Inc.');
INSERT INTO fornecedor (fornecedor_nome) VALUES ('CompuTech');
INSERT INTO fornecedor (fornecedor_nome) VALUES ('AudioMax');
INSERT INTO fornecedor (fornecedor_nome) VALUES ('PhotoPro');

INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Smartphone', 1, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Smartwatch', 1, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fone de Ouvido Bluetooth', 1, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Televisão 4K', 1, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Console de Videogame', 1, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Projetor', 1, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Receptor de TV Satelital', 1, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Headphones', 1, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Smart TV', 1, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera de Segurança', 1, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Leitor de Blu-ray', 1, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Roteador Wi-Fi', 1, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Microfone USB', 1, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Soundbar', 1, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Amplificador de Sinal', 1, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Carregador Solar', 1, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Smartband', 1, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Óculos de Realidade Virtual', 1, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Consoles de Jogos Portátil', 1, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Tablet com Teclado', 1, 5);

INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Carregador Portátil', 2, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Carregador', 2, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Capinha de Celular', 2, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Película Protetora', 2, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Suporte Veicular', 2, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Mochila para Notebook', 2, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Organizador de Cabos', 2, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Adaptador de Rede', 2, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Base Refrigeradora para Notebook', 2, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Estabilizador de Energia', 2, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Almofada de Pescoço', 2, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Protetor de Tela', 2, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Cartão de Memória', 2, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Teclado e Mouse', 2, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Suporte para Celular', 2, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Hub USB', 2, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Carregador Rápido', 2, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Proteção de Teclado', 2, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Suporte para Notebook', 2, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Power Bank', 2, 5);

INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Monitor 24"', 3, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Laptop', 3, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Teclado Mecânico', 3, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Mouse Wireless', 3, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('HD Externo', 3, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Computador All-in-One', 3, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Monitor Curvo', 3, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Mesa de Trabalho', 3, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Processador Intel', 3, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Memória RAM 16GB', 3, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Placa de Vídeo NVIDIA', 3, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Gabinete para PC', 3, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fonte de Alimentação', 3, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('SSD 1TB', 3, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Leitor de Cartão', 3, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Cadeira Ergonomica', 3, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Webcam HD', 3, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Dock Station', 3, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Sistema de Resfriamento', 3, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Teclado Compacto', 3, 5);

INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Headphone com Microfone', 4, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fone de Ouvido', 4, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Amplificador de Áudio', 4, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Sistema de Som Home Theater', 4, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Microfone Condensador', 4, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fone de Ouvido Over-Ear', 4, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Caixa de Som Portátil', 4, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Soundbar com Subwoofer', 4, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Microfone de Estúdio', 4, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Amplificador de Instrumentos', 4, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Caixa de Som para Festa', 4, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fone de Ouvido Bluetooth com Cancelamento', 4, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Mixer de Áudio', 4, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Gravador de Áudio Digital', 4, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Caixa de Som com Microfone', 4, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Fone de Ouvido In-Ear', 4, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Sistema de Som para Sala', 4, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Microfone Sem Fio', 4, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Equalizador de Áudio', 4, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Amplificador de Fones', 4, 5);

INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera Mirrorless', 5, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera DSLR', 5, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera de Ação', 5, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Lente Grande Angular', 5, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Tripé de Câmera', 5, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera DSLR', 5, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera de Segurança', 5, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Lente Telefoto', 5, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Flash Externo', 5, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Bag para Câmera', 5, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera Instantânea', 5, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Lente Macro', 5, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Filtro UV', 5, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Câmera de Vigilância', 5, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Estabilizador de Imagem', 5, 5);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Lente Fisheye', 5, 1);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Monitor de Campo', 5, 2);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Gimbal para Câmera', 5, 3);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Baterias para Câmera', 5, 4);
INSERT INTO produto (produto_nome, id_categoria, id_fornecedor) VALUES ('Tripé de Mão', 5, 5);

UPDATE produto SET produto_preco = 499.99 WHERE id_produto = 1;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 2;
UPDATE produto SET produto_preco = 149.99 WHERE id_produto = 3;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 4;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 5;
UPDATE produto SET produto_preco = 999.99 WHERE id_produto = 6;
UPDATE produto SET produto_preco = 229.99 WHERE id_produto = 7;
UPDATE produto SET produto_preco = 499.99 WHERE id_produto = 8;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 9;
UPDATE produto SET produto_preco = 1499.99 WHERE id_produto = 10;
UPDATE produto SET produto_preco = 139.99 WHERE id_produto = 11;
UPDATE produto SET produto_preco = 199.99 WHERE id_produto = 12;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 13;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 14;
UPDATE produto SET produto_preco = 119.99 WHERE id_produto = 15;
UPDATE produto SET produto_preco = 179.99 WHERE id_produto = 16;
UPDATE produto SET produto_preco = 279.99 WHERE id_produto = 17;
UPDATE produto SET produto_preco = 349.99 WHERE id_produto = 18;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 19;
UPDATE produto SET produto_preco = 899.99 WHERE id_produto = 20;
UPDATE produto SET produto_preco = 19.99 WHERE id_produto = 21;
UPDATE produto SET produto_preco = 29.99 WHERE id_produto = 22;
UPDATE produto SET produto_preco = 14.99 WHERE id_produto = 23;
UPDATE produto SET produto_preco = 9.99 WHERE id_produto = 24;
UPDATE produto SET produto_preco = 24.99 WHERE id_produto = 25;
UPDATE produto SET produto_preco = 59.99 WHERE id_produto = 26;
UPDATE produto SET produto_preco = 12.99 WHERE id_produto = 27;
UPDATE produto SET produto_preco = 17.99 WHERE id_produto = 28;
UPDATE produto SET produto_preco = 29.99 WHERE id_produto = 29;
UPDATE produto SET produto_preco = 49.99 WHERE id_produto = 30;
UPDATE produto SET produto_preco = 14.99 WHERE id_produto = 31;
UPDATE produto SET produto_preco = 19.99 WHERE id_produto = 32;
UPDATE produto SET produto_preco = 22.99 WHERE id_produto = 33;
UPDATE produto SET produto_preco = 32.99 WHERE id_produto = 34;
UPDATE produto SET produto_preco = 49.99 WHERE id_produto = 35;
UPDATE produto SET produto_preco = 9.99 WHERE id_produto = 36;
UPDATE produto SET produto_preco = 25.99 WHERE id_produto = 37;
UPDATE produto SET produto_preco = 14.99 WHERE id_produto = 38;
UPDATE produto SET produto_preco = 34.99 WHERE id_produto = 39;
UPDATE produto SET produto_preco = 39.99 WHERE id_produto = 40;
UPDATE produto SET produto_preco = 1199.99 WHERE id_produto = 41;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 42;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 43;
UPDATE produto SET produto_preco = 69.99 WHERE id_produto = 44;
UPDATE produto SET produto_preco = 149.99 WHERE id_produto = 45;
UPDATE produto SET produto_preco = 1499.99 WHERE id_produto = 46;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 47;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 48;
UPDATE produto SET produto_preco = 349.99 WHERE id_produto = 49;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 50;
UPDATE produto SET produto_preco = 159.99 WHERE id_produto = 51;
UPDATE produto SET produto_preco = 199.99 WHERE id_produto = 52;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 53;
UPDATE produto SET produto_preco = 159.99 WHERE id_produto = 54;
UPDATE produto SET produto_preco = 79.99 WHERE id_produto = 55;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 56;
UPDATE produto SET produto_preco = 219.99 WHERE id_produto = 57;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 58;
UPDATE produto SET produto_preco = 99.99 WHERE id_produto = 59;
UPDATE produto SET produto_preco = 179.99 WHERE id_produto = 60;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 61;
UPDATE produto SET produto_preco = 199.99 WHERE id_produto = 62;
UPDATE produto SET produto_preco = 249.99 WHERE id_produto = 63;
UPDATE produto SET produto_preco = 349.99 WHERE id_produto = 64;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 65;
UPDATE produto SET produto_preco = 159.99 WHERE id_produto = 66;
UPDATE produto SET produto_preco = 119.99 WHERE id_produto = 67;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 68;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 69;
UPDATE produto SET produto_preco = 199.99 WHERE id_produto = 70;
UPDATE produto SET produto_preco = 89.99 WHERE id_produto = 71;
UPDATE produto SET produto_preco = 159.99 WHERE id_produto = 72;
UPDATE produto SET produto_preco = 249.99 WHERE id_produto = 73;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 74;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 75;
UPDATE produto SET produto_preco = 249.99 WHERE id_produto = 76;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 77;
UPDATE produto SET produto_preco = 79.99 WHERE id_produto = 78;
UPDATE produto SET produto_preco = 229.99 WHERE id_produto = 79;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 80;
UPDATE produto SET produto_preco = 499.99 WHERE id_produto = 81;
UPDATE produto SET produto_preco = 799.99 WHERE id_produto = 82;
UPDATE produto SET produto_preco = 249.99 WHERE id_produto = 83;
UPDATE produto SET produto_preco = 349.99 WHERE id_produto = 84;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 85;
UPDATE produto SET produto_preco = 599.99 WHERE id_produto = 86;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 87;
UPDATE produto SET produto_preco = 249.99 WHERE id_produto = 88;
UPDATE produto SET produto_preco = 149.99 WHERE id_produto = 89;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 90;
UPDATE produto SET produto_preco = 699.99 WHERE id_produto = 91;
UPDATE produto SET produto_preco = 129.99 WHERE id_produto = 92;
UPDATE produto SET produto_preco = 349.99 WHERE id_produto = 93;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 94;
UPDATE produto SET produto_preco = 179.99 WHERE id_produto = 95;
UPDATE produto SET produto_preco = 499.99 WHERE id_produto = 96;
UPDATE produto SET produto_preco = 799.99 WHERE id_produto = 97;
UPDATE produto SET produto_preco = 199.99 WHERE id_produto = 98;
UPDATE produto SET produto_preco = 299.99 WHERE id_produto = 99;
UPDATE produto SET produto_preco = 399.99 WHERE id_produto = 100;



DELETE FROM produto
WHERE id_produto = 2;

SELECT produto.produto_nome AS produto, produto_preco AS preco, categoria.categoria_nome AS categoria, fornecedor.fornecedor_nome AS fornecedor
FROM produto
JOIN categoria ON produto.id_produto = categoria.id_categoria
JOIN fornecedor ON produto.id_produto = fornecedor.id_fornecedor;

SELECT c.categoria_nome AS categoria, AVG(p.produto_preco) AS preco_medio
FROM categoria c
JOIN produto p ON c.id_categoria = p.id_categoria
GROUP BY c.categoria_nome;

SELECT AVG(produto_preco) FROM produto;

SELECT produto_nome, produto_preco FROM produto
WHERE produto_preco > (SELECT AVG(produto_preco) FROM produto);

SELECT produto_nome AS Produto, produto_preco AS Preco FROM produto WHERE id_categoria = 1 AND id_fornecedor = 1;

SELECT f.fornecedor_nome, COUNT(p.id_produto) AS total_produtos FROM fornecedor f
LEFT JOIN produto p ON f.id_fornecedor = p.id_fornecedor
GROUP BY f.fornecedor_nome
ORDER BY total_produtos DESC


