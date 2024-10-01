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
    altura FLOAT NOT NULL,
    sexo VARCHAR(1)
    
);

INSERT INTO Alunos (nome, CPF, email, senha, data_nascimento, endereco, telefone, informacoes_medicas, data_matricula, peso, altura, sexo) VALUES
('Ana Silva', '123.456.789-00', 'ana.silva@email.com', 'senha123', '2000-01-01', 'Rua A, 123', '12345-6789', 'Nenhuma', '2024-01-10', 60.5, 1.65, 'F'),
('João Souza', '987.654.321-00', 'joao.souza@email.com', 'senha123', '1998-02-15', 'Rua B, 456', '98765-4321', 'Alergia a pó', '2024-01-11', 75.0, 1.80, 'M'),
('Maria Oliveira', '111.222.333-44', 'maria.oliveira@email.com', 'senha123', '2002-03-20', 'Rua C, 789', '55555-5555', 'Nenhuma', '2024-01-12', 50.0, 1.60, 'F'),
('Carlos Pereira', '444.555.666-77', 'carlos.pereira@email.com', 'senha123', '1995-04-25', 'Rua D, 101', '66666-6666', 'Diabetes', '2024-01-13', 85.0, 1.75, 'M'),
('Julia Santos', '222.333.444-88', 'julia.santos@email.com', 'senha123', '2001-05-30', 'Rua E, 202', '77777-7777', 'Nenhuma', '2024-01-14', 55.0, 1.70, 'F'),
('Lucas Lima', '333.444.555-99', 'lucas.lima@email.com', 'senha123', '1999-06-05', 'Rua F, 303', '88888-8888', 'Nenhuma', '2024-01-15', 78.0, 1.82, 'M'),
('Fernanda Costa', '666.777.888-11', 'fernanda.costa@email.com', 'senha123', '2003-07-10', 'Rua G, 404', '99999-9999', 'Alergia a leite', '2024-01-16', 48.0, 1.55, 'F'),
('Rafael Martins', '555.666.777-22', 'rafael.martins@email.com', 'senha123', '1997-08-15', 'Rua H, 505', '10101-0101', 'Nenhuma', '2024-01-17', 90.0, 1.90, 'M'),
('Camila Almeida', '888.999.000-33', 'camila.almeida@email.com', 'senha123', '2000-09-20', 'Rua I, 606', '20202-0202', 'Nenhuma', '2024-01-18', 58.0, 1.68, 'F'),
('André Barbosa', '777.888.999-44', 'andre.barbosa@email.com', 'senha123', '1998-10-25', 'Rua J, 707', '30303-0303', 'Hipertensão', '2024-01-19', 80.0, 1.80, 'M'),
('Tatiane Rocha', '999.000.111-55', 'tatiane.rocha@email.com', 'senha123', '2002-11-30', 'Rua K, 808', '40404-0404', 'Nenhuma', '2024-01-20', 52.0, 1.65, 'F'),
('Felipe Dias', '000.111.222-66', 'felipe.dias@email.com', 'senha123', '1996-12-05', 'Rua L, 909', '50505-0505', 'Nenhuma', '2024-01-21', 70.0, 1.78, 'M'),
('Beatriz Martins', '121.314.151-71', 'beatriz.martins@email.com', 'senha123', '2001-01-01', 'Rua M, 1010', '60606-0606', 'Nenhuma', '2024-01-22', 53.0, 1.62, 'F'),
('Gustavo Silva', '414.515.616-81', 'gustavo.silva@email.com', 'senha123', '1994-02-02', 'Rua N, 1111', '70707-0707', 'Nenhuma', '2024-01-23', 77.0, 1.85, 'M'),
('Natália Costa', '616.717.818-91', 'natalia.costa@email.com', 'senha123', '1993-03-03', 'Rua O, 1212', '80808-0808', 'Nenhuma', '2024-01-24', 60.0, 1.66, 'F'),
('Matheus Fernandes', '919.202.303-10', 'matheus.fernandes@email.com', 'senha123', '2000-04-04', 'Rua P, 1313', '90909-0909', 'Nenhuma', '2024-01-25', 72.0, 1.79, 'M'),
('Isabella Santos', '212.323.434-20', 'isabella.santos@email.com', 'senha123', '1997-05-05', 'Rua Q, 1414', '10101-0101', 'Nenhuma', '2024-01-26', 55.0, 1.67, 'F'),
('Leonardo Ferreira', '111.111.111-11', 'leonardo.ferreira@email.com', 'senha123', '1995-06-06', 'Rua R, 1515', '20202-0202', 'Nenhuma', '2024-01-27', 82.0, 1.88, 'M');








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
    endereco varchar(255) NOT NULL,
    sexo VARCHAR(1)
);


INSERT INTO Funcionarios (nome, telefone, email, senha, CPF, salario, horario_trabalho, endereco, sexo) VALUES
('João Silva', '11-91234-5678', 'joao.silva@email.com', 'senha123', '123.456.789-00', 2500.00, '08:00:00', 'Rua A, 100', 'M'),
('Maria Santos', '11-99876-5432', 'maria.santos@email.com', 'senha123', '987.654.321-00', 3000.00, '09:00:00', 'Rua B, 200', 'F'),
('Carlos Oliveira', '11-93456-7890', 'carlos.oliveira@email.com', 'senha123', '111.222.333-44', 2800.00, '08:30:00', 'Rua C, 300', 'M'),
('Ana Costa', '11-91234-6789', 'ana.costa@email.com', 'senha123', '444.555.666-77', 3200.00, '07:00:00', 'Rua D, 400', 'F'),
('Lucas Lima', '11-99876-5432', 'lucas.lima@email.com', 'senha123', '222.333.444-88', 2700.00, '10:00:00', 'Rua E, 500', 'M'),
('Tatiane Rocha', '11-94567-8901', 'tatiane.rocha@email.com', 'senha123', '555.666.777-99', 3100.00, '08:15:00', 'Rua F, 600', 'F'),
('Felipe Dias', '11-95678-9012', 'felipe.dias@email.com', 'senha123', '666.777.888-11', 2900.00, '09:30:00', 'Rua G, 700', 'M'),
('Beatriz Martins', '11-93456-7891', 'beatriz.martins@email.com', 'senha123', '777.888.999-22', 3000.00, '08:45:00', 'Rua H, 800', 'F'),
('Gustavo Santos', '11-91234-5679', 'gustavo.santos@email.com', 'senha123', '888.999.000-33', 2600.00, '07:30:00', 'Rua I, 900', 'M'),
('Fernanda Costa', '11-92345-6789', 'fernanda.costa@email.com', 'senha123', '999.000.111-44', 3200.00, '09:00:00', 'Rua J, 1000', 'F'),
('André Ferreira', '11-91234-6780', 'andre.ferreira@email.com', 'senha123', '111.222.333-55', 2500.00, '08:00:00', 'Rua K, 1100', 'M'),
('Isabela Almeida', '11-99876-5433', 'isabela.almeida@email.com', 'senha123', '444.555.666-66', 3000.00, '09:15:00', 'Rua L, 1200', 'F'),
('Matheus Pereira', '11-93456-7892', 'matheus.pereira@email.com', 'senha123', '222.333.444-99', 2800.00, '08:30:00', 'Rua M, 1300', 'M'),
('Camila Rocha', '11-91234-5670', 'camila.rocha@email.com', 'senha123', '555.666.777-88', 3200.00, '10:00:00', 'Rua N, 1400', 'F'),
('Leonardo Dias', '11-95678-9013', 'leonardo.dias@email.com', 'senha123', '666.777.888-99', 2900.00, '08:00:00', 'Rua O, 1500', 'M'),
('Juliana Santos', '11-94567-8902', 'juliana.santos@email.com', 'senha123', '777.888.999-00', 3000.00, '09:00:00', 'Rua P, 1600', 'F'),
('Rafael Almeida', '11-91234-5671', 'rafael.almeida@email.com', 'senha123', '888.999.000-11', 2600.00, '07:30:00', 'Rua Q, 1700', 'M'),
('Natália Costa', '11-99876-5434', 'natalia.costa@email.com', 'senha123', '999.000.111-22', 3200.00, '09:00:00', 'Rua R, 1800', 'F'),
('Diego Ferreira', '11-93456-7893', 'diego.ferreira@email.com', 'senha123', '111.222.333-66', 2500.00, '08:00:00', 'Rua S, 1900', 'M'),
('Priscila Martins', '11-91234-5672', 'priscila.martins@email.com', 'senha123', '444.555.666-22', 3000.00, '09:15:00', 'Rua T, 2000', 'F');





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





#pesquisar se é possivel filtrar uma coluna de uma tabela e com esse
#resultado da filtração, pegar o resultado e armazenar em uma view 




select*from aulas;
select*from alunos;
select*from planos;
select*from pagamentos;
select*from produtos;
