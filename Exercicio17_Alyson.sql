DROP DATABASE faculdade;
CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE alunos
	(
    id_aluno INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    aluno_nome VARCHAR(255),
    aluno_data_nasc DATE,
    aluno_email VARCHAR(100),
    aluno_telefone VARCHAR(15),
    aluno_cpf VARCHAR(15)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE professores 
	(
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15),
    titulação VARCHAR(50)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1; 
    
CREATE TABLE cursos 
	(
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    curso_nome VARCHAR(100) NOT NULL,
    curso_duracao INT,  -- em semestres
    descricao TEXT
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
CREATE TABLE turmas 
    (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    id_curso INT,
    ano INT,
    semestre INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
       
CREATE TABLE matriculas 
	(
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
CREATE TABLE aulas 
	(
    id_aula INT PRIMARY KEY AUTO_INCREMENT,
    id_turma INT,
    id_professor INT,
    data_aula DATE,
    sala VARCHAR(50),
    FOREIGN KEY (id_turma) REFERENCES Turmas(id_turma),
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professor)
	)ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
INSERT INTO alunos (aluno_nome, aluno_data_nasc, aluno_email, aluno_telefone, aluno_cpf) VALUES
('Aluno 1', '2000-01-01', 'aluno1@email.com', '1234567890', '111.111.111-11'),
('Aluno 2', '2000-01-02', 'aluno2@email.com', '1234567891', '222.222.222-22'),
('Aluno 3', '2000-01-03', 'aluno3@email.com', '1234567892', '333.333.333-33'),
('Aluno 4', '2000-01-04', 'aluno4@email.com', '1234567893', '444.444.444-44'),
('Aluno 5', '2000-01-05', 'aluno5@email.com', '1234567894', '555.555.555-55'),
('Aluno 6', '2000-01-06', 'aluno6@email.com', '1234567895', '666.666.666-66'),
('Aluno 7', '2000-01-07', 'aluno7@email.com', '1234567896', '777.777.777-77'),
('Aluno 8', '2000-01-08', 'aluno8@email.com', '1234567897', '888.888.888-88'),
('Aluno 9', '2000-01-09', 'aluno9@email.com', '1234567898', '999.999.999-99'),
('Aluno 10', '2000-01-10', 'aluno10@email.com', '1234567899', '000.000.000-00'),
('Aluno 11', '2000-01-11', 'aluno11@email.com', '1234567800', '111.111.111-12'),
('Aluno 12', '2000-01-12', 'aluno12@email.com', '1234567801', '222.222.222-23'),
('Aluno 13', '2000-01-13', 'aluno13@email.com', '1234567802', '333.333.333-34'),
('Aluno 14', '2000-01-14', 'aluno14@email.com', '1234567803', '444.444.444-45'),
('Aluno 15', '2000-01-15', 'aluno15@email.com', '1234567804', '555.555.555-56'),
('Aluno 16', '2000-01-16', 'aluno16@email.com', '1234567805', '666.666.666-67'),
('Aluno 17', '2000-01-17', 'aluno17@email.com', '1234567806', '777.777.777-78'),
('Aluno 18', '2000-01-18', 'aluno18@email.com', '1234567807', '888.888.888-89'),
('Aluno 19', '2000-01-19', 'aluno19@email.com', '1234567808', '999.999.999-90'),
('Aluno 20', '2000-01-20', 'aluno20@email.com', '1234567809', '000.000.000-01'),
('Aluno 21', '2000-01-21', 'aluno21@email.com', '1234567810', '111.111.111-13'),
('Aluno 22', '2000-01-22', 'aluno22@email.com', '1234567811', '222.222.222-24'),
('Aluno 23', '2000-01-23', 'aluno23@email.com', '1234567812', '333.333.333-35'),
('Aluno 24', '2000-01-24', 'aluno24@email.com', '1234567813', '444.444.444-46'),
('Aluno 25', '2000-01-25', 'aluno25@email.com', '1234567814', '555.555.555-57'),
('Aluno 26', '2000-01-26', 'aluno26@email.com', '1234567815', '666.666.666-68'),
('Aluno 27', '2000-01-27', 'aluno27@email.com', '1234567816', '777.777.777-79'),
('Aluno 28', '2000-01-28', 'aluno28@email.com', '1234567817', '888.888.888-80'),
('Aluno 29', '2000-01-29', 'aluno29@email.com', '1234567818', '999.999.999-91'),
('Aluno 30', '2000-01-30', 'aluno30@email.com', '1234567819', '000.000.000-02'),
('Aluno 31', '2000-01-31', 'aluno31@email.com', '1234567820', '111.111.111-14'),
('Aluno 32', '2000-02-01', 'aluno32@email.com', '1234567821', '222.222.222-25'),
('Aluno 33', '2000-02-02', 'aluno33@email.com', '1234567822', '333.333.333-36'),
('Aluno 34', '2000-02-03', 'aluno34@email.com', '1234567823', '444.444.444-47'),
('Aluno 35', '2000-02-04', 'aluno35@email.com', '1234567824', '555.555.555-58'),
('Aluno 36', '2000-02-05', 'aluno36@email.com', '1234567825', '666.666.666-69'),
('Aluno 37', '2000-02-06', 'aluno37@email.com', '1234567826', '777.777.777-70'),
('Aluno 38', '2000-02-07', 'aluno38@email.com', '1234567827', '888.888.888-81'),
('Aluno 39', '2000-02-08', 'aluno39@email.com', '1234567828', '999.999.999-92'),
('Aluno 40', '2000-02-09', 'aluno40@email.com', '1234567829', '000.000.000-03'),
('Aluno 41', '2000-02-10', 'aluno41@email.com', '1234567830', '111.111.111-15'),
('Aluno 42', '2000-02-11', 'aluno42@email.com', '1234567831', '222.222.222-26'),
('Aluno 43', '2000-02-12', 'aluno43@email.com', '1234567832', '333.333.333-37'),
('Aluno 44', '2000-02-13', 'aluno44@email.com', '1234567833', '444.444.444-48'),
('Aluno 45', '2000-02-14', 'aluno45@email.com', '1234567834', '555.555.555-59'),
('Aluno 46', '2000-02-15', 'aluno46@email.com', '1234567835', '666.666.666-60'),
('Aluno 47', '2000-02-16', 'aluno47@email.com', '1234567836', '777.777.777-71'),
('Aluno 48', '2000-02-17', 'aluno48@email.com', '1234567837', '888.888.888-82'),
('Aluno 49', '2000-02-18', 'aluno49@email.com', '1234567838', '999.999.999-93'),
('Aluno 50', '2000-02-19', 'aluno50@email.com', '1234567839', '000.000.000-04');

INSERT INTO professores (nome, email, telefone, titulação) VALUES
('Professor 1', 'prof1@email.com', '1234567890', 'Mestre'),
('Professor 2', 'prof2@email.com', '1234567891', 'Doutor'),
('Professor 3', 'prof3@email.com', '1234567892', 'Especialista'),
('Professor 4', 'prof4@email.com', '1234567893', 'Doutor'),
('Professor 5', 'prof5@email.com', '1234567894', 'Mestre');

INSERT INTO cursos (curso_nome, curso_duracao, descricao) VALUES
('Matemática Aplicada', 6, 'Curso focado em aplicações práticas da Matemática.'),
('Física Geral', 8, 'Estudo dos princípios fundamentais da Física.'),
('Química Orgânica', 6, 'Aprofundamento em compostos orgânicos e suas reações.'),
('Ciências da Computação', 8, 'Formação completa em desenvolvimento de software.'),
('Engenharia de Produção', 10, 'Gestão e otimização de processos produtivos.');

INSERT INTO turmas (id_curso, ano, semestre) VALUES
(1, 2024, 1),
(1, 2024, 2),
(2, 2024, 1),
(2, 2024, 2),
(3, 2024, 1),
(3, 2024, 2),
(4, 2024, 1),
(4, 2024, 2),
(5, 2024, 1),
(5, 2024, 2);

INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2024-01-01'),
(2, 1, '2024-01-02'),
(3, 3, '2024-01-03'),
(4, 3, '2024-01-04'),
(5, 5, '2024-01-05'),
(6, 5, '2024-01-06'),
(7, 7, '2024-01-07'),
(8, 7, '2024-01-08'),
(9, 9, '2024-01-09'),
(10, 9, '2024-01-10'),
(11, 1, '2024-01-11'),
(12, 1, '2024-01-12'),
(13, 3, '2024-01-13'),
(14, 3, '2024-01-14'),
(15, 5, '2024-01-15'),
(16, 5, '2024-01-16'),
(17, 7, '2024-01-17'),
(18, 7, '2024-01-18'),
(19, 9, '2024-01-19'),
(20, 9, '2024-01-20'),
(21, 1, '2024-01-21'),
(22, 1, '2024-01-22'),
(23, 3, '2024-01-23'),
(24, 3, '2024-01-24'),
(25, 5, '2024-01-25'),
(26, 5, '2024-01-26'),
(27, 7, '2024-01-27'),
(28, 7, '2024-01-28'),
(29, 9, '2024-01-29'),
(30, 9, '2024-01-30'),
(31, 1, '2024-01-31'),
(32, 1, '2024-02-01'),
(33, 3, '2024-02-02'),
(34, 3, '2024-02-03'),
(35, 5, '2024-02-04'),
(36, 5, '2024-02-05'),
(37, 7, '2024-02-06'),
(38, 7, '2024-02-07'),
(39, 9, '2024-02-08'),
(40, 9, '2024-02-09'),
(41, 1, '2024-02-10'),
(42, 1, '2024-02-11'),
(43, 3, '2024-02-12'),
(44, 3, '2024-02-13'),
(45, 5, '2024-02-14'),
(46, 5, '2024-02-15'),
(47, 7, '2024-02-16'),
(48, 7, '2024-02-17'),
(49, 9, '2024-02-18'),
(50, 9, '2024-02-19');

INSERT INTO aulas (id_turma, id_professor, data_aula, sala) VALUES
(1, 1, '2024-01-20', 'Sala 101'),
(1, 1, '2024-01-22', 'Sala 101'),
(3, 2, '2024-01-21', 'Sala 102'),
(3, 2, '2024-01-23', 'Sala 102'),
(5, 3, '2024-01-24', 'Sala 103'),
(5, 3, '2024-01-25', 'Sala 103'),
(7, 4, '2024-01-26', 'Sala 104'),
(7, 4, '2024-01-27', 'Sala 104'),
(9, 5, '2024-01-28', 'Sala 105'),
(9, 5, '2024-01-29', 'Sala 105');

UPDATE alunos SET aluno_telefone = 11111111 WHERE id_aluno = 1;
UPDATE cursos SET descricao = ('Curso matematico') WHERE id_curso = 1;
DELETE FROM matriculas WHERE id_matricula = 1;
/* DELETE FROM professores WHERE id_professor = 1; */

 
SELECT * FROM alunos;
SELECT * FROM aulas;
SELECT * FROM cursos;
SELECT * FROM matriculas;
SELECT * FROM professores;
SELECT * FROM turmas;
    
SELECT DISTINCT descricao FROM cursos;
SELECT * FROM cursos ORDER BY curso_duracao DESC limit 1;    

CREATE TABLE alunos_matriculados AS
SELECT a.id_aluno, a.aluno_nome, a.aluno_email, t.id_turma
FROM alunos a
JOIN matriculas m ON a.id_aluno = m.id_aluno
JOIN turmas t ON m.id_turma = t.id_turma
WHERE t.id_curso = (SELECT id_curso FROM cursos WHERE curso_nome = 'Matemática Aplicada');

    