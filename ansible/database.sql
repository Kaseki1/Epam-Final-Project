CREATE DATABASE crcs_db;
USE crcs_db;

CREATE TABLE admins (
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(256) UNIQUE NOT NULL,
    email VARCHAR(256) UNIQUE NOT NULL,
    password VARCHAR(256) NOT NULL
);

CREATE TABLE pools (
    pool_id INT PRIMARY KEY AUTO_INCREMENT,
    admin_id INT NOT NULL,
    FOREIGN KEY (admin_id) REFERENCES admins(admin_id)
);

CREATE TABLE hosts (
    host_id INT PRIMARY KEY AUTO_INCREMENT,
    pool_id INT NOT NULL,
    hostname VARCHAR(80) NOT NULL,
    host_key VARCHAR(129) NOT NULL,
    ip_addr VARCHAR(16) NOT NULL,
    FOREIGN KEY (pool_id)
        REFERENCES pools(pool_id)
        ON DELETE CASCADE
);

CREATE TABLE admin_session (
    session_id VARCHAR(129) PRIMARY KEY,
    admin_id INT NOT NULL,
    FOREIGN KEY (admin_id)
        REFERENCES admins(admin_id)
        ON DELETE CASCADE
);
