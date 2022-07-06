USE university;

CREATE TABLE dipartimento(
id INT NOT NULL AUTO_INCREMENT,
materia VARCHAR(255) NOT NULL,
rettore VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE corso_di_laurea (
id INT NOT NULL AUTO_INCREMENT,
nominativo VARCHAR(255) NOT NULL,
esami TINYINT,
dipartimento_id INT,
PRIMARY KEY(id),
FOREIGN KEY (dipartimento_id) REFERENCES dipartimento (id)
);

CREATE TABLE corso (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
crediti INT,
PRIMARY KEY(id)
);

CREATE TABLE corso_di_laurea_corso (
corso_di_laurea_id INT,
corso_id INT,
FOREIGN KEY (corso_di_laurea_id) REFERENCES corso_di_laurea(id),
FOREIGN KEY (corso_id) REFERENCES corso(id),
PRIMARY KEY (corso_di_laurea_id,corso_id)
);