------------------------------------------------------------
-- DROP-ALL-TABLES.SQL
-- Remove todas as tabelas e sequências do projeto
------------------------------------------------------------

------------------------------------------------------------
-- ORDEM: primeiro tabelas dependentes
------------------------------------------------------------
DROP TABLE AVALIA CASCADE CONSTRAINTS;
DROP TABLE AVALIACAO CASCADE CONSTRAINTS;
DROP TABLE SUPORTA CASCADE CONSTRAINTS;
DROP TABLE CATEGORIZA CASCADE CONSTRAINTS;
DROP TABLE DISTRIBUI CASCADE CONSTRAINTS;
DROP TABLE DESENVOLVE CASCADE CONSTRAINTS;
DROP TABLE TITULOALTERNATIVO CASCADE CONSTRAINTS;
DROP TABLE CONTEUDOADICIONAL CASCADE CONSTRAINTS;

------------------------------------------------------------
-- Tabelas principais
------------------------------------------------------------
DROP TABLE JOGO CASCADE CONSTRAINTS;
DROP TABLE GENERO CASCADE CONSTRAINTS;
DROP TABLE EMPRESA CASCADE CONSTRAINTS;
DROP TABLE PLATAFORMA CASCADE CONSTRAINTS;
DROP TABLE AVALIADOR CASCADE CONSTRAINTS;

------------------------------------------------------------
-- DROPAR SEQUENCES (padrão BD1)
------------------------------------------------------------
DROP SEQUENCE SEQ_JOGO;
DROP SEQUENCE SEQ_GENERO;
DROP SEQUENCE SEQ_EMPRESA;
DROP SEQUENCE SEQ_PLATAFORMA;
DROP SEQUENCE SEQ_AVALIADOR;
DROP SEQUENCE SEQ_CONTEUDO;
DROP SEQUENCE SEQ_AVALIACAO;

------------------------------------------------------------
-- FINAL
------------------------------------------------------------
-- Após executar este arquivo, rodar:
-- 1) create-tables.sql
-- 2) todos os inserts
------------------------------------------------------------
