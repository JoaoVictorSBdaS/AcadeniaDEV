
USE AcademiaDEV;





CREATE TABLE Pagamentos (
    pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_aluno_id INT NOT NULL,
    fk_plano_id INT NOT NULL,
    data_pagamento DATE NOT NULL,
    status_pagamento VARCHAR(55),
    FOREIGN KEY (fk_aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (fk_plano_id) REFERENCES Planos(plano_id)
);

##fazer inser




CREATE TABLE Planos (
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    descricao TEXT,
    duracao_meses INT
);

##fazer inser



-- Tabelas
CREATE TABLE Alunos (
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(100),
    senha VARCHAR(50),
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    informacoes_medicas TEXT,
    data_matricula DATE NOT NULL,
    peso FLOAT NOT NULL,
    altura FLOAT NOT NULL,
    credencial INT NOT NULL
);

INSERT INTO Alunos (nome, CPF, email, senha, data_nascimento, endereco, telefone, informacoes_medicas, data_matricula, peso, altura, credencial)
VALUES
('Aluno 1', '12345678901', 'aluno1@example.com', 'senha123', '2000-01-01', 'Endereço 1', '1234567890', 'Nenhuma', '2024-01-01', 70.0, 1.75, 2),
('Aluno 2', '12345678902', 'aluno2@example.com', 'senha123', '2000-02-02', 'Endereço 2', '1234567891', 'Nenhuma', '2024-01-02', 68.0, 1.70, 2),
('Aluno 3', '12345678903', 'aluno3@example.com', 'senha123', '2000-03-03', 'Endereço 3', '1234567892', 'Nenhuma', '2024-01-03', 75.0, 1.80, 2),
('Aluno 4', '12345678904', 'aluno4@example.com', 'senha123', '2000-04-04', 'Endereço 4', '1234567893', 'Nenhuma', '2024-01-04', 65.0, 1.65, 2),
('Aluno 5', '12345678905', 'aluno5@example.com', 'senha123', '2000-05-05', 'Endereço 5', '1234567894', 'Nenhuma', '2024-01-05', 80.0, 1.85, 2),
('Aluno 6', '12345678906', 'aluno6@example.com', 'senha123', '2000-06-06', 'Endereço 6', '1234567895', 'Nenhuma', '2024-01-06', 72.0, 1.72, 2),
('Aluno 7', '12345678907', 'aluno7@example.com', 'senha123', '2000-07-07', 'Endereço 7', '1234567896', 'Nenhuma', '2024-01-07', 78.0, 1.78, 2),
('Aluno 8', '12345678908', 'aluno8@example.com', 'senha123', '2000-08-08', 'Endereço 8', '1234567897', 'Nenhuma', '2024-01-08', 70.0, 1.76, 2),
('Aluno 9', '12345678909', 'aluno9@example.com', 'senha123', '2000-09-09', 'Endereço 9', '1234567898', 'Nenhuma', '2024-01-09', 65.0, 1.68, 2),
('Aluno 10', '12345678910', 'aluno10@example.com', 'senha123', '2000-10-10', 'Endereço 10', '1234567899', 'Nenhuma', '2024-01-10', 74.0, 1.74, 2),
('Aluno 11', '12345678911', 'aluno11@example.com', 'senha123', '2000-11-11', 'Endereço 11', '1234567800', 'Nenhuma', '2024-01-11', 71.0, 1.71, 2),
('Aluno 12', '12345678912', 'aluno12@example.com', 'senha123', '2000-12-12', 'Endereço 12', '1234567801', 'Nenhuma', '2024-01-12', 69.0, 1.69, 2),
('Aluno 13', '12345678913', 'aluno13@example.com', 'senha123', '2000-01-13', 'Endereço 13', '1234567802', 'Nenhuma', '2024-01-13', 77.0, 1.77, 2),
('Aluno 14', '12345678914', 'aluno14@example.com', 'senha123', '2000-02-14', 'Endereço 14', '1234567803', 'Nenhuma', '2024-01-14', 73.0, 1.73, 2),
('Aluno 15', '12345678915', 'aluno15@example.com', 'senha123', '2000-03-15', 'Endereço 15', '1234567804', 'Nenhuma', '2024-01-15', 76.0, 1.76, 2),
('Aluno 16', '12345678916', 'aluno16@example.com', 'senha123', '2000-04-16', 'Endereço 16', '1234567805', 'Nenhuma', '2024-01-16', 66.0, 1.66, 2),
('Aluno 17', '12345678917', 'aluno17@example.com', 'senha123', '2000-05-17', 'Endereço 17', '1234567806', 'Nenhuma', '2024-01-17', 82.0, 1.82, 2),
('Aluno 18', '12345678918', 'aluno18@example.com', 'senha123', '2000-06-18', 'Endereço 18', '1234567807', 'Nenhuma', '2024-01-18', 79.0, 1.79, 2),
('Aluno 19', '12345678919', 'aluno19@example.com', 'senha123', '2000-07-19', 'Endereço 19', '1234567808', 'Nenhuma', '2024-01-19', 72.0, 1.72, 2),
('Aluno 20', '12345678920', 'aluno20@example.com', 'senha123', '2000-08-20', 'Endereço 20', '1234567809', 'Nenhuma', '2024-01-20', 75.0, 1.75, 2);


CREATE TABLE Funcionarios (
    funcionario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    senha VARCHAR(50),
    CPF VARCHAR(14) NOT NULL UNIQUE,
    salario DECIMAL(10,2),
    horario_trabalho TIME NOT NULL,
    credencial INT NOT NULL
    ##endereco varchar(255) NOT NULL,
);
ALTER TABLE Funcionarios
ADD endereco VARCHAR(255);


INSERT INTO Funcionarios (nome, telefone, email, senha, CPF, salario, horario_trabalho, credencial, endereco)
VALUES
('Funcionario 1', '1234567890', 'funcionario1@example.com', 'senha123', '12345678901', 2500.00, '08:00:00', 1, 'Endereco 1'),
('Funcionario 2', '1234567891', 'funcionario2@example.com', 'senha123', '12345678902', 2600.00, '09:00:00', 1, 'Endereco 2'),
('Funcionario 3', '1234567892', 'funcionario3@example.com', 'senha123', '12345678903', 2700.00, '08:30:00', 1, 'Endereco 3'),
('Funcionario 4', '1234567893', 'funcionario4@example.com', 'senha123', '12345678904', 2800.00, '08:00:00', 1, 'Endereco 4'),
('Funcionario 5', '1234567894', 'funcionario5@example.com', 'senha123', '12345678905', 2900.00, '09:00:00', 1, 'Endereco 5'),
('Funcionario 6', '1234567895', 'funcionario6@example.com', 'senha123', '12345678906', 3000.00, '08:30:00', 1, 'Endereco 6'),
('Funcionario 7', '1234567896', 'funcionario7@example.com', 'senha123', '12345678907', 3100.00, '08:00:00', 1, 'Endereco 7'),
('Funcionario 8', '1234567897', 'funcionario8@example.com', 'senha123', '12345678908', 3200.00, '09:00:00', 1, 'Endereco 8'),
('Funcionario 9', '1234567898', 'funcionario9@example.com', 'senha123', '12345678909', 3300.00, '08:30:00', 1, 'Endereco 9'),
('Funcionario 10', '1234567899', 'funcionario10@example.com', 'senha123', '12345678910', 3400.00, '08:00:00', 1, 'Endereco 10'),
('Funcionario 11', '1234567800', 'funcionario11@example.com', 'senha123', '12345678911', 3500.00, '09:00:00', 1, 'Endereco 11'),
('Funcionario 12', '1234567801', 'funcionario12@example.com', 'senha123', '12345678912', 3600.00, '08:30:00', 1, 'Endereco 12'),
('Funcionario 13', '1234567802', 'funcionario13@example.com', 'senha123', '12345678913', 3700.00, '08:00:00', 1, 'Endereco 13'),
('Funcionario 14', '1234567803', 'funcionario14@example.com', 'senha123', '12345678914', 3800.00, '09:00:00', 1, 'Endereco 14'),
('Funcionario 15', '1234567804', 'funcionario15@example.com', 'senha123', '12345678915', 3900.00, '08:30:00', 1, 'Endereco 15'),
('Funcionario 16', '1234567805', 'funcionario16@example.com', 'senha123', '12345678916', 4000.00, '08:00:00', 1, 'Endereco 16'),
('Funcionario 17', '1234567806', 'funcionario17@example.com', 'senha123', '12345678917', 4100.00, '09:00:00', 1, 'Endereco 17'),
('Funcionario 18', '1234567807', 'funcionario18@example.com', 'senha123', '12345678918', 4200.00, '08:30:00', 1, 'Endereco 18'),
('Funcionario 19', '1234567808', 'funcionario19@example.com', 'senha123', '12345678919', 4300.00, '08:00:00', 1, 'Endereco 19'),
('Funcionario 20', '1234567809', 'funcionario20@example.com', 'senha123', '12345678920', 4400.00, '09:00:00', 1, 'Endereco 20');

select*from aulas;


INSERT INTO Aulas (fk_instrutor_id, nome_aula, descricao, horario_inicio, horario_fim, data_aula, treinos)
VALUES
(1, 'Aula de Yoga', 'Aula relaxante de yoga para iniciantes.', '08:00:00', '09:00:00', '2024-09-01', 'Treino de flexibilidade'),
(2, 'Aula de Musculação', 'Treino de força focado em musculação.', '09:00:00', '10:00:00', '2024-09-02', 'Treino de força'),
(3, 'Aula de Zumba', 'Aula de dança para queimar calorias.', '10:00:00', '11:00:00', '2024-09-03', 'Treino cardiovascular'),
(4, 'Aula de Pilates', 'Aula de pilates para tonificação muscular.', '11:00:00', '12:00:00', '2024-09-04', 'Treino de tonificação'),
(5, 'Aula de Funcional', 'Aula funcional com treinos variados.', '14:00:00', '15:00:00', '2024-09-05', 'Treino funcional'),
(6, 'Aula de Boxe', 'Aula de boxe para condicionamento físico.', '15:00:00', '16:00:00', '2024-09-06', 'Treino de combate'),
(7, 'Aula de Ciclismo', 'Aula de ciclismo indoor.', '16:00:00', '17:00:00', '2024-09-07', 'Treino de resistência'),
(8, 'Aula de Natação', 'Aula de natação para iniciantes.', '17:00:00', '18:00:00', '2024-09-08', 'Treino aquático'),
(9, 'Aula de HIIT', 'Aula de treino intervalado de alta intensidade.', '18:00:00', '19:00:00', '2024-09-09', 'Treino de alta intensidade'),
(10, 'Aula de Dança', 'Aula de dança moderna.', '19:00:00', '20:00:00', '2024-09-10', 'Treino de expressão'),
(11, 'Aula de CrossFit', 'Aula de CrossFit para todos os níveis.', '08:00:00', '09:00:00', '2024-09-11', 'Treino de força e resistência'),
(12, 'Aula de Aeróbica', 'Aula de aeróbica com músicas animadas.', '09:00:00', '10:00:00', '2024-09-12', 'Treino aeróbico'),
(13, 'Aula de Muay Thai', 'Aula de Muay Thai para autodefesa.', '10:00:00', '11:00:00', '2024-09-13', 'Treino de combate'),
(14, 'Aula de Meditação', 'Aula para meditação e relaxamento.', '11:00:00', '12:00:00', '2024-09-14', 'Treino mental'),
(15, 'Aula de Circuito', 'Aula com circuito de exercícios variados.', '14:00:00', '15:00:00', '2024-09-15', 'Treino de circuito'),
(16, 'Aula de Kettlebell', 'Aula de kettlebell para força e resistência.', '15:00:00', '16:00:00', '2024-09-16', 'Treino de kettlebell'),
(17, 'Aula de Step', 'Aula de step com coreografias.', '16:00:00', '17:00:00', '2024-09-17', 'Treino de ritmo'),
(18, 'Aula de Artes Marciais', 'Aula de artes marciais para iniciantes.', '17:00:00', '18:00:00', '2024-09-18', 'Treino de defesa pessoal'),
(19, 'Aula de Alongamento', 'Aula de alongamento para flexibilidade.', '18:00:00', '19:00:00', '2024-09-19', 'Treino de flexibilidade'),
(20, 'Aula de Capoeira', 'Aula de capoeira com ritmo e dança.', '19:00:00', '20:00:00', '2024-09-20', 'Treino cultural');




CREATE TABLE Produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_aluno_id INT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    data_fab DATE,
    data_val DATE,
    FOREIGN KEY (fk_aluno_id) REFERENCES Alunos(aluno_id)
);

##fazer insert em produtos





CREATE TABLE Aulas (
    aula_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_instrutor_id INT NOT NULL,
    nome_aula VARCHAR(50) NOT NULL,
    descricao TEXT,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    data_aula DATE NOT NULL,
    treinos VARCHAR(50),
    FOREIGN KEY (fk_instrutor_id) REFERENCES Funcionarios(funcionario_id)
);

##fazer insert em aulas
