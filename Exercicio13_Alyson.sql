/* Crie um banco de dados chamado loja e defina as seguintes tabelas:

clientes com os campos cliente_id, nome, email, data_nascimento.
pedidos com os campos pedido_id, cliente_id, data_pedido, valor_total.
itens_pedido com os campos item_id, pedido_id, produto, quantidade,
preco_unitario. */

DROP DATABASE loja;
CREATE DATABASE loja;
USE loja;

CREATE TABLE clientes
	(
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(255) NOT NULL,
    cliente_email VARCHAR(255),
    cliente_data_nascimento DATE
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE pedidos
	(
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    pedido_data DATE NOT NULL,
    pedido_valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE itens_pedido
	(
    id_item INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    produto VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco_unidade DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedidos (id_pedido)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO clientes (cliente_nome, cliente_email, cliente_data_nascimento) VALUES
('Ana Silva', 'ana.silva@example.com', '1985-02-14'),
('Carlos Souza', 'carlos.souza@example.com', '1990-05-23'),
('Fernanda Oliveira', 'fernanda.oliveira@example.com', '1982-07-19'),
('João Pereira', 'joao.pereira@example.com', '1978-11-30'),
('Mariana Santos', 'mariana.santos@example.com', '1995-09-12'),
('Pedro Almeida', 'pedro.almeida@example.com', '1987-04-25'),
('Roberta Lima', 'roberta.lima@example.com', '1992-08-03'),
('Thiago Costa', 'thiago.costa@example.com', '1980-12-17'),
('Vanessa Ferreira', 'vanessa.ferreira@example.com', '1988-01-20'),
('Gabriel Martins', 'gabriel.martins@example.com', '1994-10-08'),
('Julia Mendes', 'julia.mendes@example.com', '1989-06-14'),
('Lucas Azevedo', 'lucas.azevedo@example.com', '1991-03-25'),
('Marcos Rocha', 'marcos.rocha@example.com', '1983-11-10'),
('Natália Ramos', 'natalia.ramos@example.com', '1993-07-22'),
('Otávio Moreira', 'otavio.moreira@example.com', '1986-04-18'),
('Patrícia Campos', 'patricia.campos@example.com', '1996-05-09'),
('Roberto Almeida', 'roberto.almeida@example.com', '1979-02-01'),
('Sandra Barbosa', 'sandra.barbosa@example.com', '1990-06-11'),
('Tatiane Lima', 'tatiane.lima@example.com', '1984-08-27'),
('Victor Hugo', 'victor.hugo@example.com', '1997-03-19');

INSERT INTO pedidos (id_cliente, pedido_data, pedido_valor_total) VALUES
(1, '2024-01-15', 150.75),
(1, '2024-02-20', 200.00),
(2, '2024-01-18', 120.50),
(2, '2024-03-22', 250.00),
(3, '2024-04-05', 300.00),
(3, '2024-05-10', 180.25),
(4, '2024-06-14', 75.90),
(4, '2024-07-19', 125.00),
(5, '2024-08-25', 95.40),
(5, '2024-09-30', 175.00),
(6, '2024-10-12', 220.00),
(6, '2024-11-20', 100.75),
(7, '2024-12-01', 130.00),
(7, '2024-01-25', 80.60),
(8, '2024-02-15', 300.00),
(8, '2024-03-18', 110.25),
(9, '2024-04-10', 140.00),
(9, '2024-05-22', 180.00),
(10, '2024-06-30', 200.50),
(10, '2024-07-15', 90.75),
(11, '2024-08-05', 85.00),
(11, '2024-09-19', 150.00),
(12, '2024-10-07', 300.00),
(12, '2024-11-11', 175.00),
(13, '2024-12-21', 125.00),
(13, '2024-01-17', 95.75),
(14, '2024-02-12', 200.00),
(14, '2024-03-29', 110.00),
(15, '2024-04-20', 240.00),
(15, '2024-05-10', 130.00),
(16, '2024-06-15', 85.00),
(16, '2024-07-25', 175.00),
(17, '2024-08-30', 300.00),
(17, '2024-09-10', 125.00),
(18, '2024-10-12', 150.00),
(18, '2024-11-14', 180.00),
(19, '2024-12-01', 220.00),
(19, '2024-01-05', 130.00),
(20, '2024-02-10', 75.00),
(20, '2024-03-15', 90.00);

INSERT INTO itens_pedido (id_pedido, produto, quantidade, preco_unidade) VALUES
(1, 'Produto A', 2, 25.00),
(1, 'Produto B', 1, 100.75),
(2, 'Produto C', 3, 66.67),
(2, 'Produto D', 1, 40.00),
(3, 'Produto E', 4, 50.00),
(3, 'Produto F', 2, 40.25),
(4, 'Produto G', 1, 75.90),
(4, 'Produto H', 2, 25.00),
(5, 'Produto I', 5, 19.08),
(5, 'Produto J', 3, 35.00),
(6, 'Produto K', 6, 30.00),
(6, 'Produto L', 1, 70.75),
(7, 'Produto M', 2, 65.00),
(7, 'Produto N', 1, 15.60),
(8, 'Produto O', 4, 75.00),
(8, 'Produto P', 1, 35.25),
(9, 'Produto Q', 3, 45.00),
(9, 'Produto R', 1, 35.00),
(10, 'Produto S', 2, 90.50),
(10, 'Produto T', 1, 0.25),
(11, 'Produto U', 3, 28.33),
(11, 'Produto V', 2, 31.67),
(12, 'Produto W', 5, 60.00),
(12, 'Produto X', 2, 55.00),
(13, 'Produto Y', 1, 125.00),
(13, 'Produto Z', 2, 35.75),
(14, 'Produto AA', 3, 66.67),
(14, 'Produto AB', 1, 43.33),
(15, 'Produto AC', 4, 60.00),
(15, 'Produto AD', 2, 70.00),
(16, 'Produto AE', 1, 30.00),
(16, 'Produto AF', 2, 27.50),
(17, 'Produto AG', 6, 40.00),
(17, 'Produto AH', 2, 55.00),
(18, 'Produto AI', 2, 75.00),
(18, 'Produto AJ', 1, 105.00),
(19, 'Produto AK', 3, 55.00),
(19, 'Produto AL', 1, 85.00),
(20, 'Produto AM', 2, 30.00),
(20, 'Produto AN', 1, 60.00);


#Liste o total de pedidos e a média de valor total dos pedidos no banco de dados loja.
SELECT COUNT(pedido_valor_total) AS Quantidade_Pedidos, AVG(pedido_valor_total) AS Media_Valor_Total FROM pedidos;

/* Liste todos os itens de pedido com o nome do produto e o valor total
(quantidade * preço unitário). */
SELECT produto, (quantidade * preco_unidade) AS valor_total FROM itens_pedido;

/* Crie uma tabela fornecedores com os campos fornecedor_id, nome, telefone,
email. */
CREATE TABLE fornecedores
	(
    id_fornecedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fornecedor_nome VARCHAR(255) NOT NULL,
    fornecedor_telefone VARCHAR(20) NOT NULL,
    fornecedor_email VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    

/* Crie uma tabela funcionarios com os campos id, nome, e supervisor_id.
Estabeleça um autorrelacionamento onde um funcionário pode ter um
supervisor que também é um funcionário.*/
DROP DATABASE exercicio3;
CREATE DATABASE exercicio3;
USE exercicio3;
	
CREATE TABLE empregado
	(
    id_empregado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    empregado_nome VARCHAR(255) NOT NULL,
    id_supervisor INT,
	FOREIGN KEY (id_supervisor) REFERENCES empregado (id_empregado)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO empregado (empregado_nome) VALUES ('Anna Julia');
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Bianca', 1);
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Rafaela', 1);
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Nycolas', 2);
INSERT INTO empregado (empregado_nome, id_supervisor) VALUES ('Carol', 3);

SELECT * FROM empregado;


DROP DATABASE exercicio4;
CREATE DATABASE exercicio4;
USE exercicio4;

CREATE TABLE categorias
	(
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE produtos
	(
    id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto_nome VARCHAR(255) NOT NULL,
    produto_preco DECIMAL(10,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    

DROP DATABASE exercicio5;
CREATE DATABASE exercicio5;
USE exercicio5;

CREATE TABLE vendas
	(
    id_venda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(255) NOT NULL,
    produto VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE clientes
	(
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE produtos
	(
    id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produto_nome VARCHAR(255),
    produto_preco_unitario DECIMAL(10,2)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE vendas3nf
	(
    id_venda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    






















