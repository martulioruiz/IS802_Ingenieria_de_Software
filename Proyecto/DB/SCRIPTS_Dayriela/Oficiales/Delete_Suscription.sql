USE Ecommerce;
DROP PROCEDURE IF EXISTS DeleteSuscription;
DELIMITER //

CREATE PROCEDURE DeleteSuscription(IN IdUser_parameter INT, IN IdCategory_parameter INT)
BEGIN
 DELETE FROM SUSCRIPTION WHERE SUSCRIPTION.Id_User_FK = IdUser_parameter AND SUSCRIPTION.Id_Category_FK= IdCategory_parameter;

END //

DELIMITER ;
