set lin 400;
set feedback off;
set verify off;

prompt ========================================
prompt Installing IOD_AMW 
prompt ========================================

prompt granting PRIVILEGES to &&1.
@@grants.sql

prompt compiling package specification
@@iod_amw.pks.sql
SHOW ERRORS PACKAGE &&1..iod_amw;

prompt compiling package body
@@iod_amw.pkb.sql
SHOW ERRORS PACKAGE BODY &&1..iod_amw;
