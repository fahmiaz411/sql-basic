CREATE USER 'fahmi'@'localhost'; -- server user only
CREATE USER 'faz'@'%'; -- accept user from all ipaddress

DROP USER 'fahmi'@'localhost';
DROP USER 'faz'@'%';

-- add grant access

GRANT SELECT ON go_sample.* TO 'fahmi'@'localhost'; -- SELECT only to db go_sample and all tables
GRANT SELECT, INSERT, UPDATE, DELETE ON go_sample.* TO 'faz'@'%'; -- DML only

-- show grants

SHOW GRANTS FOR 'fahmi'@'localhost';
SHOW GRANTS FOR 'faz'@'%';

-- remove grant access

REVOKE SELECT ON go_sample.* FROM 'fahmi'@'localhost';
REVOKE SELECT, INSERT, UPDATE ON go_sample.* FROM 'faz'@'%';

-- set password

SET PASSWORD FOR 'fahmi'@'localhost' = '1234';
SET PASSWORD FOR 'faz'@'%' = '1234';