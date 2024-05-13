DELIMITER $$
CREATE FUNCTION calculate_age (initDate DATETIME)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE years_diff INT;
  DECLARE age INT;
  SET years_diff = YEAR(CURDATE()) - YEAR(initDate);
  SET age = years_diff - 
           (CASE WHEN 
                (MONTH(CURDATE()) < MONTH(initDate) OR 
                (MONTH(CURDATE()) = MONTH(initDate) AND DAY(CURDATE()) < DAY(initDate)))
            THEN 1 
            ELSE 0 
            END);

  RETURN age;
END$$
DELIMITER ;