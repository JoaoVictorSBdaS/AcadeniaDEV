--CREATE DATABASE AcademiaDEV
USE AcademiaDEV
-- Criar a tabela UsuariosLogin
CREATE TABLE UsuariosLogin (
    Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Usuario VARCHAR(50) NOT NULL UNIQUE,  -- Restrições de exclusividade
    Senha VARCHAR(255) NOT NULL
);

-- Inserir valores em UsuariosLogin
INSERT INTO UsuariosLogin (Usuario, Senha)
VALUES ('usuario1', 'senha1'), ('usuario2', 'senha2');

-- Criar a tabela Alunos
CREATE TABLE Alunos (
    aluno_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    informacoes_medicas TEXT,
    data_matricula DATE NOT NULL
);

-- Inserir valores em Alunos
INSERT INTO Alunos (nome, CPF, data_nascimento, endereco, telefone, informacoes_medicas, data_matricula)
VALUES 
('João Silva', '123.456.789-00', '1990-01-01', 'Rua A, 123', '1111-1111', 'Alergia a poeira', '2024-01-01'),
('Maria Souza', '987.654.321-00', '1985-06-15', 'Rua B, 456', '2222-2222', 'Asma', '2024-02-01');

-- Criar a tabela Funcionarios
CREATE TABLE Funcionarios (
    funcionario_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    cargo VARCHAR(50),
    especializacao VARCHAR(100),
    horario_trabalho VARCHAR(50),
    salario DECIMAL(15,2),
    email VARCHAR(100)
);

-- Inserir valores em Funcionarios
INSERT INTO Funcionarios (nome, CPF, cargo, especializacao, horario_trabalho, salario, email)
VALUES 
('Carlos Gomes', '333.444.555-66', 'Instrutor', 'Musculação', '08:00 - 17:00', 3000.00, 'carlos@mail.com'),
('Ana Lima', '777.888.999-00', 'Instrutor', 'Yoga', '10:00 - 19:00', 2800.00, 'ana@mail.com');

-- Criar a tabela Planos
CREATE TABLE Planos(
    plano_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nome_plano VARCHAR(50) NOT NULL,
    duracao_meses INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    descricao TEXT
);

-- Inserir valores em Planos
INSERT INTO Planos (nome_plano, duracao_meses, preco, descricao)
VALUES 
('Mensal', 1, 100.00, 'Plano mensal de acesso à academia'),
('Anual', 12, 1000.00, 'Plano anual de acesso à academia');

-- Criar a tabela Pagamentos
CREATE TABLE Pagamentos(
    pagamento_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    aluno_id INT NOT NULL,
    plano_id INT NOT NULL,
    data_pagamento DATE NOT NULL,
    status_pagamento VARCHAR(10) NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
);

-- Inserir valores em Pagamentos
INSERT INTO Pagamentos (aluno_id, plano_id, data_pagamento, status_pagamento)
VALUES (1, 1, '2024-01-01', 'Pago'),
       (2, 2, '2024-02-01', 'Pendente');

-- Criar a tabela Aulas
CREATE TABLE Aulas(
    aula_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nome_aula VARCHAR(50) NOT NULL,
    descricao TEXT,
    instrutor_id INT NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    data_aula DATE NOT NULL,
    treinos VARCHAR(50),
    FOREIGN KEY (instrutor_id) REFERENCES Funcionarios(funcionario_id)
);

-- Inserir valores em Aulas
INSERT INTO Aulas (nome_aula, descricao, instrutor_id, horario_inicio, horario_fim, data_aula, treinos)
VALUES 
('Musculação', 'Treino de musculação intenso', 1, '08:00', '09:00', '2024-09-01', 'Treino A'),
('Yoga', 'Aula de yoga para relaxamento', 2, '10:00', '11:00', '2024-09-02', 'Treino B');

-- Criar a tabela Reservas
CREATE TABLE Reservas(
    reserva_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    aluno_id INT NOT NULL,
    aula_id INT NOT NULL,
    data_reserva DATE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id),
    FOREIGN KEY (aula_id) REFERENCES Aulas(aula_id)
);

-- Inserir valores em Reservas
INSERT INTO Reservas (aluno_id, aula_id, data_reserva)
VALUES (1, 1, '2024-09-01'),
       (2, 2, '2024-09-02');

-- Criar a tabela Relatorios
CREATE TABLE Relatorios(
    relatorio_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    descricao TEXT,
    data_geracao DATE NOT NULL,
    gerado_por INT NOT NULL,
    tipo_relatorio VARCHAR(20) NOT NULL,
    FOREIGN KEY (gerado_por) REFERENCES Funcionarios(funcionario_id)
);

-- Inserir valores em Relatorios
INSERT INTO Relatorios (descricao, data_geracao, gerado_por, tipo_relatorio)
VALUES ('Relatório de frequência mensal', '2024-09-01', 1, 'Frequência'),
       ('Relatório financeiro anual', '2024-09-02', 2, 'Financeiro');

-- Criar a tabela Produtos
CREATE TABLE Produtos (
    produto_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    aluno_id INT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id)
);

-- Inserir valores em Produtos
INSERT INTO Produtos (nome_produto, descricao, preco, aluno_id)
VALUES ('Suplemento A', 'Suplemento alimentar para ganho de massa', 50.00, 1),
       ('Suplemento B', 'Suplemento vitamínico', 30.00, 2);


	   
select*from UsuariosLogin
select*from Alunos
select*from Funcionarios
select*from Planos
select*from Pagamentos
select*from Aulas
select*from Reservas
select*from Relatorios
select*from Produtos