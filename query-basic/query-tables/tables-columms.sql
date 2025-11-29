------------------------------------------------------------
-- TABLES-COLUMNS.SQL
-- Lista as colunas das principais tabelas do projeto
-- Estilo Matheus / BD1: consultas simples e diretas
------------------------------------------------------------

------------------------------------------------------------
-- 1) Todas as colunas agrupadas por tabela
------------------------------------------------------------
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    DATA_LENGTH,
    NULLABLE,
    DATA_DEFAULT
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME IN (
    'JOGO', 'TITULOALTERNATIVO', 'CONTEUDOADICIONAL',
    'GENERO', 'CATEGORIZA',
    'EMPRESA', 'DESENVOLVE', 'DISTRIBUI',
    'PLATAFORMA', 'SUPORTA',
    'AVALIADOR', 'AVALIACAO', 'AVALIA'
)
ORDER BY TABLE_NAME, COLUMN_ID;

------------------------------------------------------------
-- 2) CONSULTA DE UMA TABELA ESPECÍFICA (exemplos)
------------------------------------------------------------

-- Colunas de JOGO
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'JOGO'
ORDER BY COLUMN_ID;

-- Colunas de PLATAFORMA
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'PLATAFORMA'
ORDER BY COLUMN_ID;

-- Colunas de EMPRESA
SELECT COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'EMPRESA'
ORDER BY COLUMN_ID;
