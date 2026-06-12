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
    FROM solicitacoes
    WHERE id = p_id;
END//

DELIMITER ;
