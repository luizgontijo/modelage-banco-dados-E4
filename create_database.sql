CREATE TABLE doador (
    id_doador INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(20)
);


CREATE TABLE campanha (
    id_campanha INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE doacao (
    id_doacao INT PRIMARY KEY,
    id_doador INT NOT NULL,
    id_campanha INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_doacao DATE NOT NULL,
    
    FOREIGN KEY (id_doador) REFERENCES doador(id_doador),
    FOREIGN KEY (id_campanha) REFERENCES campanha(id_campanha)
);
