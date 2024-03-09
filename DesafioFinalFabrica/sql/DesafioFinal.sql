create database base5;
use base5;


CREATE TABLE banco(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo)
);


CREATE TABLE agencia(
cod_banco int not null auto_increment,
numero_agencia int not null,
endereco varchar(50) not null,
primary key(numero_agencia),
foreign key(cod_banco) REFERENCES banco(codigo));


CREATE TABLE conta(
numero_conta int not null ,
saldo DECIMAL(9,2),
tipo_conta int not null,
num_agencia int not null,
primary key (numero_conta),
foreign key(num_agencia) references agencia(numero_agencia));






INSERT INTO banco (nome)
VALUES ('Banco do Brasil - Agência Centro'), 
       ('CEF - Agência Principal'),
       ('Bradesco');

INSERT INTO agencia (numero_agencia, endereco, cod_banco)
VALUES (322, 'Av. Walfredo Macedo Brandao, 1139', 2),
       (1253, 'R. Bancário Sérgio Guerra, 17', 1),
       (455, 'R. Emanuel Orlando de Figueiredo Lima,434',1);

INSERT INTO conta (numero_conta, saldo, tipo_conta, num_agencia)
VALUES (117652, 2.245, 2, 322),
       (210107, 310.96, 1, 1253),
       (440203, 400.82,2,455);



SELECT * FROM banco;
SELECT * FROM agencia;
SELECT * FROM conta;



