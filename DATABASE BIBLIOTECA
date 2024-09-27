DROP DATABASE biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autor
	(
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    autor_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE categoria
	(
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE livro
	(
    id_livro INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    id_autor INT,
    id_categoria INT,
    FOREIGN KEY (id_autor) REFERENCES autor (id_autor),
    FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    

    
INSERT INTO autor (autor_nome) VALUES ('J.K. Rowling');
INSERT INTO autor (autor_nome) VALUES ('J.R.R. Tolkien');

INSERT INTO categoria (categoria_nome) VALUES ('Fantasia');

INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Pedra Filosofal', 1, 1);
INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('Harry Potter e a Câmara Secreta', 1, 1);
INSERT INTO livro (titulo, id_autor, id_categoria) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 2, 1);

SELECT livro.titulo, autor.autor_nome AS autor, categoria.categoria_nome as categoria
FROM livro
JOIN autor ON livro.id_autor = autor.id_autor
JOIN categoria ON livro.id_categoria = categoria.id_categoria;



DROP DATABASE empresa;
CREATE DATABASE empresa;
USE empresa;
	
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

SELECT * FROM empregado WHERE id_supervisor <> 0;



DROP DATABASE escola;
CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno
	(
    id_aluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    aluno_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
CREATE TABLE notas
	(
    id_nota INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nota DECIMAL(5,2) NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
INSERT INTO aluno (aluno_nome) VALUES ('Pedro');
INSERT INTO aluno (aluno_nome) VALUES ('Sampaio');
INSERT INTO aluno (aluno_nome) VALUES ('Chitaozinho');
INSERT INTO aluno (aluno_nome) VALUES ('Chororo');
INSERT INTO aluno (aluno_nome) VALUES ('Bruno');
INSERT INTO aluno (aluno_nome) VALUES ('Marrone');

INSERT INTO notas (nota, id_aluno) VALUES ('7.8', 1);
INSERT INTO notas (nota, id_aluno) VALUES ('10.0', 1);
INSERT INTO notas (nota, id_aluno) VALUES ('2.0', 2);
INSERT INTO notas (nota, id_aluno) VALUES ('5.0', 2);
INSERT INTO notas (nota, id_aluno) VALUES ('4.9', 3);
INSERT INTO notas (nota, id_aluno) VALUES ('7.1', 3);
INSERT INTO notas (nota, id_aluno) VALUES ('7.2', 4);
INSERT INTO notas (nota, id_aluno) VALUES ('9.4', 4);
INSERT INTO notas (nota, id_aluno) VALUES ('10.0', 5);
INSERT INTO notas (nota, id_aluno) VALUES ('10.0', 5);
INSERT INTO notas (nota, id_aluno) VALUES ('8.0', 6);
INSERT INTO notas (nota, id_aluno) VALUES ('8.6', 6);

#SELECT livro.titulo, autor.autor_nome AS autor, categoria.categoria_nome as categoria
#FROM livro
#JOIN autor ON livro.id_autor = autor.id_autor
#JOIN categoria ON livro.id_categoria = categoria.id_categoria;



SELECT a.aluno_nome AS aluno, AVG(n.nota) AS media	
FROM aluno a
JOIN notas n ON a.id_aluno = n.id_aluno
GROUP BY a.id_aluno, a.aluno_nome;



