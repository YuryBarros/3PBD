-- Define a data de consulta (substitua pela data desejada)
SET @data_consulta = '2025-01-01';

-- Vagas Reservadas (Ocupadas) na data especificada
SELECT 
    V.vaga_id,
    V.quarto_id,
    V.tipo,
    V.posicao,
    V.exposicao_sol,
    R.reserva_id,
    H.nome AS hospede_nome
FROM Vaga V
INNER JOIN ReservaVaga RV ON V.vaga_id = RV.vaga_id
INNER JOIN Reserva R ON RV.reserva_id = R.reserva_id
INNER JOIN Hospede H ON R.hospede_id = H.hospede_id
WHERE 
    R.status = 'confirmada'
    AND @data_consulta >= R.data_checkin 
    AND @data_consulta < R.data_checkout;

-- Vagas Disponíveis na data especificada
SELECT 
    V.*,
    Q.numero AS numero_quarto,
    Q.localizacao,
    Q.banheiro_privativo,
    Q.capacidade
FROM Vaga V
INNER JOIN Quarto Q ON V.quarto_id = Q.quarto_id
WHERE V.vaga_id NOT IN (
    SELECT RV.vaga_id
    FROM ReservaVaga RV
    INNER JOIN Reserva R ON RV.reserva_id = R.reserva_id
    WHERE 
        R.status = 'confirmada'
        AND @data_consulta >= R.data_checkin 
        AND @data_consulta < R.data_checkout
);