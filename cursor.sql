DELIMITER $$
CREATE PROCEDURE `birth_date`()
BEGIN
DECLARE done INT DEFAULT FALSE;

    DECLARE id INT(11);

    DECLARE fn varchar(14);

    DECLARE ln varchar(16);

    DECLARE bdate date;

  DECLARE mycursor CURSOR FOR

  SELECT EmployeeId, FirstName, LastName, BirthDate

    FROM employees

    WHERE MONTH(BirthDate)=MONTH(CURRENT_DATE)

      AND DAY(BirthDate)=DAY(CURRENT_DATE);

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN mycursor;

  fetch_loop: LOOP

    FETCH mycursor INTO id, fn, ln, bdate;

  IF done THEN

      LEAVE fetch_loop;

    END IF;

    SELECT id, fn, ln, bdate;

  END LOOP;

  CLOSE mycursor;

END