DECLARE
    -- UTILS
    AVALIACAO_ID AVALIACAO.AVALIACAOID%TYPE;

BEGIN
    
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        2,
        SYSDATE,
        9.7,
        NULL
    ) RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA (
        JOGOID, PLATAFORMAID, AVALIADORID, AVALIACAOID
    ) VALUES (
        1, 1, 2, AVALIACAO_ID
    );


    -- GOD OF WAR (2018)
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        3,
        SYSDATE,
        9.4,
        NULL
    )RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA VALUES (
        2, 2, 3, AVALIACAO_ID
    );


    -- MINECRAFT — Avaliação por Mathenos2077 kkkk
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        1,
        SYSDATE,
        9.0,
        NULL
    )RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA VALUES (
        3, 4, 1, AVALIACAO_ID  -- PC
    );



    -- MINECRAFT — Avaliação por IGN (outra plataforma)
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        2,
        SYSDATE,
        8.8,
        NULL
    )RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA VALUES (
        3, 3, 2, AVALIACAO_ID  -- Xbox Series X
    );

    -- GTA V — Avaliado por IGN
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        2,
        SYSDATE,
        9.6,
        NULL
    )RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA VALUES (
        4, 4, 2, AVALIACAO_ID
    );

    -- HOLLOW KNIGHT — Avaliado por Mathenos2077 '-'
    INSERT INTO AVALIACAO (
        AVALIADORID, DATAPOST, NOTA, COMENTARIO
    ) VALUES (
        1,
        SYSDATE,
        9.2,
        NULL
    )RETURNING AVALIACAOID INTO AVALIACAO_ID;

    INSERT INTO AVALIA VALUES (
        5, 4, 1, AVALIACAO_ID
    );

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'Erro ao registrar avaliação: ' || SQLERRM);
END;
/
------------------------------------------------------------
-- FIM DO POPULATE
------------------------------------------------------------
COMMIT;
