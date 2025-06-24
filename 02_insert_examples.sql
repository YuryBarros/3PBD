-- INSERÇÕES POR TABELA --

-- Quarto
INSERT INTO Quarto (numero, localizacao, banheiro_privativo, capacidade)
VALUES (101, 'Andar 1 - Ala A', TRUE, 4);

-- Vaga
INSERT INTO Vaga (quarto_id, tipo, posicao, exposicao_sol)
VALUES (1, 'beliche', 'superior', 'manhã');

-- Hospede
INSERT INTO Hospede (nome, documento, email, telefone)
VALUES ('João da Silva', '12345678900', 'joao@email.com', '11999999999');

-- Reserva
INSERT INTO Reserva (hospede_id, data_checkin, data_checkout, status, tipo_reserva)
VALUES (1, '2025-07-01', '2025-07-05', 'confirmada', 'vaga');

-- ReservaVaga
INSERT INTO ReservaVaga (reserva_id, vaga_id)
VALUES (1, 1);

-- Pagamento
INSERT INTO Pagamento (reserva_id, valor, data_pagamento, metodo_pagamento, cartao_id, status_pagamento)
VALUES (1, 250.00, '2025-06-28', 'cartao_credito', '**** **** **** 1234', 'pago');