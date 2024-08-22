-- Insere as notas e cargos em que o candidato se inscreveu na base

CREATE TABLE 'notas'(
    'candidato' TEXT
    ,'prova' TEXT
    ,'nota' INTEGER
)
;

CREATE TABLE 'inscricoes'(
    'candidato' TEXT
    ,'cargo' TEXT
)
;

INSERT INTO 'notas' ('candidato','prova','nota') VALUES
    ('Carlos','p1',15),
    ('Carlos','p2.1',5),
    ('Carlos','p2.2',8),
    ('Carlos','p2.3',6),
    ('Carlos','p2.4',5),
    ('Carlos','p2.5',4),
    ('Ohanna','p1',10),
    ('Ohanna','p2.1',4),
    ('Ohanna','p2.2',8),
    ('Ohanna','p2.3',3),
    ('Ohanna','p2.4',7),
    ('Ohanna','p2.5',6)
;

INSERT INTO 'inscricoes' ('candidato','cargo') VALUES
    ('Ohanna','B7-05-A'),
    ('Ohanna','B7-09-E'),
    ('Ohanna','B7-07-E'),
    ('Ohanna','B7-01-B'),
    ('Ohanna','B7-14-A'),
    ('Ohanna','B7-04-C'),
    ('Ohanna','B7-04-D'),
    ('Ohanna','B7-09-A'),
    ('Ohanna','B7-12-A'),
    ('Ohanna','B7-13-A'),
    ('Ohanna','B7-10-A'),
    ('Ohanna','B7-08-A'),
    ('Ohanna','B7-03-D'),
    ('Ohanna','B7-03-I'),
    ('Ohanna','B7-06-A'),
    ('Carlos','B2-08-A'),
    ('Carlos','B2-08-C'),
    ('Carlos','B2-08-B'),
    ('Carlos','B2-07-A'),
    ('Carlos','B2-05-A'),
    ('Carlos','B2-10-A'),
    ('Carlos','B2-03-A'),
    ('Carlos','B2-03-B'),
    ('Carlos','B2-03-G'),
    ('Carlos','B2-03-E'),
    ('Carlos','B2-04-A')
;
