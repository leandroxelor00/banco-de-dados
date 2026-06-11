create database waygo;

CHARACTER set utf8mb4

collate utf8mb4_unicode_ci;
 
create table fornecedores(
	id INTEGER PRIMARY KEY auto_increment,
	nome varchar(100) not null,
	cnpj char(18) not null,
	tipo_servico varchar(15) not null
);
 
create table empresa(
	id INTEGER PRIMARY KEY auto_increment, 
	nome varchar(100) not null,
	cnpj char(18) not null
);
 
create table localidades(
	id INTEGER PRIMARY KEY auto_increment,
	origem char(2) not null,
	destino char(2) not null
);
 
CREATE TABLE passageiros(
	ID int PRIMARY key auto_increment,
	nome varchar(100),
	email varchar(100),
	cpf char(11),
	sexo enum ("M","F"),
	id_empresa int, 
	FOREIGN key (id_empresa) REFERENCES empresa(id) on delete Cascade
);
 
CREATE TABLE tarifa(
	id int PRIMARY key auto_increment, 
	dataIda datetime,
	dataVolta datetime,
	preco double,
	idLocalidade int,
	FOREIGN key (idLocalidade) REFERENCES localidades(ID) on delete Cascade

);
 
CREATE TABLE solicitacao(
	ID int PRIMARY key auto_increment,
	idPassageiro int,
	idFornecedor int,
	dataSolicitacao datetime DEFAULT now(),
	idTarifa int,
	FOREIGN key (idPassageiro) REFERENCES passageiros(ID) on delete cascade,
	FOREIGN key (idTarifa) REFERENCES tarifa(ID) on delete cascade,
	FOREIGN key (idFornecedor) REFERENCES fornecedores(ID) on delete Cascade
);
 
 alter table passageiros MODIFY cpf varbinary (256);
 
 DELIMITER //

CREATE PROCEDURE BuscarFornecedor(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM fornecedores
    WHERE id = p_id;
END//

DELIMITER ;

CALL BuscarFornecedor(1);


DELIMITER //

CREATE PROCEDURE BuscarEmpresa(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM empresa
    WHERE id = p_id;
END//

DELIMITER ;


DELIMITER //

CREATE PROCEDURE BuscarPassageiro(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM passageiros
    WHERE id = p_id;
END//

DELIMITER ;


DELIMITER //

CREATE PROCEDURE BuscarLocalidade(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM localidades
    WHERE id = p_id;
END//

DELIMITER ;



DELIMITER //

CREATE PROCEDURE BuscarTarifa(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM tarifa
    WHERE id = p_id;
END//

DELIMITER ;


DELIMITER //

CREATE PROCEDURE BuscarSolicitacao(
    IN p_id INT
)
BEGIN
    SELECT *
    FROM solicitacao
    WHERE id = p_id;
END//

DELIMITER ;
 
 
 