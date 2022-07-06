USE university;

SELECT *
FROM dipartimento;

INSERT INTO dipartimento (materia, rettore)
VALUES ('Economia','Pinco');
INSERT INTO dipartimento (materia, rettore)
VALUES ('Ingegneria','Pallino');
INSERT INTO dipartimento (materia, rettore)
VALUES ('Medicina','Nessuno');

SELECT *
FROM corso_di_laurea;

INSERT INTO corso_di_laurea (nominativo, esami, dipartimento_id)
VALUES ('Management', 24, 1);
INSERT INTO corso_di_laurea (nominativo, esami, dipartimento_id)
VALUES ('Finanza', 22, 1);
INSERT INTO corso_di_laurea (nominativo, esami, dipartimento_id)
VALUES ('Cardiologia', 24, 3);

SELECT *
FROM corso;

INSERT INTO corso (nome, crediti)
VALUES ('Ragioneria', 9);
INSERT INTO corso (nome, crediti)
VALUES ('Matematica Base', 9);
