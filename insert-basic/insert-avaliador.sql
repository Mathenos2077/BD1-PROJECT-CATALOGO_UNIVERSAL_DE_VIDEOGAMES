------------------------------------------------------------
-- INSERTS DA TABELA AVALIADOR
-- Estilo MATHEUS / BD1: simples, direto, sem PL/SQL
------------------------------------------------------------

INSERT INTO AVALIDOR (
    AVALIDORID,
    NOME,
    TIPO,
    EMAIL,
    URL,
    PAISORIGEM,
    DESCRICAO
) VALUES (
    SEQ_AVALIADOR.NEXTVAL,
    'Mathenos2077',
    'Usuário',
    'mathenos2077@gmail.com',
    'www.mathenos2077.com',
    'Brasil',
    'Um amante de jogos com ótimo senso crítico para avaliar títulos.'
);

INSERT INTO AVALIADOR (
    AVALIADORID,
    NOME,
    TIPO,
    EMAIL,
    URL,
    PAISORIGEM,
    DESCRICAO
) VALUES (
    SEQ_AVALIADOR.NEXTVAL,
    'IGN',
    'Crítica especializada',
    'contact@ign.com',
    'https://www.ign.com',
    'Estados Unidos',
    'Equipe internacional famosa por análises e notas rígidas.'
);

INSERT INTO AVALIADOR (
    AVALIADORID,
    NOME,
    TIPO,
    EMAIL,
    URL,
    PAISORIGEM,
    DESCRICAO
) VALUES (
    SEQ_AVALIADOR.NEXTVAL,
    'Gamespot',
    'Crítica especializada',
    'reviews@gamespot.com',
    'https://www.gamespot.com',
    'Estados Unidos',
    'Portal especializado em notícias e análises técnicas.'
);

INSERT INTO AVALIADOR (
    AVALIADORID,
    NOME,
    TIPO,
    EMAIL,
    URL,
    PAISORIGEM,
    DESCRICAO
) VALUES (
    SEQ_AVALIADOR.NEXTVAL,
    'Eurogamer',
    'Crítica especializada',
    'contact@eurogamer.net',
    'https://www.eurogamer.net',
    'Reino Unido',
    'Portal europeu com reviews detalhados e foco técnico.'
);
