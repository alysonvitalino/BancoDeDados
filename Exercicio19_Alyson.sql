DROP DATABASE oficina;
CREATE DATABASE oficina;
USE oficina;

CREATE TABLE clientes
	(
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(255) NOT NULL,
    cliente_cpf VARCHAR(15) UNIQUE,
    cliente_telefone VARCHAR(20)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE motos
	(
    id_moto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    moto_modelo VARCHAR(255) NOT NULL,
    moto_ano YEAR NOT NULL,
    moto_combustivel VARCHAR(30) NOT NULL,
    moto_cilindrada INT NOT NULL,
    moto_cor VARCHAR(100) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE servicos
	(
    id_servico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_moto INT NOT NULL,
    servico_data_inicio DATE NOT NULL,
    servico_data_final DATE NOT NULL,
    servico_preco DECIMAL(10,2)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE mecanicos
	(
    id_mecanico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    mecanico_nome VARCHAR(255) NOT NULL,
    mecanico_telefone VARCHAR(20) NOT NULL,
    mecanico_email VARCHAR(255) NOT NULL,
    mecanico_data_nascimento DATE NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE agendamentos
	(
    id_agendamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_servico INT NOT NULL,
    id_mecanico INT NOT NULL,
    id_moto INT NOT NULL,
    FOREIGN KEY (id_servico) REFERENCES servicos (id_servico),
    FOREIGN KEY (id_mecanico) REFERENCES mecanicos (id_mecanico),
    FOREIGN KEY (id_moto) REFERENCES motos (id_moto)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO clientes (cliente_nome, cliente_cpf, cliente_telefone) VALUES
('Carlos Silva', '123.456.789-01', '(11) 91234-5678'),
('Maria Oliveira', '234.567.890-12', '(21) 92345-6789'),
('João Santos', '345.678.901-23', '(31) 93456-7890'),
('Ana Costa', '456.789.012-34', '(41) 94567-8901'),
('Pedro Almeida', '567.890.123-45', '(51) 95678-9012'),
('Lucas Lima', '678.901.234-56', '(61) 96789-0123'),
('Fernanda Sousa', '789.012.345-67', '(71) 97890-1234'),
('Patrícia Pires', '890.123.456-78', '(81) 98901-2345'),
('Roberto Martins', '901.234.567-89', '(91) 91012-3456'),
('Mariana Ferreira', '012.345.678-90', '(11) 92023-4567'),
('Juliano Barros', '123.456.789-02', '(21) 93134-5678'),
('Camila Rocha', '234.567.890-13', '(31) 94245-6789'),
('Ricardo Mendes', '345.678.901-24', '(41) 95356-7890'),
('Tatiane Martins', '456.789.012-35', '(51) 96467-8901'),
('Rafael Costa', '567.890.123-46', '(61) 97578-9012'),
('Isabela Nascimento', '678.901.234-57', '(71) 98689-0123'),
('Victor Pacheco', '789.012.345-68', '(81) 99790-1234'),
('Sofia Lima', '890.123.456-79', '(91) 90801-2345'),
('Eduardo Araújo', '901.234.567-80', '(11) 91912-3456'),
('Giovana Martins', '012.345.678-91', '(21) 92023-4568'),
('Felipe Almeida', '123.456.789-03', '(31) 93134-5679'),
('Vanessa Silva', '234.567.890-14', '(41) 94245-6780'),
('Leonardo Santos', '345.678.901-25', '(51) 95356-7891'),
('Bianca Souza', '456.789.012-36', '(61) 96467-8902'),
('Aline Oliveira', '567.890.123-47', '(71) 97578-9013'),
('César Costa', '678.901.234-58', '(81) 98689-0124'),
('Fábio Ferreira', '789.012.345-69', '(91) 99790-1235'),
('Juliana Pires', '890.123.456-80', '(11) 90801-2346'),
('Rogério Nascimento', '901.234.567-81', '(21) 91912-3457'),
('Samuel Lima', '012.345.678-92', '(31) 92023-4569'),
('Larissa Barros', '123.456.789-04', '(41) 93134-5680'),
('Cecília Rocha', '234.567.890-15', '(51) 94245-6781'),
('Tânia Mendes', '345.678.901-26', '(61) 95356-7892'),
('André Martins', '456.789.012-37', '(71) 96467-8903'),
('Marta Araújo', '567.890.123-48', '(81) 97578-9014'),
('Eliane Souza', '678.901.234-59', '(91) 98689-0125'),
('Silvia Lima', '789.012.345-70', '(11) 99790-1236'),
('Juliano Ferreira', '890.123.456-81', '(21) 90801-2347'),
('Vitor Santos', '901.234.567-82', '(31) 91912-3458'),
('Flávia Pires', '012.345.678-93', '(41) 92023-4570'),
('Marcio Almeida', '123.456.789-05', '(51) 93134-5681'),
('Eliane Rocha', '234.567.890-16', '(61) 94245-6782'),
('Gustavo Mendes', '345.678.901-27', '(71) 95356-7893'),
('Clara Martins', '456.789.012-38', '(81) 96467-8904'),
('Rodrigo Araújo', '567.890.123-49', '(91) 97578-9015'),
('Rafaela Souza', '678.901.234-60', '(11) 98689-0126'),
('Murilo Lima', '789.012.345-71', '(21) 99790-1237'),
('Luciana Ferreira', '890.123.456-82', '(31) 90801-2348'),
('Eduardo Santos', '901.234.567-83', '(41) 91912-3459'),
('Patrícia Barros', '012.345.678-94', '(51) 92023-4571'),
('Cristiano Almeida', '123.456.789-06', '(61) 93134-5682');

INSERT INTO motos (moto_modelo, moto_ano, moto_combustivel, moto_cilindrada, moto_cor, id_cliente) VALUES
('Honda CB 125F', 2020, 'Gasolina', 125, 'Vermelha', 1),
('Yamaha Fazer 150', 2019, 'Gasolina', 150, 'Preta', 2),
('Kawasaki Ninja 250', 2021, 'Gasolina', 250, 'Branca', 3),
('Suzuki Bandit 300', 2020, 'Álcool', 300, 'Azul', 4),
('Harley Davidson Sportster', 2022, 'Gasolina', 1000, 'Amarela', 5),
('BMW G 310 R', 2021, 'Gasolina', 200, 'Cinza', 6),
('Honda CB 400', 2018, 'Gasolina', 400, 'Verde', 7),
('Yamaha MT-03', 2020, 'Álcool', 150, 'Vermelha', 8),
('Kawasaki Z 650', 2023, 'Gasolina', 500, 'Prata', 9),
('Suzuki GSX 600', 2017, 'Gasolina', 600, 'Preta', 10),
('Honda CB 500', 2021, 'Gasolina', 800, 'Azul', 11),
('Yamaha XTZ 250', 2020, 'Gasolina', 300, 'Branca', 12),
('Kawasaki Versys 650', 2019, 'Álcool', 250, 'Amarela', 13),
('Suzuki DR-Z 125', 2018, 'Gasolina', 125, 'Verde', 14),
('Harley Davidson Iron 883', 2022, 'Gasolina', 1000, 'Cinza', 15),
('BMW R 1250 GS', 2021, 'Gasolina', 200, 'Vermelha', 16),
('Ducati Monster 821', 2020, 'Álcool', 150, 'Preta', 17),
('KTM Duke 390', 2017, 'Gasolina', 400, 'Branca', 18),
('Honda CB 1000R', 2020, 'Gasolina', 600, 'Azul', 19),
('Yamaha R3', 2023, 'Gasolina', 800, 'Verde', 20),
('Kawasaki Ninja 1000', 2021, 'Gasolina', 300, 'Prata', 21),
('Suzuki GSX-R 1000', 2022, 'Gasolina', 1000, 'Amarela', 22),
('Harley Davidson Road King', 2020, 'Gasolina', 800, 'Cinza', 23),
('BMW F 850 GS', 2018, 'Gasolina', 400, 'Vermelha', 24),
('Ducati Panigale V2', 2021, 'Gasolina', 600, 'Preta', 25),
('KTM RC 390', 2019, 'Gasolina', 250, 'Branca', 26),
('Yamaha MT-07', 2020, 'Gasolina', 200, 'Verde', 27),
('Honda CRF 250', 2022, 'Gasolina', 150, 'Azul', 28),
('Suzuki SV 650', 2021, 'Gasolina', 300, 'Vermelha', 29),
('Kawasaki Ninja H2', 2023, 'Gasolina', 500, 'Preta', 30),
('Harley Davidson Fat Boy', 2020, 'Gasolina', 800, 'Amarela', 31),
('BMW R 18', 2022, 'Gasolina', 1000, 'Cinza', 32),
('Ducati Streetfighter V4', 2021, 'Gasolina', 200, 'Branca', 33),
('Yamaha Tenere 700', 2020, 'Gasolina', 400, 'Verde', 34),
('Kawasaki W800', 2018, 'Gasolina', 650, 'Azul', 35),
('Honda CB 300', 2019, 'Gasolina', 300, 'Vermelha', 36),
('Suzuki V-Strom 650', 2022, 'Gasolina', 600, 'Prata', 37),
('KTM 1290 Super Duke', 2020, 'Gasolina', 1300, 'Amarela', 38),
('Harley Davidson Street 750', 2021, 'Gasolina', 750, 'Preta', 39),
('BMW S 1000 RR', 2023, 'Gasolina', 1000, 'Branca', 40),
('Ducati Multistrada V4', 2021, 'Gasolina', 1000, 'Verde', 41),
('Yamaha YZF-R15', 2020, 'Gasolina', 150, 'Vermelha', 42),
('Kawasaki Z400', 2021, 'Gasolina', 400, 'Azul', 43),
('Suzuki GSR 750', 2022, 'Gasolina', 750, 'Preta', 44),
('Honda CBR 650R', 2020, 'Gasolina', 650, 'Branca', 45),
('Harley Davidson LiveWire', 2022, 'Elétrica', 0, 'Cinza', 46),
('BMW C 400 GT', 2021, 'Gasolina', 400, 'Vermelha', 47),
('Ducati Scrambler', 2019, 'Gasolina', 800, 'Amarela', 48),
('Yamaha NMAX 160', 2023, 'Gasolina', 160, 'Preta', 49),
('Kawasaki Z125', 2020, 'Gasolina', 125, 'Verde', 50);



INSERT INTO servicos (id_moto, servico_data_inicio, servico_data_final, servico_preco) VALUES
(1, '2023-01-10', '2023-01-15', 300.00),
(2, '2023-01-12', '2023-01-20', 400.00),
(3, '2023-01-15', '2023-01-18', 250.00),
(4, '2023-01-18', '2023-01-22', 500.00),
(5, '2023-01-20', '2023-01-25', 150.00),
(6, '2023-02-01', '2023-02-05', 350.00),
(7, '2023-02-03', '2023-02-10', 300.00),
(8, '2023-02-05', '2023-02-12', 450.00),
(9, '2023-02-07', '2023-02-14', 220.00),
(10, '2023-02-10', '2023-02-15', 370.00),
(11, '2023-02-12', '2023-02-20', 280.00),
(12, '2023-02-15', '2023-02-25', 330.00),
(13, '2023-03-01', '2023-03-05', 230.00),
(14, '2023-03-02', '2023-03-07', 400.00),
(15, '2023-03-03', '2023-03-10', 350.00),
(16, '2023-03-04', '2023-03-09', 300.00),
(17, '2023-03-05', '2023-03-15', 420.00),
(18, '2023-03-06', '2023-03-14', 260.00),
(19, '2023-03-07', '2023-03-12', 310.00),
(20, '2023-03-08', '2023-03-18', 390.00),
(21, '2023-03-09', '2023-03-13', 470.00),
(22, '2023-03-10', '2023-03-16', 320.00),
(23, '2023-03-11', '2023-03-19', 280.00),
(24, '2023-03-12', '2023-03-20', 360.00),
(25, '2023-03-13', '2023-03-22', 410.00),
(26, '2023-04-01', '2023-04-05', 220.00),
(27, '2023-04-02', '2023-04-07', 380.00),
(28, '2023-04-03', '2023-04-10', 290.00),
(29, '2023-04-04', '2023-04-08', 370.00),
(30, '2023-04-05', '2023-04-12', 440.00),
(31, '2023-04-06', '2023-04-14', 310.00),
(32, '2023-04-07', '2023-04-11', 230.00),
(33, '2023-04-08', '2023-04-15', 220.00),
(34, '2023-04-09', '2023-04-16', 150.00),
(35, '2023-04-10', '2023-04-18', 300.00),
(36, '2023-04-11', '2023-04-19', 250.00),
(37, '2023-04-12', '2023-04-20', 450.00),
(38, '2023-04-13', '2023-04-21', 360.00),
(39, '2023-04-14', '2023-04-22', 500.00),
(40, '2023-04-15', '2023-04-25', 280.00),
(41, '2023-04-16', '2023-04-26', 310.00),
(42, '2023-04-17', '2023-04-27', 430.00),
(43, '2023-04-18', '2023-04-28', 290.00),
(44, '2023-04-19', '2023-04-29', 200.00),
(45, '2023-04-20', '2023-04-30', 360.00),
(46, '2023-04-21', '2023-05-01', 380.00),
(47, '2023-04-22', '2023-05-02', 400.00),
(48, '2023-04-23', '2023-05-03', 310.00),
(49, '2023-04-24', '2023-05-04', 260.00),
(50, '2023-04-25', '2023-05-05', 220.00);

INSERT INTO mecanicos (mecanico_nome, mecanico_telefone, mecanico_email, mecanico_data_nascimento) VALUES
('Jorge Almeida', '(11) 98888-0001', 'jorge@example.com', '1985-05-20'),
('Ricardo Lima', '(21) 98888-0002', 'ricardo@example.com', '1990-06-15'),
('Mariana Costa', '(31) 98888-0003', 'mariana@example.com', '1988-07-25'),
('Felipe Santos', '(41) 98888-0004', 'felipe@example.com', '1982-08-30'),
('Tatiane Pereira', '(51) 98888-0005', 'tatiane@example.com', '1995-09-12'),
('André Nascimento', '(61) 98888-0006', 'andre@example.com', '1992-10-10'),
('Luciana Rocha', '(71) 98888-0007', 'luciana@example.com', '1984-11-05'),
('Carlos Mendes', '(81) 98888-0008', 'carlos@example.com', '1978-12-18'),
('Fernanda Barros', '(91) 98888-0009', 'fernanda@example.com', '1991-03-22'),
('Pedro Araújo', '(11) 98888-0010', 'pedro@example.com', '1986-01-13'),
('Sofia Martins', '(21) 98888-0011', 'sofia@example.com', '1993-02-19'),
('Gabriel Pires', '(31) 98888-0012', 'gabriel@example.com', '1989-04-14'),
('Aline Lima', '(41) 98888-0013', 'aline@example.com', '1994-05-24'),
('Roberto Ferreira', '(51) 98888-0014', 'roberto@example.com', '1980-06-30'),
('Cláudia Silva', '(61) 98888-0015', 'claudia@example.com', '1976-07-16'),
('Vinícius Souza', '(71) 98888-0016', 'vinicius@example.com', '1995-08-11'),
('Juliana Almeida', '(81) 98888-0017', 'juliana@example.com', '1987-09-09'),
('Henrique Nascimento', '(91) 98888-0018', 'henrique@example.com', '1983-10-29'),
('Camila Barros', '(11) 98888-0019', 'camila@example.com', '1981-11-01'),
('Lucas Santos', '(21) 98888-0020', 'lucas@example.com', '1990-12-20');

INSERT INTO agendamentos (id_servico, id_mecanico, id_moto) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20),
(21, 11, 21),
(22, 11, 22),
(23, 12, 23),
(24, 12, 24),
(25, 13, 25),
(26, 13, 26),
(27, 14, 27),
(28, 14, 28),
(29, 15, 29),
(30, 15, 30),
(31, 16, 31),
(32, 16, 32),
(33, 17, 33),
(34, 17, 34),
(35, 18, 35),
(36, 18, 36),
(37, 19, 37),
(38, 19, 38),
(39, 20, 39),
(40, 20, 40),
(41, 1, 41),
(42, 2, 42),
(43, 3, 43),
(44, 4, 44),
(45, 5, 45),
(46, 6, 46),
(47, 7, 47),
(48, 8, 48),
(49, 9, 49),
(50, 10, 50);


SHOW TABLES;

SELECT * FROM clientes;
SELECT * FROM motos;
SELECT * FROM servicos;
SELECT * FROM mecanicos;
SELECT * FROM agendamentos;

CREATE TABLE Agendamento AS 
SELECT a.id_servico, m.moto_modelo, b.mecanico_nome, a.servico_data_inicio, a.servico_data_final, a.servico_preco
FROM agendamentos x
JOIN motos m ON m.id_moto = x.id_moto
JOIN mecanicos b ON b.id_mecanico = x.id_mecanico
JOIN servicos a ON a.id_servico = x.id_servico;

SELECT * FROM Agendamento; 

SELECT * FROM motos m 
JOIN clientes c ON m.id_moto = c.id_cliente
WHERE m.id_cliente = 20;
    
    
    
    
    
    
    
    
    
    
    