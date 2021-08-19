USE Ecommerce;
DROP PROCEDURE IF EXISTS VerifyState_User;

DELIMITER //
CREATE PROCEDURE VerifyState_User(IN Id_User INT)
BEGIN
  SELECT USER.Firts_Name , USER.Email , USER.Id_State , STATE_USER.Name FROM USER 
  INNER JOIN STATE_USER ON STATE_USER.Id_State_User= USER.Id_State
  WHERE USER.Id = Id_User;
END //

DELIMITER ;

