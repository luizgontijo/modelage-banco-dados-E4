-- Inserindo DOADORES
INSERT INTO doador VALUES
(1, 'Ana Souza', 'ana@email.com', '11999990000'),
(2, 'Carlos Pereira', 'carlos@email.com', '11988112233'),
(3, 'Juliana Castro', 'juliana@email.com', '11966778899');

-- Inserindo CAMPANHAS
INSERT INTO campanha VALUES
(1, 'Campanha do Agasalho', 'Arrecadação de roupas de inverno.', '2025-05-01', '2025-06-30'),
(2, 'Cesta Solidária', 'Doação de cestas básicas para famílias.', '2025-07-01', '2025-08-15');

-- Inserindo DOAÇÕES
INSERT INTO doacao VALUES
(1, 1, 1, 50.00, '2025-05-10'),
(2, 2, 1, 120.00, '2025-05-12'),
(3, 3, 2, 80.00, '2025-07-05'),
(4, 1, 2, 30.00, '2025-07-10');
