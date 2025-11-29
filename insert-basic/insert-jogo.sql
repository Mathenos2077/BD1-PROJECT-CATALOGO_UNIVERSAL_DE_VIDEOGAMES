------------------------------------------------------------
-- INSERTS DA TABELA JOGO
-- Usa SEQ_JOGO.NEXTVAL para gerar IDs
------------------------------------------------------------

------------------------------------------------------------
-- JOGO 1
------------------------------------------------------------
INSERT INTO JOGO (
    JOGOID, TITULO, DATALANCAMENTO, SINOPSE, CLASSIFICACAOINDICATIVA
) VALUES (
    SEQ_JOGO.NEXTVAL,
    'The Legend of Zelda: Breath of the Wild',
    TO_DATE('03/03/2017', 'DD/MM/YYYY'),
    'Um jogo de mundo aberto com exploração livre e alta interação com o ambiente.',
    '12'
);

-- Empresa: Nintendo
-- Plataforma: Nintendo Switch
INSERT INTO DESENVOLVE VALUES (1, 1);  
INSERT INTO SUPORTA VALUES (1, 1, NULL, 30000000, 1500000);

------------------------------------------------------------
-- JOGO 2
------------------------------------------------------------
INSERT INTO JOGO (
    JOGOID, TITULO, DATALANCAMENTO, SINOPSE, CLASSIFICACAOINDICATIVA
) VALUES (
    SEQ_JOGO.NEXTVAL,
    'God of War (2018)',
    TO_DATE('20/04/2018', 'DD/MM/YYYY'),
    'Kratos embarca em uma jornada com seu filho pelos reinos nórdicos.',
    '18'
);

-- Empresa: Sony Interactive Entertainment
-- Plataforma: PlayStation 4
INSERT INTO DESENVOLVE VALUES (2, 2);
INSERT INTO SUPORTA VALUES (2, 2, NULL, 19000000, 900000);

------------------------------------------------------------
-- JOGO 3
------------------------------------------------------------
INSERT INTO JOGO (
    JOGOID, TITULO, DATALANCAMENTO, SINOPSE, CLASSIFICACAOINDICATIVA
) VALUES (
    SEQ_JOGO.NEXTVAL,
    'Minecraft',
    TO_DATE('18/11/2011', 'DD/MM/YYYY'),
    'Jogo sandbox focado em construção, criatividade e sobrevivência.',
    'Livre'
);

-- Empresa: Mojang (vamos colocar como Empresa 6 futuramente)
-- Plataforma: PC
INSERT INTO DESENVOLVE VALUES (3, 3);
INSERT INTO SUPORTA VALUES (4, 3, NULL, 238000000, 10000000);

------------------------------------------------------------
-- JOGO 4
------------------------------------------------------------
INSERT INTO JOGO (
    JOGOID, TITULO, DATALANCAMENTO, SINOPSE, CLASSIFICACAOINDICATIVA
) VALUES (
    SEQ_JOGO.NEXTVAL,
    'GTA V',
    TO_DATE('17/09/2013', 'DD/MM/YYYY'),
    'Um dos jogos mais vendidos da história, com mundo aberto extenso.',
    '18'
);

-- Empresa: Rockstar Games
-- Plataforma: PlayStation 3 (exemplo)
INSERT INTO DESENVOLVE VALUES (4, 4);
INSERT INTO SUPORTA VALUES (9, 4, NULL, 200000000, 6000000);

------------------------------------------------------------
-- JOGO 5
------------------------------------------------------------
INSERT INTO JOGO (
    JOGOID, TITULO, DATALANCAMENTO, SINOPSE, CLASSIFICACAOINDICATIVA
) VALUES (
    SEQ_JOGO.NEXTVAL,
    'Hollow Knight',
    TO_DATE('24/02/2017', 'DD/MM/YYYY'),
    'Um metroidvania desafiador com foco em exploração e atmosfera.',
    '10'
);

-- Empresa: Team Cherry (vamos colocar como Empresa 7 futuramente)
-- Plataforma: PC
INSERT INTO DESENVOLVE VALUES (5, 5);
INSERT INTO SUPORTA VALUES (4, 5, NULL, 6000000, 500000);
