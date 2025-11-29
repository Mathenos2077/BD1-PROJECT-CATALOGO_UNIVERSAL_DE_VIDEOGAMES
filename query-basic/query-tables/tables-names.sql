------------------------------------------------------------
-- TABLES-NAMES.SQL
-- Lista o nome das tabelas do projeto + informações básicas
-- Estilo Matheus / BD1: simples, direto, didático
------------------------------------------------------------

------------------------------------------------------------
-- 1) Todas as tabelas do projeto
------------------------------------------------------------
SELECT TABLE_NAME
FROM USER_TABLES
WHERE TABLE_NAME IN (
    'JOGO', 'TITULOALTERNATIVO', 'CONTEUDOADICIONAL',
    'GENERO', 'CATEGORIZA',
    'EMPRESA', 'DESENVOLVE', 'DISTRIBUI',
    'PLATAFORMA', 'SUPORTA',
    'AVALIADOR', 'AVALIACAO', 'AVALIA'
)
ORDER BY TABLE_NAME;

------------------------------------------------------------
-- 2) Quantidade de linhas por tabela (útil para verificar inserts)
------------------------------------------------------------
SELECT TABLE_NAME, NUM_ROWS
FROM USER_TABLES
WHERE TABLE_NAME IN (
    'JOGO', 'TITULOALTERNATIVO', 'CONTEUDOADICIONAL',
    'GENERO', 'CATEGORIZA',
    'EMPRESA', 'DESENVOLVE', 'DISTRIBUI',
    'PLATAFORMA', 'SUPORTA',
    'AVALIADOR', 'AVALIACAO', 'AVALIA'
)
ORDER BY TABLE_NAME;

------------------------------------------------------------
-- 3) Verificar se o usuário criou as tabelas corretamente
------------------------------------------------------------
SELECT TABLE_NAME, STATUS
FROM USER_OBJECTS
WHERE OBJECT_TYPE = 'TABLE'
  AND TABLE_NAME IN (
        'JOGO', 'TITULOALTERNATIVO', 'CONTEUDOADICIONAL',
        'GENERO', 'CATEGORIZA',
        'EMPRESA', 'DESENVOLVE', 'DISTRIBUI',
        'PLATAFORMA', 'SUPORTA',
        'AVALIADOR', 'AVALIACAO', 'AVALIA'
  )
ORDER BY TABLE_NAME;
