DROP DATABASE vendas;
CREATE DATABASE vendas;
USE vendas;

CREATE TABLE venda
	(
    id_venda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(255),
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Borracha', 10,  '0.50');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Smartphone', 5,  '499.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Carregador', 20, '19.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Laptop', 3,  '1199.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Fone de Ouvido', 15, '79.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Mouse', 10, '29.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Teclado', 8, '49.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Monitor', 6,  '199.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Cabo HDMI', 25, '14.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Webcam', 12, '89.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Caixa de Som', 7,  '149.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Tripé de Câmera', 4,  '129.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Lente Grande Angular', 3,  '349.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Fone de Ouvido Bluetooth', 10, '119.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Microfone', 5,  '89.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Estabilizador de Imagem', 2,  '249.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Bateria para Câmera', 15, '49.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Lente Macro', 7,  '219.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Carregador de Laptop', 6, '59.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Adaptador de Rede', 18, '39.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Amplificador de Áudio', 4,  '299.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Caixa de Som Bluetooth', 9,  '159.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Flash Externo', 3,  '399.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Bag para Câmera', 8,  '79.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Câmera Compacta', 5,  '499.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Câmera Mirrorless', 2,  '799.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Câmera de Ação', 4,  '349.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Tripé de Mão', 12, '69.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Lente Telefoto', 3,  '499.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Filtro UV', 20, '29.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Monitor de Campo', 7,  '299.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Gimbal para Câmera', 2,  '399.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Câmera Instantânea', 6,  '299.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Lente Fisheye', 3,  '399.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Equalizador de Áudio', 5,  '229.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Caixa de Som para Festa', 4,  '349.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Sistema de Som para Sala', 2,  '899.99');
INSERT INTO venda (produto, quantidade, preco_unitario) VALUES ('Câmera de Segurança', 10, '179.99');

SELECT AVG(preco_unitario) AS Preço_Médio FROM venda;

SELECT produto, SUM(quantidade) AS Quantidade_Total FROM venda
GROUP BY produto;

SELECT produto, SUM(quantidade) AS Quantidade_Total FROM venda
GROUP BY produto
ORDER BY quantidade DESC;

SELECT produto, preco_unitario
FROM venda
WHERE preco_unitario = (SELECT MAX(preco_unitario) FROM venda);

SELECT produto, preco_unitario
FROM venda
WHERE preco_unitario = (SELECT MIN(preco_unitario) FROM venda);

SELECT produto, SUM(quantidade) AS Quantidade_Total FROM venda
GROUP BY produto
HAVING SUM(quantidade)<10
ORDER BY quantidade DESC;
    