CREATE database db_teste;

use db_teste;

CREATE TABLE login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

INSERT INTO login (user, senha) VALUES ('godri', '123');