CREATE TABLE Quarto (
  quarto_id INT AUTO_INCREMENT PRIMARY KEY,
  numero INT NOT NULL,
  localizacao VARCHAR(100),
  banheiro_privativo BOOLEAN DEFAULT FALSE,
  capacidade INT NOT NULL
);

CREATE TABLE Vaga (
  vaga_id INT AUTO_INCREMENT PRIMARY KEY,
  quarto_id INT NOT NULL,
  tipo VARCHAR(20) NOT NULL,
  posicao VARCHAR(20),
  exposicao_sol VARCHAR(20),
  FOREIGN KEY (quarto_id) REFERENCES Quarto(quarto_id)
);

CREATE TABLE Hospede (
  hospede_id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  documento VARCHAR(20) UNIQUE,
  email VARCHAR(100),
  telefone VARCHAR(20)
);

CREATE TABLE Reserva (
  reserva_id INT AUTO_INCREMENT PRIMARY KEY,
  hospede_id INT NOT NULL,
  data_checkin DATE NOT NULL,
  data_checkout DATE NOT NULL,
  status VARCHAR(20) DEFAULT 'confirmada',
  tipo_reserva VARCHAR(20) NOT NULL,
  FOREIGN KEY (hospede_id) REFERENCES Hospede(hospede_id)
);

CREATE TABLE ReservaVaga (
  reserva_id INT NOT NULL,
  vaga_id INT NOT NULL,
  PRIMARY KEY (reserva_id, vaga_id),
  FOREIGN KEY (reserva_id) REFERENCES Reserva(reserva_id),
  FOREIGN KEY (vaga_id) REFERENCES Vaga(vaga_id)
);

CREATE TABLE Pagamento (
  pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
  reserva_id INT NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  data_pagamento DATE NOT NULL,
  metodo_pagamento VARCHAR(30),
  cartao_id VARCHAR(30),
  status_pagamento VARCHAR(20),
  FOREIGN KEY (reserva_id) REFERENCES Reserva(reserva_id)
);