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
