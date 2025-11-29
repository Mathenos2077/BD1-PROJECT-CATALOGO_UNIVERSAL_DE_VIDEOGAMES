------------------------------------------------------------
-- MASTER.SQL
-- Executa TODA a preparação do banco de dados
------------------------------------------------------------

PROMPT ================================================
PROMPT INICIANDO CONFIGURAÇÃO COMPLETA DO BANCO...
PROMPT ================================================

------------------------------------------------------------
-- 1) DROP DE TODAS AS TABELAS E SEQUENCES
------------------------------------------------------------
@drop-basic/drop-all-tables.sql

PROMPT >>> Todas as tabelas e sequences removidas.


------------------------------------------------------------
-- 2) CRIAÇÃO DE TODAS AS TABELAS + SEQUENCES
------------------------------------------------------------
@create-basic/create-tables.sql

PROMPT >>> Todas as tabelas e sequences foram criadas.


------------------------------------------------------------
-- 3) INSERTS BÁSICOS
------------------------------------------------------------

PROMPT >>> Inserindo dados iniciais...

@insert-basic/insert-empresa.sql
PROMPT Empresas inseridas.

@insert-basic/insert-plataforma.sql
PROMPT Plataformas inseridas.

@insert-basic/insert-genero.sql
PROMPT Gêneros inseridos.

@insert-basic/insert-avaliador.sql
PROMPT Avaliadores inseridos.

@insert-basic/insert-jogo.sql
PROMPT Jogos, relacionamentos SUPORTA, DESENVOLVE e CATEGORIZA inseridos.

@insert-basic/insert-conteudoadicional.sql
PROMPT Conteúdos adicionais inseridos.

@insert-basic/insert-avaliacao.sql
PROMPT Avaliações inseridas.


------------------------------------------------------------
-- 4) QUERIES PARA VERIFICAÇÃO
------------------------------------------------------------

PROMPT >>> Executando consultas gerais...

@query-basic/query-data/query-all.sql

PROMPT >>> Consultas concluídas.


------------------------------------------------------------
-- FINALIZAÇÃO
------------------------------------------------------------
PROMPT ================================================
PROMPT BANCO CONFIGURADO COM SUCESSO!
PROMPT ================================================
