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
 