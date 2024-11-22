USE livros;


CREATE TABLE engenheiros (
eng_codigo			INT PRIMARY KEY,
eng_nome			VARCHAR(20),
eng_apelido			VARCHAR(10),
eng_telefone		VARCHAR(15),
eng_crea			VARCHAR(10),
eng_datacrea		DATE
);

CREATE TABLE obras (
obr_codigo			INT PRIMARY KEY,
obr_cidade			VARCHAR(20),
obr_tipoobra		VARCHAR(20),
obr_valor			DECIMAL(12,2),
obr_dtinicio		DATE,
eng_codigo			INT,
FOREIGN KEY (eng_codigo) REFERENCES engenheiros (eng_codigo)
);

SHOW TABLES;
SELECT * FROM obras;
SELECT * FROM engenheiros;



##################################################################################################

INSERT INTO engenheiros (eng_codigo, eng_nome, eng_apelido, eng_telefone, eng_crea, eng_datacrea)
VALUES
(1, 'Carlos Silva', 'Silva', '991234567', 'CREA1234', '2010-05-10'),
(2, 'Ana Oliveira', 'Oliveira', '998765432', 'CREA5678', '2012-07-15'),
(3, 'Roberto Souza', 'Souza', '997654321', 'CREA1111', '2014-03-20'),
(4, 'Fernanda Costa', 'Costa', '996543210', 'CREA9876', '2015-01-30'),
(5, 'Ricardo Martins', 'Martins', '995432109', 'CREA2222', '2016-04-25'),
(6, 'Patrícia Lima', 'Lima', '994321098', 'CREA3333', '2017-06-05'),
(7, 'João Pereira', 'Pereira', '993210987', 'CREA4444', '2018-09-12'),
(8, 'Larissa Alves', 'Alves', '992109876', 'CREA5555', '2019-10-22'),
(9, 'Fábio Santos', 'Santos', '991098765', 'CREA6666', '2020-01-18'),
(10, 'Mariana Rocha', 'Rocha', '990987654', 'CREA7777', '2021-02-25'),
(11, 'Eduardo Silva', 'Silva', '989876543', 'CREA8888', '2022-03-15'),
(12, 'Juliana Ferreira', 'Ferreira', '988765432', 'CREA9999', '2023-04-30');

INSERT INTO obras (obr_codigo, obr_cidade, obr_tipoobra, obr_valor, obr_dtinicio, eng_codigo)
VALUES
(1, 'São Paulo', 'Residencial', 1000000.00, '2023-01-10', 1),
(2, 'Rio de Janeiro', 'Comercial', 1500000.00, '2023-03-15', 2),
(3, 'Belo Horizonte', 'Industrial', 2000000.00, '2023-05-20', 3),
(4, 'Porto Alegre', 'Residencial', 900000.00, '2023-06-05', 4),
(5, 'Salvador', 'Comercial', 1800000.00, '2023-07-25', 5),
(6, 'Fortaleza', 'Residencial', 750000.00, '2023-08-30', 6),
(7, 'Curitiba', 'Industrial', 1200000.00, '2023-09-12', 7),
(8, 'Recife', 'Comercial', 1300000.00, '2023-10-01', 8),
(9, 'Manaus', 'Residencial', 1100000.00, '2023-11-10', 9),
(10, 'Goiânia', 'Comercial', 1600000.00, '2023-12-01', 10),
(11, 'Brasília', 'Industrial', 2200000.00, '2024-01-15', 11),
(12, 'Natal', 'Residencial', 950000.00, '2024-02-20', 12);




