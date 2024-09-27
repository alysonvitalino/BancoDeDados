
DROP DATABASE UNIVERSIDADE;
CREATE DATABASE UNIVERSIDADE;
USE UNIVERSIDADE;

CREATE TABLE alunos
	(
    id_aluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    aluno_nome VARCHAR(255) NOT NULL,
	aluno_data_nascimento DATE NOT NULL,
    aluno_email VARCHAR(255) NOT NULL,
    aluno_telefone VARCHAR(15) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Ana Silva', '2001-05-15', 'ana.silva@example.com', '(11) 91234-5678');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Bruno Oliveira', '2000-12-20', 'bruno.oliveira@example.com', '(21) 92345-6789');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Carlos Pereira', '1999-08-10', 'carlos.pereira@example.com', '(31) 93456-7890');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Daniela Santos', '2002-11-05', 'daniela.santos@example.com', '(41) 94567-8901');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Eduardo Costa', '1998-03-25', 'eduardo.costa@example.com', '(51) 95678-9012');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Fernanda Lima', '2001-07-30', 'fernanda.lima@example.com', '(61) 96789-0123');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Gabriel Souza', '1999-09-12', 'gabriel.souza@example.com', '(71) 97890-1234');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Heloísa Rocha', '2000-01-22', 'heloisa.rocha@example.com', '(81) 98901-2345');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Igor Martins', '2002-04-18', 'igor.martins@example.com', '(91) 99012-3456');
INSERT INTO alunos (aluno_nome, aluno_data_nascimento, aluno_email, aluno_telefone) VALUES ('Juliana Almeida', '1998-06-08', 'juliana.almeida@example.com', '(11) 91234-6789');
    
CREATE TABLE professores
	(
    id_professores INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    professores_nome VARCHAR(255) NOT NULL,
    professores_especialidade VARCHAR(255) NOT NULL,
    professores_email VARCHAR(255) NOT NULL,
    professores_telefone VARCHAR(15) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Pedro Santos', 'Matemática', 'pedro.santos@example.com', '(11) 91234-5678');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Maria Oliveira', 'História', 'maria.oliveira@example.com', '(21) 92345-6789');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('João Almeida', 'Biologia', 'joao.almeida@example.com', '(31) 93456-7890');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Camila Costa', 'Física', 'camila.costa@example.com', '(41) 94567-8901');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Lucas Fernandes', 'Química', 'lucas.fernandes@example.com', '(51) 95678-9012');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Fernanda Lima', 'Geografia', 'fernanda.lima@example.com', '(61) 96789-0123');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Roberto Silva', 'Português', 'roberto.silva@example.com', '(71) 97890-1234');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Patrícia Souza', 'Inglês', 'patricia.souza@example.com', '(81) 98901-2345');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Marcos Pereira', 'Educação Física', 'marcos.pereira@example.com', '(91) 99012-3456');
INSERT INTO professores (professores_nome, professores_especialidade, professores_email, professores_telefone) VALUES ('Aline Rocha', 'Artes', 'aline.rocha@example.com', '(11) 91234-6789');
    
CREATE TABLE cursos
	(
    id_cursos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cursos_nome VARCHAR(255) NOT NULL,
    cursos_duracao VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Matemática Avançada', '6 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('História Moderna', '4 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Biologia Celular', '5 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Física Experimental', '6 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Química Orgânica', '6 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Geografia Física', '4 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Português Literário', '5 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Inglês Avançado', '4 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Educação Física Prática', '5 meses');
INSERT INTO cursos (cursos_nome, cursos_duracao) VALUES ('Artes Plásticas', '6 meses');
    
CREATE TABLE matriculas
	(
    id_matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_alunos INT NOT NULL,
    id_cursos INT NOT NULL,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_alunos) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_cursos) REFERENCES cursos(id_cursos)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (1, 1, '2024-01-15');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (2, 2, '2024-02-10');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (3, 3, '2024-03-05');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (4, 4, '2024-04-20');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (5, 5, '2024-05-25');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (6, 6, '2024-06-30');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (7, 7, '2024-07-15');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (8, 8, '2024-08-20');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (9, 9, '2024-09-25');
INSERT INTO matriculas (id_alunos, id_cursos, data_matricula) VALUES (10, 10, '2024-10-30');
    
CREATE TABLE leciona
	(
    id_professor INT NOT NULL,
    id_cursos INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES professores (id_professores),
    FOREIGN KEY (id_cursos) REFERENCES cursos (id_cursos)
    );
    
INSERT INTO leciona (id_professor, id_cursos) VALUES (1, 1);
INSERT INTO leciona (id_professor, id_cursos) VALUES (2, 2);
INSERT INTO leciona (id_professor, id_cursos) VALUES (3, 3);
INSERT INTO leciona (id_professor, id_cursos) VALUES (4, 4);
INSERT INTO leciona (id_professor, id_cursos) VALUES (5, 5);
INSERT INTO leciona (id_professor, id_cursos) VALUES (6, 6);
INSERT INTO leciona (id_professor, id_cursos) VALUES (7, 7);
INSERT INTO leciona (id_professor, id_cursos) VALUES (8, 8);
INSERT INTO leciona (id_professor, id_cursos) VALUES (9, 9);
INSERT INTO leciona (id_professor, id_cursos) VALUES (10, 10);
    
SELECT * FROM alunos;
SELECT * FROM cursos;
SELECT * FROM leciona;
SELECT * FROM matriculas;
SELECT * FROM professores;

#relacionar aluno e curso
SELECT a.aluno_nome, c.cursos_nome FROM matriculas m
JOIN alunos a ON m.id_alunos = a.id_aluno
JOIN cursos c ON c.id_cursos = m.id_cursos;

#relacionar professor e curso
SELECT p.professores_nome, c.cursos_nome FROM leciona l
JOIN professores p ON l.id_professor = p.id_professores
JOIN cursos c ON l.id_cursos = c.id_cursos;

DROP DATABASE biblioteca;
CREATE DATABASE biblioteca;
USE BIBLIOTECA;

CREATE TABLE autores
	(
    id_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    autor_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
-- Inserir registros na tabela autores
INSERT INTO autores (autor_nome, data_nascimento) VALUES
('J.K. Rowling', '1965-07-31'),
('George R.R. Martin', '1948-09-20'),
('J.R.R. Tolkien', '1892-01-03'),
('Agatha Christie', '1890-09-15'),
('Dan Brown', '1964-06-22'),
('Stephen King', '1947-09-21'),
('Isaac Asimov', '1920-01-02'),
('J.D. Salinger', '1919-01-01'),
('Jules Verne', '1828-02-08'),
('H.P. Lovecraft', '1890-08-20');

    
CREATE TABLE secao
	(
    id_secao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_secao VARCHAR(255) NOT NULL,
    descricao_secao VARCHAR(255)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
-- Inserir registros na tabela secao
INSERT INTO secao (nome_secao, descricao_secao) VALUES
('Ficção Fantástica', 'Livros que contêm elementos sobrenaturais ou imaginários.'),
('Mistério', 'Livros que envolvem enigmas, crimes ou investigações.'),
('Sci-Fi', 'Literatura científica e futurista.'),
('Clássicos', 'Obras literárias reconhecidas como importantes e influentes.'),
('Horror', 'Livros que visam assustar ou causar desconforto.'),
('Romance', 'Livros que focam em histórias de amor.'),
('História', 'Livros que abordam eventos históricos.'),
('Biografia', 'Histórias de vida de pessoas reais.'),
('Aventura', 'Livros com histórias de viagens e descobertas.'),
('Poesia', 'Obras literárias em versos.');

CREATE TABLE livros
	(
    id_livros INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_livro VARCHAR(255) NOT NULL,
    data_lancamento DATE NOT NULL,
    genero VARCHAR(255) NOT NULL,
    id_secoes INT NOT NULL,
    FOREIGN KEY (id_secoes) REFERENCES secao(id_secao)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
-- Inserir registros na tabela livros
INSERT INTO livros (nome_livro, data_lancamento, genero, id_secoes) VALUES
('Harry Potter e a Pedra Filosofal', '1997-06-26', 'Fantasia', 1),
('As Crônicas de Gelo e Fogo', '1996-08-06', 'Fantasia', 1),
('O Senhor dos Anéis', '1954-07-29', 'Fantasia', 1),
('Assassinato no Expresso do Oriente', '1934-01-01', 'Mistério', 2),
('O Código Da Vinci', '2003-03-18', 'Mistério', 2),
('O Iluminado', '1977-01-28', 'Horror', 5),
('Fundação', '1951-05-01', 'Sci-Fi', 3),
('O Apanhador no Campo de Centeio', '1951-07-16', 'Romance', 6),
('Vinte Mil Léguas Submarinas', '1870-03-20', 'Aventura', 9),
('O Chamado de Cthulhu', '1928-02-01', 'Horror', 5);
    
CREATE TABLE escreve
	(
    id_autor INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor),
    FOREIGN KEY (id_livro) REFERENCES livros(id_livros)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Inserir registros na tabela escreve
INSERT INTO escreve (id_autor, id_livro) VALUES
(1, 1),  -- J.K. Rowling escreveu Harry Potter e a Pedra Filosofal
(2, 2),  -- George R.R. Martin escreveu As Crônicas de Gelo e Fogo
(3, 3),  -- J.R.R. Tolkien escreveu O Senhor dos Anéis
(4, 4),  -- Agatha Christie escreveu Assassinato no Expresso do Oriente
(5, 5),  -- Dan Brown escreveu O Código Da Vinci
(6, 6),  -- Stephen King escreveu O Iluminado
(7, 7),  -- Isaac Asimov escreveu Fundação
(8, 8),  -- J.D. Salinger escreveu O Apanhador no Campo de Centeio
(9, 9),  -- Jules Verne escreveu Vinte Mil Léguas Submarinas
(10, 10); -- H.P. Lovecraft escreveu O Chamado de Cthulhu

#relacionar aluno e curso
SELECT a.autor_nome, l.nome_livro FROM escreve e
JOIN autores a ON e.id_autor = a.id_autor
JOIN livros l ON e.id_livro = l.id_livros;


    
SELECT * FROM autores;
SELECT * FROM escreve;
SELECT * FROM livros;
SELECT * FROM secao;

DROP DATABASE loja_online;
CREATE DATABASE loja_online;
USE loja_online;

CREATE TABLE produtos
	(
    id_produtos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    produtos_nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    desc_produto VARCHAR(255)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO produtos (produtos_nome, preco, desc_produto) VALUES
('Cadeira Gamer', 499.99, 'Cadeira ergonômica para gamers com ajuste de altura e apoio de braço.'),
('Teclado Mecânico', 149.99, 'Teclado mecânico com retroiluminação RGB e switches mecânicos.'),
('Mouse para Jogos', 89.99, 'Mouse com 6 botões programáveis e ajuste de DPI.'),
('Monitor 24" Full HD', 299.99, 'Monitor LED Full HD com 60Hz de taxa de atualização.'),
('Headset Gaming', 129.99, 'Headset com microfone integrado e som surround.'),
('Mesa de Escritório', 349.99, 'Mesa de escritório com acabamento em madeira e gavetas.'),
('Webcam HD', 79.99, 'Webcam com resolução HD e foco automático.'),
('Cadeira Escritório', 199.99, 'Cadeira com apoio lombar e ajuste de altura.'),
('Hub USB 3.0', 39.99, 'Hub USB com 4 portas para expansão de conectividade.'),
('Mousepad Grande', 29.99, 'Mousepad grande com superfície otimizada para sensores de mouse.');
    
CREATE TABLE clientes
	(
    id_clientes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    clientes_nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(15) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
-- Inserir registros na tabela clientes
INSERT INTO clientes (clientes_nome, cpf) VALUES
('Ana Souza', '123.456.789-00'),
('João Silva', '987.654.321-00'),
('Maria Oliveira', '111.222.333-44'),
('Carlos Santos', '555.666.777-88'),
('Patrícia Costa', '999.888.777-66'),
('Lucas Pereira', '222.333.444-55'),
('Fernanda Lima', '333.444.555-66'),
('Roberto Almeida', '444.555.666-77'),
('Juliana Martins', '555.666.777-88'),
('Fernando Rocha', '666.777.888-99');
    
CREATE TABLE pedidos
	(
    id_pedidos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_clientes INT NOT NULL,
    id_produtos INT NOT NULL,
    FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes),
    FOREIGN KEY (id_produtos) REFERENCES produtos (id_produtos)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
-- Inserir registros na tabela pedidos
INSERT INTO pedidos (id_clientes, id_produtos) VALUES
(1, 1),  -- Ana Souza comprou Cadeira Gamer
(1, 2),  -- Ana Souza comprou Teclado Mecânico
(2, 3),  -- João Silva comprou Mouse para Jogos
(2, 4),  -- João Silva comprou Monitor 24" Full HD
(3, 5),  -- Maria Oliveira comprou Headset Gaming
(3, 6),  -- Maria Oliveira comprou Mesa de Escritório
(4, 7),  -- Carlos Santos comprou Webcam HD
(4, 8),  -- Carlos Santos comprou Cadeira Escritório
(5, 9),  -- Patrícia Costa comprou Hub USB 3.0
(5, 10); -- Patrícia Costa comprou Mousepad Grande
    
SHOW TABLES;
SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT * FROM produtos;

SELECT c.clientes_nome, p.produtos_nome FROM pedidos pd
JOIN clientes c ON pd.id_clientes = c.id_clientes
JOIN produtos p ON pd.id_produtos = p.id_produtos;

    

    
