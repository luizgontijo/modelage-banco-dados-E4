-- 1. Atualizar telefone do doador
UPDATE doador
SET telefone = '11955557777'
WHERE id_doador = 1;

-- 2. Atualizar valor de uma doação
UPDATE doacao
SET valor = 90.00
WHERE id_doacao = 3;

-- 3. Alterar data final da campanha Cesta Solidária
UPDATE campanha
SET data_fim = '2025-08-30'
WHERE id_campanha = 2;
