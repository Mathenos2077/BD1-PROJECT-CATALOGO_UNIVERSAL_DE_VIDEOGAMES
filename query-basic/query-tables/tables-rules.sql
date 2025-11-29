------------------------------------------------------------
-- TABLES-RULES.SQL
-- Lista todas as constraints (regras) das tabelas do projeto
------------------------------------------------------------

------------------------------------------------------------
-- LEGENDA DAS CONSTRAINTS:
-- P = Primary Key
-- R = Foreign Key
-- U = Unique
-- C = Check
------------------------------------------------------------

------------------------------------------------------------
-- 1) Todas as constraints das tabelas do projeto
------------------------------------------------------------
SELECT 
    TABLE_NAME,
    CONSTRAINT_NAME,
    CONSTRAINT_TYPE,
    SEARCH_CONDITION,
    R_CONSTRAINT_NAME
FROM USER_CONSTRAINTS
WHERE TABLE_NAME IN (
    'JOGO', 'TITULOALTERNATIVO', 'CONTEUDOADICIONAL',
    'GENERO', 'CATEGORIZA',
    'EMPRESA', 'DESENVOLVE', 'DISTRIBUI',
    'PLATAFORMA', 'SUPORTA',
    'AVALIADOR', 'AVALIACAO', 'AVALIA'
)
ORDER BY TABLE_NAME, CONSTRAINT_TYPE;

------------------------------------------------------------
-- 2) Constraints específicas por tabela (úteis para o PDF)
------------------------------------------------------------

-- Regras de JOGO
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'JOGO';

-- Regras de PLATAFORMA
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'PLATAFORMA';

-- Regras de EMPRESA
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'EMPRESA';

-- Regras de GENERO
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'GENERO';

-- Regras de SUPORTA (tabela fraca)
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'SUPORTA';

-- Regras de AVALIACAO
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'AVALIACAO';

-- Regras de AVALIA
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = 'AVALIA';
