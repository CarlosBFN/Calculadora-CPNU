WITH
base_notas AS(
    SELECT DISTINCT
        n.candidato
        ,i.cargo
        ,n.prova
        ,n.nota

    FROM notas n
        LEFT JOIN inscricoes i
            ON n.candidato = i.candidato
),

calcula_pesos AS(
    SELECT
        n.candidato
        ,n.cargo
        ,t.titulacao
        ,CASE
            WHEN t.titulacao = "0%" THEN "0"
            WHEN t.titulacao = "5%" THEN "0,05"
            WHEN t.titulacao = "10%" THEN "0,1"
        END ||
            "-" || SUBSTR(UPPER(n.prova), 0, 3) AS referencia
        ,n.prova
        ,n.nota
        ,CASE
            WHEN n.prova = "p1" THEN (100 * n.nota /20)
            WHEN n.prova = "p2.1" THEN (n.nota * p.eixo1)
            WHEN n.prova = "p2.2" THEN (n.nota * p.eixo2)
            WHEN n.prova = "p2.3" THEN (n.nota * p.eixo3)
            WHEN n.prova = "p2.4" THEN (n.nota * p.eixo4)
            WHEN n.prova = "p2.5" THEN (n.nota * p.eixo5)
            WHEN n.prova = "p3" THEN (n.nota)
            WHEN n.prova = "p4" THEN (n.nota * 10)
            ELSE NULL
        END nota_eixo

    FROM base_notas n
        LEFT JOIN pesos_eixos p
            ON n.cargo = p.codigo

        LEFT JOIN cargo_x_titulacao t
            ON n.cargo = t.codigo
),

calcula_ponderada AS(
    SELECT DISTINCT
        p.candidato
        ,p.cargo
        ,p.titulacao
        ,p.referencia
        ,CASE
            WHEN SUBSTR(p.prova, 0, 3) = "p2" THEN "p2"
            ELSE p.prova
        END prova
        ,CASE
            WHEN SUBSTR(p.prova, 0, 3) = "p2" THEN SUM(p.nota_ponderada) 
            ELSE p.nota_ponderada
        END nota

    FROM(    
        SELECT
            p.*
            ,cp.peso
            ,p.nota_eixo * CAST(REPLACE(cp.peso,",",".") AS FLOAT)    AS nota_ponderada

        FROM calcula_pesos p
            LEFT JOIN contagem_pontos cp
                ON p.referencia = cp.referencia
    ) p

    GROUP BY 1,2,3,4,5
),

verifica_corte AS(
    SELECT 
        p.*
        ,CASE
            WHEN p.nota > cp.nota_corte_ponderada THEN "Acima do corte!"
            ELSE "Abaixo do corte!"
        END corte
        ,SUM(p.nota) OVER(PARTITION BY p.cargo) AS nota_total

    FROM calcula_ponderada p
        LEFT JOIN contagem_pontos cp
            ON p.referencia = cp.referencia
)

SELECT * 

FROM verifica_corte 

WHERE 1=1
    AND candidato = "Carlos"
    AND cargo = "B2-03-A"
