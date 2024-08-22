-- Cria as tabelas que relacionam os candidatos, suas notas e cargos a que se candidataram

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

-- Preenche as tabelas que relacionam os candidatos, suas notas e cargos a que se candidataram

INSERT INTO 'notas' ('candidato','prova','nota') VALUES
    ('candidato1','p1',15),
    ('candidato1','p2.1',5),
    ('candidato1','p2.2',8),
    ('candidato1','p2.3',6),
    ('candidato1','p2.4',5),
    ('candidato1','p2.5',4),
    ('candidato2','p1',10),
    ('candidato2','p2.1',4),
    ('candidato2','p2.2',8),
    ('candidato2','p2.3',3),
    ('candidato2','p2.4',7),
    ('candidato2','p2.5',6)
;

INSERT INTO 'inscricoes' ('candidato','cargo') VALUES
    ('candidato2','B7-05-A'),
    ('candidato2','B7-09-E'),
    ('candidato2','B7-07-E'),
    ('candidato2','B7-01-B'),
    ('candidato2','B7-14-A'),
    ('candidato2','B7-04-C'),
    ('candidato2','B7-04-D'),
    ('candidato2','B7-09-A'),
    ('candidato2','B7-12-A'),
    ('candidato2','B7-13-A'),
    ('candidato2','B7-10-A'),
    ('candidato2','B7-08-A'),
    ('candidato2','B7-03-D'),
    ('candidato2','B7-03-I'),
    ('candidato2','B7-06-A'),
    ('candidato1','B2-08-A'),
    ('candidato1','B2-08-C'),
    ('candidato1','B2-08-B'),
    ('candidato1','B2-07-A'),
    ('candidato1','B2-05-A'),
    ('candidato1','B2-10-A'),
    ('candidato1','B2-03-A'),
    ('candidato1','B2-03-B'),
    ('candidato1','B2-03-G'),
    ('candidato1','B2-03-E'),
    ('candidato1','B2-04-A')
;
