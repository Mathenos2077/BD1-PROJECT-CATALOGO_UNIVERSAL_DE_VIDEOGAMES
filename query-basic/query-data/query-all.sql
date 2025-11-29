------------------------------------------------------------
-- QUERY-ALL.SQL
-- Conjunto de consultas para testar o banco
------------------------------------------------------------

------------------------------------------------------------
-- 1) Seleção simples de todas as tabelas
------------------------------------------------------------
SELECT * FROM JOGO;
SELECT * FROM PLATAFORMA;
SELECT * FROM EMPRESA;
SELECT * FROM GENERO;
SELECT * FROM AVALIADOR;
SELECT * FROM CONTEUDOADICIONAL;
SELECT * FROM TITULOALTERNATIVO;
SELECT * FROM SUPORTA;
SELECT * FROM DESENVOLVE;
SELECT * FROM DISTRIBUI;
SELECT * FROM CATEGORIZA;
SELECT * FROM AVALIACAO;
SELECT * FROM AVALIA;

------------------------------------------------------------
-- 2) Seleção com condição (WHERE)
------------------------------------------------------------
SELECT * FROM PLATAFORMA
WHERE NOME = 'PlayStation 2';

SELECT * FROM EMPRESA
WHERE PAISSEDE = 'Japão';

SELECT * FROM JOGO
WHERE CLASSIFICACAOINDICATIVA = '18';

------------------------------------------------------------
-- 3) Seleção com projeção (colunas específicas)
------------------------------------------------------------
SELECT NOME, DATALANCAMENTO
FROM PLATAFORMA
WHERE NOME = 'PlayStation 5';

SELECT TITULO, DATALANCAMENTO
FROM JOGO
ORDER BY DATALANCAMENTO;

------------------------------------------------------------
-- 4) Junção entre tabelas (JOIN)
------------------------------------------------------------

-- Jogos e suas plataformas
SELECT j.TITULO, p.NOME AS PLATAFORMA
FROM SUPORTA s
JOIN JOGO j ON j.JOGOID = s.JOGOID
JOIN PLATAFORMA p ON p.PLATAFORMAID = s.PLATAFORMAID;

-- Jogos e suas empresas (desenvolvedoras)
SELECT j.TITULO, e.NOME AS EMPRESA
FROM DESENVOLVE d
JOIN JOGO j ON j.JOGOID = d.JOGOID
JOIN EMPRESA e ON e.EMPRESAID = d.EMPRESAID;

-- Jogos e seus gêneros
SELECT j.TITULO, g.NOME AS GENERO
FROM CATEGORIZA c
JOIN JOGO j ON j.JOGOID = c.JOGOID
JOIN GENERO g ON g.GENEROID = c.GENEROID;

------------------------------------------------------------
-- 5) Agregações (COUNT, AVG, SUM)
------------------------------------------------------------

-- Quantidade de jogos por empresa
SELECT e.NOME AS EMPRESA, COUNT(*) AS TOTAL_JOGOS
FROM DESENVOLVE d
JOIN EMPRESA e ON e.EMPRESAID = d.EMPRESAID
GROUP BY e.NOME
ORDER BY TOTAL_JOGOS DESC;

-- Quantidade de jogos por plataforma
SELECT p.NOME AS PLATAFORMA, COUNT(*) AS TOTAL
FROM SUPORTA s
JOIN PLATAFORMA p ON p.PLATAFORMAID = s.PLATAFORMAID
GROUP BY p.NOME
ORDER BY TOTAL DESC;

-- Média de vendas globais por plataforma
SELECT p.NOME AS PLATAFORMA,
       AVG(s.NUMVENDASGLOBAIS) AS MEDIA_VENDAS
FROM SUPORTA s
JOIN PLATAFORMA p ON p.PLATAFORMAID = s.PLATAFORMAID
GROUP BY p.NOME;

------------------------------------------------------------
-- 6) Avaliações por jogo (JOIN quadruplo)
------------------------------------------------------------
SELECT j.TITULO AS JOGO,
       p.NOME AS PLATAFORMA,
       a.NOTA,
       a.COMENTARIO,
       av.NOME AS AVALIADOR
FROM AVALIA x
JOIN JOGO j ON j.JOGOID = x.JOGOID
JOIN PLATAFORMA p ON p.PLATAFORMAID = x.PLATAFORMAID
JOIN AVALIACAO a ON a.AVALIACAOID = x.AVALIACAOID
JOIN AVALIADOR av ON av.AVALIADORID = x.AVALIADORID
ORDER BY j.TITULO;

------------------------------------------------------------
-- 7) Consulta final: jogos completos (tudo junto)
------------------------------------------------------------
SELECT j.TITULO,
       e.NOME AS EMPRESA,
       p.NOME AS PLATAFORMA,
       g.NOME AS GENERO
FROM JOGO j
LEFT JOIN DESENVOLVE d ON d.JOGOID = j.JOGOID
LEFT JOIN EMPRESA e ON e.EMPRESAID = d.EMPRESAID
LEFT JOIN SUPORTA s ON s.JOGOID = j.JOGOID
LEFT JOIN PLATAFORMA p ON p.PLATAFORMAID = s.PLATAFORMAID
LEFT JOIN CATEGORIZA c ON c.JOGOID = j.JOGOID
LEFT JOIN GENERO g ON g.GENEROID = c.GENEROID
ORDER BY j.TITULO;
