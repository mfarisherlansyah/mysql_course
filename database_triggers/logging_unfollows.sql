DELIMITER $$

CREATE TRIGGER capture_unfollows
     AFTER DELETE ON follows FOR EACH ROW
     BEGIN
--         INSERT INTO unfollows(follower_id, followee_id) VALUES (OLD.follower_id, OLD.followee_id);
         INSERT INTO unfollows SET follower_id = OLD.follower_id, followee_id = OLD.followee_id;
     END;
$$

DELIMITER ;