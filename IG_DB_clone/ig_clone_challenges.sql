SELECT * FROM users ORDER BY created_at ASC LIMIT 0, 5;

SELECT DAYNAME(created_at), COUNT(*) AS total FROM users GROUP BY DAYNAME(created_at) ORDER BY COUNT(*);

SELECT username, image_url FROM users
LEFT JOIN photos
    ON photos.user_id = users.id WHERE photos.id IS NULL;
    
SELECT username, photos.id, photos.image_url, COUNT(*) AS total FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
    GROUP BY photos.id ORDER BY total DESC LIMIT 0, 1;
    
-- Average number of photos per user
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS average;

-- Top 5 most commonly used hashtags
SELECT tags.tag_name, COUNT(*) FROM photo_tags JOIN tags ON photo_tags.tag_id = tags.id GROUP BY tags.id ORDER BY COUNT(*) DESC LIMIT 5;
    
-- Find users who have liked every single photo on the site
SELECT username, COUNT(*) FROM users INNER JOIN likes
ON users.id = likes.user_id GROUP BY likes.user_id HAVING COUNT(*) = (SELECT COUNT(*) FROM photos);
