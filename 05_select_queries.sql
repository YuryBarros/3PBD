-- Selecionar TODOS os registros de cada tabela
SELECT * FROM Quarto;
SELECT * FROM Vaga;
SELECT * FROM Hospede;
SELECT * FROM Reserva;
SELECT * FROM ReservaVaga;
SELECT * FROM Pagamento;

-- Selecionar UM registro por ID/chave primária
SELECT * FROM Quarto WHERE quarto_id = 1;
SELECT * FROM Vaga WHERE vaga_id = 1;
SELECT * FROM Hospede WHERE hospede_id = 1;
SELECT * FROM Reserva WHERE reserva_id = 1;
-- ReservaVaga usa chave composta (reserva_id + vaga_id)
SELECT * FROM ReservaVaga WHERE reserva_id = 1 AND vaga_id = 1;
SELECT * FROM Pagamento WHERE pagamento_id = 1;