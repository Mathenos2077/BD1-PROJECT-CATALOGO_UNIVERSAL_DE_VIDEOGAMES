------------------------------------------------------------
-- DELETE-BASIC.SQL
-- Exclusão simples e direta de registros
-- Sem PL/SQL, sem triggers – estilo BD1
------------------------------------------------------------

-- ORDEM IMPORTANTE!
-- 1) Relações fracas / tabelas dependentes
-- 2) Relações fortes / tabelas principais

------------------------------------------------------------
-- REMOVER RELACIONAMENTOS
------------------------------------------------------------

DELETE FROM AVALIA;
DELETE FROM AVALIACAO;
DELETE FROM SUPORTA;
DELETE FROM CATEGORIZA;
DELETE FROM DISTRIBUI;
DELETE FROM DESENVOLVE;
DELETE FROM TITULOALTERNATIVO;
DELETE FROM CONTEUDOADICIONAL;

------------------------------------------------------------
-- REMOVER TABELAS PRINCIPAIS
------------------------------------------------------------

DELETE FROM PLATAFORMA;
DELETE FROM GENERO;
DELETE FROM EMPRESA;
DELETE FROM AVALIADOR;
DELETE FROM JOGO;

------------------------------------------------------------
-- CONSULTA FINAL PARA CONFERIR
------------------------------------------------------------

SELECT 'JOGO', COUNT(*) FROM JOGO;
SELECT 'PLATAFORMA', COUNT(*) FROM PLATAFORMA;
SELECT 'EMPRESA', COUNT(*) FROM EMPRESA;
SELECT 'AVALIADOR', COUNT(*) FROM AVALIADOR;
SELECT 'GENERO', COUNT(*) FROM GENERO;
SELECT 'CATEGORIZA', COUNT(*) FROM CATEGORIZA;
SELECT 'CONTEUDOADICIONAL', COUNT(*) FROM CONTEUDOADICIONAL;
SELECT 'TITULOALTERNATIVO', COUNT(*) FROM TITULOALTERNATIVO;
SELECT 'SUPORTA', COUNT(*) FROM SUPORTA;
SELECT 'DESENVOLVE', COUNT(*) FROM DESENVOLVE;
SELECT 'DISTRIBUI', COUNT(*) FROM DISTRIBUI;
SELECT 'AVALIACAO', COUNT(*) FROM AVALIACAO;
SELECT 'AVALIA', COUNT(*) FROM AVALIA;


COMMIT;