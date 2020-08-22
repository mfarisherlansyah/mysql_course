DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW -- trigger time, event, and table
     BEGIN
          IF NEW.age < 18 -- a placeholder referring to the data that is attempting to be inserted
          THEN
              SIGNAL SQLSTATE '45000' -- a generic state representing "unhandled user-defined exception"
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;