------------------------------------------------------------
-- INSERTS DA TABELA EMPRESA
-- Estilo BD1 / Matheus: simples, direto e sem PL/SQL
-- Utiliza SEQ_EMPRESA.NEXTVAL para gerar PKs
------------------------------------------------------------

INSERT INTO EMPRESA (
    EMPRESAID,
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
) VALUES (
    SEQ_EMPRESA.NEXTVAL,
    'Nintendo',
    'Japão',
    TO_DATE('23/09/1889', 'DD/MM/YYYY'),
    'https://www.nintendo.com',
    'Ativa',
    'Uma das maiores desenvolvedoras e distribuidoras de jogos do mundo.'
);

INSERT INTO EMPRESA (
    EMPRESAID,
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
) VALUES (
    SEQ_EMPRESA.NEXTVAL,
    'Sony Interactive Entertainment',
    'Japão',
    TO_DATE('16/11/1993', 'DD/MM/YYYY'),
    'https://www.playstation.com',
    'Ativa',
    'Divisão da Sony responsável pela marca PlayStation.'
);

INSERT INTO EMPRESA (
    EMPRESAID,
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
) VALUES (
    SEQ_EMPRESA.NEXTVAL,
    'Ubisoft',
    'França',
    TO_DATE('12/03/1986', 'DD/MM/YYYY'),
    'https://www.ubisoft.com',
    'Ativa',
    'Estúdio europeu responsável por Assassin’s Creed, Far Cry e outros sucessos.'
);

INSERT INTO EMPRESA (
    EMPRESAID,
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
) VALUES (
    SEQ_EMPRESA.NEXTVAL,
    'Rockstar Games',
    'Estados Unidos',
    TO_DATE('01/01/1998', 'DD/MM/YYYY'),
    'https://www.rockstargames.com',
    'Ativa',
    'Criadora de séries como GTA, Red Dead Redemption e Max Payne.'
);

INSERT INTO EMPRESA (
    EMPRESAID,
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
) VALUES (
    SEQ_EMPRESA.NEXTVAL,
    'SEGA',
    'Japão',
    TO_DATE('03/06/1960', 'DD/MM/YYYY'),
    'https://www.sega.com',
    'Ativa',
    'Empresa histórica, criadora de Sonic e grande influenciadora do mercado.'
);
