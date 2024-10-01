create database AcademiaDEV;
USE academiadev;






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
    altura FLOAT NOT NULL
);

INSERT INTO Alunos (nome, CPF, email, senha, data_nascimento, endereco, telefone, informacoes_medicas, data_matricula, peso, altura) VALUES
('Aluno 1', '123.456.789-00', 'aluno1@example.com', 'senha123', '2000-01-01', 'Endereço 1', '11987654321', 'Nenhuma', '2024-01-01', 70.5, 1.75),
('Aluno 2', '234.567.890-01', 'aluno2@example.com', 'senha123', '2001-02-02', 'Endereço 2', '11987654322', 'Alergia a pó', '2024-01-02', 68.0, 1.70),
('Aluno 3', '345.678.901-02', 'aluno3@example.com', 'senha123', '2002-03-03', 'Endereço 3', '11987654323', 'Nenhuma', '2024-01-03', 80.0, 1.80),
('Aluno 4', '456.789.012-03', 'aluno4@example.com', 'senha123', '2003-04-04', 'Endereço 4', '11987654324', 'Diabetes', '2024-01-04', 75.0, 1.65),
('Aluno 5', '567.890.123-04', 'aluno5@example.com', 'senha123', '2004-05-05', 'Endereço 5', '11987654325', 'Nenhuma', '2024-01-05', 90.0, 1.85),
('Aluno 6', '678.901.234-05', 'aluno6@example.com', 'senha123', '2005-06-06', 'Endereço 6', '11987654326', 'Hipertensão', '2024-01-06', 85.0, 1.78),
('Aluno 7', '789.012.345-06', 'aluno7@example.com', 'senha123', '2006-07-07', 'Endereço 7', '11987654327', 'Nenhuma', '2024-01-07', 60.0, 1.60),
('Aluno 8', '890.123.456-07', 'aluno8@example.com', 'senha123', '2007-08-08', 'Endereço 8', '11987654328', 'Alergia a leite', '2024-01-08', 77.0, 1.72),
('Aluno 9', '901.234.567-08', 'aluno9@example.com', 'senha123', '2008-09-09', 'Endereço 9', '11987654329', 'Nenhuma', '2024-01-09', 82.0, 1.80),
('Aluno 10', '012.345.678-09', 'aluno10@example.com', 'senha123', '2009-10-10', 'Endereço 10', '11987654330', 'Asma', '2024-01-10', 72.0, 1.68),
('Aluno 11', '123.456.789-11', 'aluno11@example.com', 'senha123', '2010-11-11', 'Endereço 11', '11987654331', 'Nenhuma', '2024-01-11', 88.0, 1.76),
('Aluno 12', '234.567.890-12', 'aluno12@example.com', 'senha123', '2011-12-12', 'Endereço 12', '11987654332', 'Hipertensão', '2024-01-12', 90.0, 1.74),
('Aluno 13', '345.678.901-13', 'aluno13@example.com', 'senha123', '2012-01-13', 'Endereço 13', '11987654333', 'Nenhuma', '2024-01-13', 65.0, 1.62),
('Aluno 14', '456.789.012-14', 'aluno14@example.com', 'senha123', '2013-02-14', 'Endereço 14', '11987654334', 'Alergia a glúten', '2024-01-14', 74.0, 1.70),
('Aluno 15', '567.890.123-15', 'aluno15@example.com', 'senha123', '2014-03-15', 'Endereço 15', '11987654335', 'Nenhuma', '2024-01-15', 78.0, 1.73),
('Aluno 16', '678.901.234-16', 'aluno16@example.com', 'senha123', '2015-04-16', 'Endereço 16', '11987654336', 'Diabetes', '2024-01-16', 82.0, 1.79),
('Aluno 17', '789.012.345-17', 'aluno17@example.com', 'senha123', '2016-05-17', 'Endereço 17', '11987654337', 'Nenhuma', '2024-01-17', 66.0, 1.64),
('Aluno 18', '890.123.456-18', 'aluno18@example.com', 'senha123', '2017-06-18', 'Endereço 18', '11987654338', 'Hipertensão', '2024-01-18', 80.0, 1.75),
('Aluno 19', '901.234.567-19', 'aluno19@example.com', 'senha123', '2018-07-19', 'Endereço 19', '11987654339', 'Nenhuma', '2024-01-19', 71.0, 1.69),
('Aluno 20', '012.345.678-20', 'aluno20@example.com', 'senha123', '2019-08-20', 'Endereço 20', '11987654340', 'Asma', '2024-01-20', 76.0, 1.77);







CREATE TABLE Planos (
    plano_id INT AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL,
    fk_plano_aluno_id INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    descricao TEXT,
    duracao_meses INT,
	FOREIGN KEY (fk_plano_aluno_id) REFERENCES Alunos(aluno_id)
);

INSERT INTO Planos (nome_plano, fk_plano_aluno_id, preco, descricao, duracao_meses) VALUES
('Plano 1', 1, 99.99, 'Descrição do Plano 1', 12),
('Plano 2', 2, 149.99, 'Descrição do Plano 2', 6),
('Plano 3', 3, 199.99, 'Descrição do Plano 3', 12),
('Plano 4', 4, 249.99, 'Descrição do Plano 4', 18),
('Plano 5', 5, 299.99, 'Descrição do Plano 5', 12),
('Plano 6', 6, 349.99, 'Descrição do Plano 6', 24),
('Plano 7', 7, 399.99, 'Descrição do Plano 7', 3),
('Plano 8', 8, 449.99, 'Descrição do Plano 8', 12),
('Plano 9', 9, 499.99, 'Descrição do Plano 9', 6),
('Plano 10', 10, 549.99, 'Descrição do Plano 10', 12),
('Plano 11', 1, 599.99, 'Descrição do Plano 11', 18),
('Plano 12', 2, 649.99, 'Descrição do Plano 12', 2),
('Plano 13', 3, 699.99, 'Descrição do Plano 13', 3),
('Plano 14', 4, 749.99, 'Descrição do Plano 14', 12),
('Plano 15', 5, 799.99, 'Descrição do Plano 15', 6),
('Plano 16', 6, 849.99, 'Descrição do Plano 16', 12),
('Plano 17', 7, 899.99, 'Descrição do Plano 17', 18),
('Plano 18', 8, 949.99, 'Descrição do Plano 18', 4),
('Plano 19', 9, 999.99, 'Descrição do Plano 19', 3),
('Plano 20', 10, 1049.99, 'Descrição do Plano 20', 12);









CREATE TABLE Funcionarios (
    funcionario_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    senha VARCHAR(50),
    CPF VARCHAR(14) NOT NULL UNIQUE,
    salario DECIMAL(10,2),
    horario_trabalho TIME NOT NULL,
    endereco varchar(255) NOT NULL
);


INSERT INTO Funcionarios (nome, telefone, email, senha, CPF, salario, horario_trabalho, endereco) VALUES
('Funcionário 1', '11987654321', 'funcionario1@example.com', 'senha123', '123.456.789-00', 2500.00, '09:00:00', 'Endereço 1'),
('Funcionário 2', '11987654322', 'funcionario2@example.com', 'senha123', '234.567.890-01', 2700.00, '09:00:00', 'Endereço 2'),
('Funcionário 3', '11987654323', 'funcionario3@example.com', 'senha123', '345.678.901-02', 2900.00, '09:00:00', 'Endereço 3'),
('Funcionário 4', '11987654324', 'funcionario4@example.com', 'senha123', '456.789.012-03', 3100.00, '09:00:00', 'Endereço 4'),
('Funcionário 5', '11987654325', 'funcionario5@example.com', 'senha123', '567.890.123-04', 3300.00, '09:00:00', 'Endereço 5'),
('Funcionário 6', '11987654326', 'funcionario6@example.com', 'senha123', '678.901.234-05', 3500.00, '09:00:00', 'Endereço 6'),
('Funcionário 7', '11987654327', 'funcionario7@example.com', 'senha123', '789.012.345-06', 3700.00, '09:00:00', 'Endereço 7'),
('Funcionário 8', '11987654328', 'funcionario8@example.com', 'senha123', '890.123.456-07', 3900.00, '09:00:00', 'Endereço 8'),
('Funcionário 9', '11987654329', 'funcionario9@example.com', 'senha123', '901.234.567-08', 4100.00, '09:00:00', 'Endereço 9'),
('Funcionário 10', '11987654330', 'funcionario10@example.com', 'senha123', '012.345.678-09', 4300.00, '09:00:00', 'Endereço 10'),
('Funcionário 11', '11987654331', 'funcionario11@example.com', 'senha123', '123.456.789-11', 4500.00, '09:00:00', 'Endereço 11'),
('Funcionário 12', '11987654332', 'funcionario12@example.com', 'senha123', '234.567.890-12', 4700.00, '09:00:00', 'Endereço 12'),
('Funcionário 13', '11987654333', 'funcionario13@example.com', 'senha123', '345.678.901-13', 4900.00, '09:00:00', 'Endereço 13'),
('Funcionário 14', '11987654334', 'funcionario14@example.com', 'senha123', '456.789.012-14', 5100.00, '09:00:00', 'Endereço 14'),
('Funcionário 15', '11987654335', 'funcionario15@example.com', 'senha123', '567.890.123-15', 5300.00, '09:00:00', 'Endereço 15'),
('Funcionário 16', '11987654336', 'funcionario16@example.com', 'senha123', '678.901.234-16', 5500.00, '09:00:00', 'Endereço 16'),
('Funcionário 17', '11987654337', 'funcionario17@example.com', 'senha123', '789.012.345-17', 5700.00, '09:00:00', 'Endereço 17'),
('Funcionário 18', '11987654338', 'funcionario18@example.com', 'senha123', '890.123.456-18', 5900.00, '09:00:00', 'Endereço 18'),
('Funcionário 19', '11987654339', 'funcionario19@example.com', 'senha123', '901.234.567-19', 6100.00, '09:00:00', 'Endereço 19'),
('Funcionário 20', '11987654340', 'funcionario20@example.com', 'senha123', '012.345.678-20', 6300.00, '09:00:00', 'Endereço 20');




CREATE TABLE Pagamentos (
    pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    fk_aluno_id INT NOT NULL,
    fk_plano_id INT NOT NULL,
    data_pagamento DATE NOT NULL,
    status_pagamento VARCHAR(55),
    FOREIGN KEY (fk_aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (fk_plano_id) REFERENCES Planos(plano_id)
);

INSERT INTO Pagamentos (fk_aluno_id, fk_plano_id, data_pagamento, status_pagamento) VALUES
(1, 1, '2024-01-01', 'Pago'),
(1, 2, '2024-01-02', 'Pago'),
(2, 1, '2024-01-03', 'Pendente'),
(2, 2, '2024-01-04', 'Pago'),
(3, 1, '2024-01-05', 'Cancelado'),
(3, 2, '2024-01-06', 'Pago'),
(4, 1, '2024-01-07', 'Pago'),
(4, 2, '2024-01-08', 'Pendente'),
(5, 1, '2024-01-09', 'Pago'),
(5, 2, '2024-01-10', 'Pago'),
(6, 1, '2024-01-11', 'Pendente'),
(6, 2, '2024-01-12', 'Pago'),
(7, 1, '2024-01-13', 'Pago'),
(7, 2, '2024-01-14', 'Cancelado'),
(8, 1, '2024-01-15', 'Pago'),
(8, 2, '2024-01-16', 'Pendente'),
(9, 1, '2024-01-17', 'Pago'),
(9, 2, '2024-01-18', 'Pago'),
(10, 1, '2024-01-19', 'Cancelado'),
(10, 2, '2024-01-20', 'Pago'),
(11, 1, '2024-01-21', 'Pendente'),
(11, 2, '2024-01-22', 'Pago'),
(12, 1, '2024-01-23', 'Pago'),
(12, 2, '2024-01-24', 'Pago'),
(13, 1, '2024-01-25', 'Cancelado'),
(13, 2, '2024-01-26', 'Pendente'),
(14, 1, '2024-01-27', 'Pago'),
(14, 2, '2024-01-28', 'Pago'),
(15, 1, '2024-01-29', 'Pendente'),
(15, 2, '2024-01-30', 'Pago'),
(16, 1, '2024-01-31', 'Pago'),
(16, 2, '2024-02-01', 'Cancelado'),
(17, 1, '2024-02-02', 'Pago'),
(17, 2, '2024-02-03', 'Pendente'),
(18, 1, '2024-02-04', 'Pago'),
(18, 2, '2024-02-05', 'Pago'),
(19, 1, '2024-02-06', 'Cancelado'),
(19, 2, '2024-02-07', 'Pendente'),
(20, 1, '2024-02-08', 'Pago'),
(20, 2, '2024-02-09', 'Pago');



#ALTER TABLE Funcionarios
#ADD endereco VARCHAR(255);

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


INSERT INTO Produtos (fk_aluno_id, nome, descricao, preco, data_fab, data_val) VALUES
(1, 'Produto 1', 'Descrição do Produto 1', 10.00, '2024-01-01', '2025-01-01'),
(1, 'Produto 2', 'Descrição do Produto 2', 15.50, '2024-01-02', '2025-01-02'),
(2, 'Produto 3', 'Descrição do Produto 3', 20.00, '2024-01-03', '2025-01-03'),
(2, 'Produto 4', 'Descrição do Produto 4', 25.75, '2024-01-04', '2025-01-04'),
(3, 'Produto 5', 'Descrição do Produto 5', 30.00, '2024-01-05', '2025-01-05'),
(3, 'Produto 6', 'Descrição do Produto 6', 35.00, '2024-01-06', '2025-01-06'),
(4, 'Produto 7', 'Descrição do Produto 7', 40.25, '2024-01-07', '2025-01-07'),
(4, 'Produto 8', 'Descrição do Produto 8', 45.50, '2024-01-08', '2025-01-08'),
(5, 'Produto 9', 'Descrição do Produto 9', 50.00, '2024-01-09', '2025-01-09'),
(5, 'Produto 10', 'Descrição do Produto 10', 55.75, '2024-01-10', '2025-01-10'),
(6, 'Produto 11', 'Descrição do Produto 11', 60.00, '2024-01-11', '2025-01-11'),
(6, 'Produto 12', 'Descrição do Produto 12', 65.00, '2024-01-12', '2025-01-12'),
(7, 'Produto 13', 'Descrição do Produto 13', 70.50, '2024-01-13', '2025-01-13'),
(7, 'Produto 14', 'Descrição do Produto 14', 75.00, '2024-01-14', '2025-01-14'),
(8, 'Produto 15', 'Descrição do Produto 15', 80.00, '2024-01-15', '2025-01-15'),
(8, 'Produto 16', 'Descrição do Produto 16', 85.50, '2024-01-16', '2025-01-16'),
(9, 'Produto 17', 'Descrição do Produto 17', 90.00, '2024-01-17', '2025-01-17'),
(9, 'Produto 18', 'Descrição do Produto 18', 95.00, '2024-01-18', '2025-01-18'),
(10, 'Produto 19', 'Descrição do Produto 19', 100.00, '2024-01-19', '2025-01-19'),
(10, 'Produto 20', 'Descrição do Produto 20', 105.25, '2024-01-20', '2025-01-20');





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






