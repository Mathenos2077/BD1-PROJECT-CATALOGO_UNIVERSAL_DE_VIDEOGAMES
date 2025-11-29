INSERT INTO EMPRESA (
    NOME,
    PAISSEDE,
    DATAFUNDACAO,
    SITE,
    ESTADO,
    DESCRICAO
)
VALUES (
    'EMPRESA 3', 
    'PAIS', 
    TO_DATE('16/11/1993', 'DD/MM/YYYY'), 
    'www.empresa1.com', 
    'Ativo', 
    'DESCRICAO'
);

COMMIT;