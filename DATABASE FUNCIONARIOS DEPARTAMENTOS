DROP DATABASE empresa;
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamentos
	(
    id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    departamento_nome VARCHAR(255) NOT NULL,
    departamento_desc TEXT
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE funcionarios
	(
    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcionario_nome VARCHAR(255) NOT NULL,
    funcionario_data_nasc DATE NOT NULL,
    funcionario_salario DECIMAL(10,2) NOT NULL,
    funcionario_email VARCHAR(255) NOT NULL,
    funcionario_telefone VARCHAR(20) NOT NULL,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
INSERT INTO departamentos (departamento_nome, departamento_desc) VALUES
('Recursos Humanos', 'Gerencia de pessoal e administração de recursos humanos.'),
('Financeiro', 'Responsável pela gestão financeira da empresa.'),
('Vendas', 'Atendimento ao cliente e realização de vendas.'),
('TI', 'Tecnologia da informação e suporte técnico.'),
('Marketing', 'Promoção de produtos e estratégias de mercado.');

INSERT INTO funcionarios (funcionario_nome, funcionario_data_nasc, funcionario_salario, funcionario_email, funcionario_telefone, id_departamento) VALUES
('Maria Oliveira', '1990-05-12', 3500.00, 'maria.oliveira@email.com', '11-99876-5432', 1),
('João Santos', '1988-07-21', 4000.00, 'joao.santos@email.com', '21-98765-4321', 2),
('Ana Costa', '1985-03-15', 4500.00, 'ana.costa@email.com', '31-97654-3210', 1),
('Carlos Pereira', '1992-10-30', 5000.00, 'carlos.pereira@email.com', '41-96543-2109', 2),
('Fernanda Lima', '1995-11-25', 3600.00, 'fernanda.lima@email.com', '51-95432-1098', 1),
('Ricardo Almeida', '1984-04-30', 4700.00, 'ricardo.almeida@email.com', '11-94321-0987', 2),
('Juliana Mendes', '1993-01-15', 5200.00, 'juliana.mendes@email.com', '21-93210-9876', 1),
('Gustavo Rocha', '1990-06-20', 3400.00, 'gustavo.rocha@email.com', '31-92109-8765', 2),
('Tatiane Martins', '1989-12-31', 4600.00, 'tatiane.martins@email.com', '41-91098-7654', 1),
('Rafael Santos', '1991-09-01', 4800.00, 'rafael.santos@email.com', '51-90987-6543', 2),

('Renata Almeida', '1984-08-18', 4400.00, 'renata.almeida@email.com', '11-89876-5432', 3),
('Felipe Ferreira', '1990-03-17', 3700.00, 'felipe.ferreira@email.com', '21-88765-4321', 2),
('Bianca Martins', '1994-12-24', 3900.00, 'bianca.martins@email.com', '31-87654-3210', 3),
('Diego Silva', '1986-02-29', 4300.00, 'diego.silva@email.com', '41-86543-2109', 2),
('Sofia Costa', '1992-07-15', 4100.00, 'sofia.costa@email.com', '51-85432-1098', 3),
('Marcos Gomes', '1983-11-30', 3800.00, 'marcos.gomes@email.com', '11-84321-0987', 2),
('Aline Oliveira', '1981-05-02', 3600.00, 'aline.oliveira@email.com', '21-83210-9876', 3),
('Thiago Rocha', '1996-04-25', 3900.00, 'thiago.rocha@email.com', '31-82109-8765', 2),
('Patrícia Lima', '1988-01-10', 4200.00, 'patricia.lima@email.com', '41-81098-7654', 3),
('Cláudia Mendes', '1990-03-15', 4500.00, 'claudia.mendes@email.com', '51-80987-6543', 2),

('Lucas Martins', '1987-06-28', 3700.00, 'lucas.martins@email.com', '11-79876-5432', 3),
('Camila Santos', '1995-09-14', 3600.00, 'camila.santos@email.com', '21-78765-4321', 4),
('Julio Almeida', '1982-10-30', 4400.00, 'julio.almeida@email.com', '31-77654-3210', 3),
('Lívia Ferreira', '1984-12-12', 4300.00, 'livia.ferreira@email.com', '41-76543-2109', 4),
('Fernando Costa', '1991-01-22', 4800.00, 'fernando.costa@email.com', '51-75432-1098', 3),
('Ester Rocha', '1993-08-16', 3900.00, 'ester.rocha@email.com', '11-74321-0987', 4),
('Victor Lima', '1989-03-19', 4500.00, 'victor.lima@email.com', '21-73210-9876', 3),
('Ana Paula', '1990-05-26', 3600.00, 'anapaula@email.com', '31-72109-8765', 4),
('Ricardo Martins', '1994-07-14', 4300.00, 'ricardo.martins@email.com', '41-71098-7654', 3),
('Mariana Almeida', '1987-02-15', 4600.00, 'mariana.almeida@email.com', '11-71234-5678', 4),

('Felipe Oliveira', '1991-03-20', 3700.00, 'felipe.oliveira@email.com', '21-82345-6789', 5),
('Bruna Costa', '1993-04-25', 3900.00, 'bruna.costa@email.com', '31-93456-7890', 4),
('Eduardo Pereira', '1984-05-30', 4200.00, 'eduardo.pereira@email.com', '41-04567-8901', 5),
('Camila Rocha', '1995-06-05', 4400.00, 'camila.rocha@email.com', '51-15678-9012', 4),
('Nicolas Santos', '1990-07-10', 3800.00, 'nicolas.santos@email.com', '11-26789-0123', 5),
('Tatiane Mendes', '1988-08-15', 4000.00, 'tatiane.mendes@email.com', '21-37890-1234', 4),
('Rafael Ferreira', '1992-09-20', 3700.00, 'rafael.ferreira@email.com', '31-48901-2345', 5),
('Ana Clara Lima', '1985-10-25', 3900.00, 'anaclara.lima@email.com', '41-59012-3456', 4),
('Diego Martins', '1994-11-30', 4300.00, 'diego.martins@email.com', '51-60123-4567', 5),
('Priscila Gomes', '1989-12-05', 4100.00, 'priscila.gomes@email.com', '11-71234-5679', 4),

('Vinícius Souza', '1993-01-10', 4200.00, 'vinicius.souza@email.com', '21-82345-6780', 5),
('Luana Alves', '1995-02-14', 3800.00, 'luana.alves@email.com', '31-93456-7891', 1),
('André Costa', '1986-03-19', 3900.00, 'andre.costa@email.com', '41-04567-8902', 5),
('Raquel Oliveira', '1984-04-24', 4300.00, 'raquel.oliveira@email.com', '51-15678-9013', 1),
('Guilherme Rocha', '1990-05-29', 4400.00, 'guilherme.rocha@email.com', '11-26789-0124', 5),
('Laura Ferreira', '1992-06-03', 4500.00, 'laura.ferreira@email.com', '21-37890-1235', 1),
('Julio Mendes', '1988-07-08', 3600.00, 'julio.mendes@email.com', '31-48901-2346', 5),
('Tamires Almeida', '1994-08-13', 4200.00, 'tamires.almeida@email.com', '41-59012-3457', 1),
('Felipe Carvalho', '1985-09-18', 4300.00, 'felipe.carvalho@email.com', '51-60123-4568', 5),
('Natália Santos', '1996-01-05', 3700.00, 'natalia.santos@email.com', '11-12345-6789', 1);

SELECT * FROM funcionarios;

SELECT * FROM departamentos;

SELECT funcionario_nome, funcionario_salario FROM funcionarios WHERE funcionario_salario > 3000;

UPDATE funcionarios SET funcionario_salario = 5000 WHERE id_funcionario = 1;

SELECT funcionario_nome, funcionario_salario FROM funcionarios WHERE funcionario_salario > 3000;

DELETE FROM funcionarios WHERE id_funcionario = 1;

SELECT funcionario_nome, funcionario_salario FROM funcionarios WHERE funcionario_salario > 3000;

SELECT COUNT(id_funcionario) FROM funcionarios;

SELECT AVG(funcionario_salario) FROM funcionarios;

SELECT * FROM funcionarios INNER JOIN departamentos ON funcionarios.id_departamento = departamentos.id_departamento;

SELECT funcionario_nome, funcionario_salario, departamento_nome FROM funcionarios JOIN departamentos ON funcionarios.id_departamento = departamentos.id_departamento;

UPDATE funcionarios SET funcionario_salario = 10000 WHERE id_departamento = 4;

SELECT funcionario_nome, funcionario_salario, departamento_nome FROM funcionarios JOIN departamentos ON funcionarios.id_departamento = departamentos.id_departamento;


