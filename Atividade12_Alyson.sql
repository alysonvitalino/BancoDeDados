DROP DATABASE biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE autores
	(
    id_autor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    autor_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE livros
	(
    id_livro INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    livro_titulo VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE relacao
	(
    id_relacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_livro INT,
    id_autor INT,
    FOREIGN KEY (id_livro) REFERENCES livros (id_livro),
    FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    

DROP DATABASE ecommerce;    
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE clientes
	(
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE pedidos
	(
    id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
DROP DATABASE documentos;
CREATE DATABASE documentos;
USE documentos;

CREATE TABLE documentos
	(
    id_documento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	documento VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
CREATE TABLE pessoas
	(
    id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pessoa_nome VARCHAR(255) NOT NULL,
    id_documento INT NOT NULL,
    FOREIGN KEY (id_documento) REFERENCES documentos (id_documento)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
DROP DATABASE empresa;
CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamentos
	(
    id_departamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    departamento_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE funcionarios
	(
    id_funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    funcionario_nome VARCHAR(255) NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
DROP DATABASE faculdade;
CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE cursos
	(
    id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    curso_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE alunos
	(
    id_aluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    aluno_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE cursando
	(
    id_cursando INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_curso INT NOT NULL,
    id_aluno INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos (id_curso),
    FOREIGN KEY (id_aluno) REFERENCES alunos (id_aluno)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
    
DROP DATABASE empreitada;
CREATE DATABASE empreitada;
USE empreitada;

CREATE TABLE projetos
	(
    id_projeto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    projeto_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE funcionarios
	(
    id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    funcionario_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE participando
	(
    id_participando INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_projeto INT NOT NULL,
    id_funcionario INT NOT NULL,
    FOREIGN KEY (id_projeto) REFERENCES projetos (id_projeto),
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
DROP DATABASE universidade;
CREATE DATABASE universidade;
USE universidade;

CREATE TABLE pessoas
	(
    id_pessoa INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pessoa_nome VARCHAR(255) NOT NULL
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE alunos
	(
    id_pessoa INT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoas (id_pessoa)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE professores
	(
    id_pessoa INT PRIMARY KEY,
    curso VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_pessoa) REFERENCES pessoas (id_pessoa)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;