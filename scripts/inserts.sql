--Trabalho banco de dados

INSERT INTO fornecedores (nome, cnpj, tipo_servico) 
VALUES
('SkyLink Viagens Aéreas Ltda', '31.456.789/0001-21', 'aéreo'),
('AeroConnect Transportes Ltda', '42.567.890/0001-22', 'aéreo'),
('BlueWing Turismo Aéreo Ltda', '53.678.901/0001-23', 'aéreo'),
('Horizonte Airlines Serviços Ltda', '64.789.012/0001-24', 'aéreo'),
('JetWay Soluções Aéreas Ltda', '75.890.123/0001-25', 'aéreo'),
('CloudFly Operadora Ltda', '86.901.234/0001-26', 'aéreo'),
('AirBridge Viagens Corporativas Ltda', '97.012.345/0001-27', 'aéreo'),
('Estrada Forte Transportes Ltda', '18.123.456/0001-28', 'rodoviário'),
('Rota Brasil Turismo Rodoviário Ltda', '29.234.567/0001-29', 'rodoviário'),
('Via Express Passageiros Ltda', '30.345.678/0001-30', 'rodoviário'),
('Caminho Certo Transportes Ltda', '41.456.789/0001-31', 'rodoviário'),
('Rodomax Viagens Ltda', '52.567.890/0001-32', 'rodoviário'),
('Integra Bus Turismo Ltda', '63.678.901/0001-33', 'rodoviário'),
('Nova Rota Mobilidade Ltda', '74.789.012/0001-34', 'rodoviário'),
('DriveGo Locadora Ltda', '85.890.123/0001-35', 'carro'),
('PrimeRent Veículos Ltda', '96.901.234/0001-36', 'carro'),
('AutoTrip Mobilidade Ltda', '17.012.345/0001-37', 'carro'),
('CityCar Rentals Ltda', '28.123.456/0001-38', 'carro'),
('RoadFlex Locações Ltda', '39.234.567/0001-39', 'carro'),
('MoveCar Serviços Automotivos Ltda', '40.345.678/0001-40', 'carro'),
('TravelCar Solutions Ltda', '51.456.789/0001-41', 'carro'),
('EasyDrive Locadora Ltda', '62.567.890/0001-42', 'carro'),
('UrbanRide Veículos Ltda', '73.678.901/0001-43', 'carro');

select * from fornecedores


INSERT INTO empresa (nome, cnpj) 
VALUES
('Alpha Solutions Ltda', '12.345.678/0001-01'),
('Nova Horizonte Tecnologia Ltda', '23.456.789/0001-02'),
('Vértice Consultoria Empresarial Ltda', '34.567.890/0001-03'),
('Solaris Comércio e Serviços Ltda', '45.678.901/0001-04'),
('Pioneer Logistics Ltda', '56.789.012/0001-05'),
('Infinity Gestão Corporativa Ltda', '67.890.123/0001-06'),
('Prime Engenharia Ltda', '78.901.234/0001-07'),
('Atlas Transportes Ltda', '89.012.345/0001-08'),
('Vision Marketing Digital Ltda', '90.123.456/0001-09'),
('Eclipse Sistemas Ltda', '11.234.567/0001-10'),
('Global Trade Solutions Ltda', '22.345.678/0001-11'),
('Omega Desenvolvimento Ltda', '33.456.789/0001-12'),
('Titan Indústria Ltda', '44.567.890/0001-13'),
('Aurora Inovações Ltda', '55.678.901/0001-14'),
('Matrix Serviços Corporativos Ltda', '66.789.012/0001-15'),
('Nexus Tecnologia da Informação Ltda', '77.890.123/0001-16'),
('Phoenix Consultoria Financeira Ltda', '88.901.234/0001-17'),
('Crystal Distribuidora Ltda', '99.012.345/0001-18'),
('Vertex Construções Ltda', '10.123.456/0001-19'),
('Fusion Comércio Internacional Ltda', '21.234.567/0001-20');

select * from empresa


INSERT INTO localidades (origem, destino) 
VALUES
('SP', 'RJ'),
('RJ', 'SP'),
('SP', 'MG'),
('MG', 'SP'),
('SP', 'DF'),
('DF', 'SP'),
('RJ', 'DF'),
('DF', 'RJ'),
('SP', 'PR'),
('PR', 'SP'),
('SP', 'SC'),
('SC', 'SP'),
('RJ', 'BA'),
('BA', 'RJ'),
('SP', 'BA'),
('BA', 'SP'),
('MG', 'RJ'),
('RJ', 'MG'),
('DF', 'BA'),
('BA', 'DF'),
('SP', 'RS'),
('RS', 'SP'),
('SC', 'PR'),
('PR', 'SC'),
('PE', 'SP'),
('SP', 'PE'),
('CE', 'SP'),
('SP', 'CE'),
('GO', 'SP'),
('SP', 'GO');

select * from localidades


INSERT INTO passageiros (nome, email, cpf, sexo, id_empresa) 
VALUES
('Lucas Almeida', 'lucas.almeida@alphasolutions.com',aes_encrypt('12345678901','123'), 'M', 1),
('Mariana Costa', 'mariana.costa@alphasolutions.com', AES_ENCRYPT('12345678902', '123'), 'F', 1),
('Pedro Santos', 'pedro.santos@alphasolutions.com', AES_ENCRYPT('12345678903', '123'), 'M', 1),
('Ana Oliveira', 'ana.oliveira@novahorizonte.com', AES_ENCRYPT('12345678904', '123'), 'F', 2),
('Gabriel Ferreira', 'gabriel.ferreira@novahorizonte.com', AES_ENCRYPT('12345678905', '123'), 'M', 2),
('Juliana Lima', 'juliana.lima@novahorizonte.com', AES_ENCRYPT('12345678906', '123'), 'F', 2),
('Rafael Martins', 'rafael.martins@vertice.com', AES_ENCRYPT('12345678907', '123'), 'M', 3),
('Carla Souza', 'carla.souza@vertice.com', AES_ENCRYPT('12345678908', '123'), 'F', 3),
('Thiago Rocha', 'thiago.rocha@vertice.com', AES_ENCRYPT('12345678909', '123'), 'M', 3),
('Fernanda Ribeiro', 'fernanda.ribeiro@solaris.com', AES_ENCRYPT('12345678910', '123'), 'F', 4),
('Bruno Gomes', 'bruno.gomes@solaris.com', AES_ENCRYPT('12345678911', '123'), 'M', 4),
('Patricia Mendes', 'patricia.mendes@solaris.com', AES_ENCRYPT('12345678912', '123'), 'F', 4),
('Eduardo Carvalho', 'eduardo.carvalho@pioneer.com', AES_ENCRYPT('12345678913', '123'), 'M', 5),
('Camila Barbosa', 'camila.barbosa@pioneer.com', AES_ENCRYPT('12345678914', '123'), 'F', 5),
('Felipe Nunes', 'felipe.nunes@pioneer.com', AES_ENCRYPT('12345678915', '123'), 'M', 5),
('Beatriz Alves', 'beatriz.alves@infinity.com', AES_ENCRYPT('12345678916', '123'), 'F', 6),
('Rodrigo Melo', 'rodrigo.melo@infinity.com', AES_ENCRYPT('12345678917', '123'), 'M', 6),
('Larissa Pinto', 'larissa.pinto@infinity.com', AES_ENCRYPT('12345678918', '123'), 'F', 6),
('Gustavo Teixeira', 'gustavo.teixeira@prime.com', AES_ENCRYPT('12345678919', '123'), 'M', 7),
('Aline Correia', 'aline.correia@prime.com', AES_ENCRYPT('12345678920', '123'), 'F', 7),
('Leonardo Dias', 'leonardo.dias@prime.com', AES_ENCRYPT('12345678921', '123'), 'M', 7),
('Vanessa Freitas', 'vanessa.freitas@atlas.com', AES_ENCRYPT('12345678922', '123'), 'F', 8),
('Diego Moreira', 'diego.moreira@atlas.com', AES_ENCRYPT('12345678923', '123'), 'M', 8),
('Tatiane Lopes', 'tatiane.lopes@atlas.com', AES_ENCRYPT('12345678924', '123'), 'F', 8),
('Ricardo Araujo', 'ricardo.araujo@vision.com', AES_ENCRYPT('12345678925', '123'), 'M', 9),
('Paula Castro', 'paula.castro@vision.com', AES_ENCRYPT('12345678926', '123'), 'F', 9),
('Henrique Vieira', 'henrique.vieira@vision.com', AES_ENCRYPT('12345678927', '123'), 'M', 9),
('Monica Fernandes', 'monica.fernandes@eclipse.com', AES_ENCRYPT('12345678928', '123'), 'F', 10),
('Anderson Silva', 'anderson.silva@eclipse.com', AES_ENCRYPT('12345678929', '123'), 'M', 10),
('Priscila Ramos', 'priscila.ramos@eclipse.com', AES_ENCRYPT('12345678930', '123'), 'F', 10),
('Daniel Cardoso', 'daniel.cardoso@globaltrade.com', AES_ENCRYPT('12345678931', '123'), 'M', 11),
('Renata Moura', 'renata.moura@globaltrade.com', AES_ENCRYPT('12345678932', '123'), 'F', 11),
('Vinicius Farias', 'vinicius.farias@globaltrade.com', AES_ENCRYPT('12345678933', '123'), 'M', 11),
('Bianca Tavares', 'bianca.tavares@omega.com', AES_ENCRYPT('12345678934', '123'), 'F', 12),
('Marcelo Pires', 'marcelo.pires@omega.com', AES_ENCRYPT('12345678935', '123'), 'M', 12),
('Sabrina Cunha', 'sabrina.cunha@omega.com', AES_ENCRYPT('12345678936', '123'), 'F', 12),
('Caio Rezende', 'caio.rezende@titan.com', AES_ENCRYPT('12345678937', '123'), 'M', 13),
('Flavia Duarte', 'flavia.duarte@titan.com', AES_ENCRYPT('12345678938', '123'), 'F', 13),
('Igor Batista', 'igor.batista@titan.com', AES_ENCRYPT('12345678939', '123'), 'M', 13),
('Natália Moraes', 'natalia.moraes@aurora.com', AES_ENCRYPT('12345678940', '123'), 'F', 14),
('Alexandre Reis', 'alexandre.reis@aurora.com', AES_ENCRYPT('12345678941', '123'), 'M', 14),
('Bruna Monteiro', 'bruna.monteiro@aurora.com', AES_ENCRYPT('12345678942', '123'), 'F', 14),
('Fernando Peixoto', 'fernando.peixoto@matrix.com', AES_ENCRYPT('12345678943', '123'), 'M', 15),
('Isabela Campos', 'isabela.campos@matrix.com', AES_ENCRYPT('12345678944', '123'), 'F', 15),
('Mateus Borges', 'mateus.borges@matrix.com', AES_ENCRYPT('12345678945', '123'), 'M', 15),
('Leticia Amaral', 'leticia.amaral@nexus.com', AES_ENCRYPT('12345678946', '123'), 'F', 16),
('Joao Vitor Costa', 'joaovitor.costa@nexus.com', AES_ENCRYPT('12345678947', '123'), 'M', 16),
('Amanda Guedes', 'amanda.guedes@nexus.com', AES_ENCRYPT('12345678948', '123'), 'F', 16),
('Roberto Sales', 'roberto.sales@phoenix.com', AES_ENCRYPT('12345678949', '123'), 'M', 17),
('Kelly Azevedo', 'kelly.azevedo@phoenix.com', AES_ENCRYPT('12345678950', '123'), 'F', 17),
('Vitor Hugo Rocha', 'vitor.rocha@phoenix.com', AES_ENCRYPT('12345678951', '123'), 'M', 17),
('Elaine Matos', 'elaine.matos@crystal.com', AES_ENCRYPT('12345678952', '123'), 'F', 18),
('Carlos Eduardo Lima', 'carlos.lima@crystal.com', AES_ENCRYPT('12345678953', '123'), 'M', 18),
('Jessica Prado', 'jessica.prado@crystal.com', AES_ENCRYPT('12345678954', '123'), 'F', 18),
('Samuel Brito', 'samuel.brito@vertex.com', AES_ENCRYPT('12345678955', '123'), 'M', 19),
('Gabriela Neves', 'gabriela.neves@vertex.com', AES_ENCRYPT('12345678956', '123'), 'F', 19),
('Otavio Mendes', 'otavio.mendes@vertex.com', AES_ENCRYPT('12345678957', '123'), 'M', 19),
('Yasmin Carvalho', 'yasmin.carvalho@fusion.com', AES_ENCRYPT('12345678958', '123'), 'F', 20),
('Luiz Felipe Souza', 'luiz.souza@fusion.com', AES_ENCRYPT('12345678959', '123'), 'M', 20),
('Clara Rodrigues', 'clara.rodrigues@fusion.com', AES_ENCRYPT('12345678960', '123'), 'F', 20);


select * from passageiros


INSERT INTO tarifa (dataida, datavolta, preco, idLocalidade) 
VALUES
('2025-01-15', '2025-01-20', 420.00, 1),   
('2025-02-10', '2025-02-15', 450.00, 2),   
('2025-01-22', '2025-01-27', 390.00, 3),   
('2025-03-05', '2025-03-10', 410.00, 4),   
('2025-02-18', '2025-02-23', 580.00, 5),   
('2025-04-01', '2025-04-06', 610.00, 6),   
('2025-01-12', '2025-01-17', 560.00, 7),   
('2025-03-20', '2025-03-25', 590.00, 8),   
('2025-02-08', '2025-02-13', 470.00, 9),   
('2025-04-14', '2025-04-19', 500.00, 10),  
('2025-01-30', '2025-02-04', 520.00, 11),  
('2025-03-08', '2025-03-13', 540.00, 12),  
('2025-02-25', '2025-03-02', 780.00, 13),  
('2025-04-10', '2025-04-15', 810.00, 15),  
('2025-05-05', '2025-05-10', 980.00, 28); 

select * from tarifa

INSERT INTO solicitacao (idPassageiro, idFornecedor, idTarifa, dataSolicitacao) VALUES
(1, 1, 1, '2024-12-20'),
(5, 2, 2, '2025-01-15'),
(9, 3, 3, '2025-01-05'),
(12, 4, 4, '2025-02-10'),
(18, 5, 5, '2025-01-25'),
(24, 6, 6, '2025-03-10'),
(31, 7, 7, '2024-12-28'),
(37, 1, 8, '2025-02-15'),
(45, 2, 9, '2025-01-20'),
(58, 3, 10, '2025-03-25');

select * from solicitacao

alter TABLE solicitacao add column status BOOLEAN;

start TRANSACTION;

update solicitacao set status=True where id=1;

commit;

ROLLBACK;

start TRANSACTION;

update solicitacao set status=FALSE where id=2;

commit;

ROLLBACK;