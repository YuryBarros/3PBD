-- ATUALIZAÇÕES POR TABELA --

-- Quarto
UPDATE Quarto SET capacidade = 6 WHERE quarto_id = 1;

-- Vaga
UPDATE Vaga SET posicao = 'inferior' WHERE vaga_id = 1;

-- Hospede
UPDATE Hospede SET telefone = '11988887777' WHERE hospede_id = 1;

-- Reserva
UPDATE Reserva SET status = 'cancelada' WHERE reserva_id = 1;

-- Pagamento
UPDATE Pagamento SET status_pagamento = 'pendente' WHERE pagamento_id = 1;

-- 04_delete_examples.sql
-- EXCLUSÕES POR TABELA --

-- Pagamento
DELETE FROM Pagamento WHERE pagamento_id = 1;

-- ReservaVaga
DELETE FROM ReservaVaga WHERE reserva_id = 1 AND vaga_id = 1;

-- Reserva
DELETE FROM Reserva WHERE reserva_id = 1;

-- Hospede
DELETE FROM Hospede WHERE hospede_id = 1;

-- Vaga
DELETE FROM Vaga WHERE vaga_id = 1;

-- Quarto
DELETE FROM Quarto WHERE quarto_id = 1;
