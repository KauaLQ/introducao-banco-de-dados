-- Criar o banco de dados
CREATE DATABASE gerenciamento_escolar;

-- Conectar ao banco de dados
\c gerenciamento_escolar;

-- Criando a tabela professores
CREATE TABLE professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL
);

-- Criando a tabela disciplinas com chave estrangeira para professores
CREATE TABLE disciplinas (
    id SERIAL PRIMARY KEY,
	  nome VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL,
    professor_id INT NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES professores(id) ON DELETE CASCADE
);

-- -- Criando a tabela alunos
CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL
);

-- Criando a tabela matriculas (Representa a associação entre Alunos e Disciplinas, relação N:N)
CREATE TABLE matriculas (
    id SERIAL PRIMARY KEY,
	  aluno_id INT NOT NULL,
	  disciplina_id INT NOT NULL,
    data_matricula DATE NOT NULL,
	  FOREIGN KEY (aluno_id) REFERENCES alunos(id) ON DELETE CASCADE,
	  FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id) ON DELETE CASCADE
);

-- Inserir professores ao sistema
INSERT INTO professores (nome, departamento) VALUES 
('Ivanildo Lima', 'Matemática'),
('André Alberto', 'Ciências Sociais'),
('Otacilda Oliveira', 'Ciências Naturais'),
('Thiago Façanha', 'Formação Técnica'),
('Ana Érika', 'Linguagens');

-- Listar professores
SELECT * FROM professores;

-- Inserir disciplinas e interligá-las aos professores
INSERT INTO disciplinas (nome, carga_horaria, professor_id) VALUES 
('História', 100, 2),
('Geografia', 100, 2),
('Português', 200, 5),
('Química', 80, 3),
('Inglês', 40, 5),
('Eletroeletrônica', 200, 4),
('Máquinas Elétricas I', 100, 4),
('Matemática', 200, 1);

-- Listar disciplinas
SELECT * FROM disciplinas;

-- Inserir alunos ao sistema
INSERT INTO alunos (nome, data_nascimento) VALUES 
('Ana Beatriz', '2005-02-08'),
('Cainã Lopes', '2003-02-23'),
('Emily Souza', '2004-09-21'),
('Franscisco Everton', '2003-06-23'),
('Kauã Lima', '2005-05-11'),
('Kauã Dantas', '2004-04-14'),
('Kaline Helen', '2005-05-28'),
('Maria Eduarda', '2006-08-17'),
('Otávio Mesquita', '2005-01-14'),
('Yasmin Oliveira', '2004-12-03');

-- Listar disciplinas
SELECT * FROM alunos;

-- Inserir matriculas que servirão de vínculo entre alunos e professores
INSERT INTO matriculas (aluno_id, disciplina_id, data_matricula) VALUES 
(1, 1, '2024-01-23'),
(1, 2, '2024-01-23'),
(3, 3, '2023-01-23'),
(2, 5, '2024-01-27'),
(2, 1, '2025-02-13'),
(4, 4, '2024-01-23'),
(5, 2, '2023-02-23'),
(6, 6, '2025-01-29'),
(6, 8, '2025-01-25'),
(9, 8, '2024-01-23'),
(7, 5, '2023-03-23'),
(8, 6, '2025-02-23'),
(10, 1, '2022-03-17'),
(10, 7, '2022-01-23'),
(1, 4, '2024-01-23');

-- Mostra a matrícula de cada aluno, o nome do aluno matriculado, a disciplina,
-- e o professor que ministra a displina, tudo ordenado em fator da data de matricula (decrescente).
SELECT 
    m.id AS matricula_id,
    a.nome AS aluno,
    d.nome AS disciplina,
    p.nome AS professor,
    m.data_matricula
FROM matriculas m
JOIN alunos a ON m.aluno_id = a.id
JOIN disciplinas d ON m.disciplina_id = d.id
JOIN professores p ON d.professor_id = p.id
ORDER BY m.data_matricula DESC;
