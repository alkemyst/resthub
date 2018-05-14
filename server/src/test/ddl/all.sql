CREATE USER RESTHUB_TEST IDENTIFIED BY test ;

GRANT "RESOURCE" TO RESTHUB_TEST ;
GRANT "CONNECT" TO RESTHUB_TEST ;
GRANT CREATE TABLE TO RESTHUB_TEST ;
GRANT CREATE VIEW TO RESTHUB_TEST ;

CONNECT RESTHUB_TEST/test@xe

@tables.sql

SET TERMOUT OFF

@product.sql
@customer.sql
@sales.sql
@texts.sql

QUIT