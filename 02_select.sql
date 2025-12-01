-- 1. Selecionar todas as doações, ordenadas por valor (maior para menor)
SELECT * FROM doacao
ORDER BY valor DESC;

-- 2. Selecionar doações com JOIN mostrando nome do doador e nome da campanha
SELECT d.nome AS doador, c.nome AS campanha, o.valor, o.data_doacao
FROM doacao o
JOIN doador d ON o.id_doador = d.id_doador
JOIN campanha c ON o.id_campanha = c.id_campanha;

-- 3. Filtrar doações da Campanha do Agasalho
SELECT * FROM doacao
WHERE id_campanha = 1;

-- 4. Top 2 doadores com maior valor total
SELECT d.nome, SUM(o.valor) AS total_doado
FROM doador d
JOIN doacao o ON d.id_doador = o.id_doador
GROUP BY d.nome
ORDER BY total_doado DESC
LIMIT 2;

-- 5. Campanhas ativas em julho de 2025
SELECT * FROM campanha
WHERE '2025-07-10' BETWEEN data_inicio AND data_fim;
