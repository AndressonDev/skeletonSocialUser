INSERT INTO role(role_id) VALUES ('user'),('admin');
UPDATE role set parent_id = (SELECT id FROM (SELECT id FROM role r2 WHERE r2.role_id = 'user' LIMIT 1)as x) WHERE role_id = 'admin';