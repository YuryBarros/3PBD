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
