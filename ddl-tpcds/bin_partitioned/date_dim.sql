create database if not exists ${DB} location "${DBLOCATION}";
use ${DB};

drop table if exists date_dim;

create table date_dim
stored as ${FILE}
as select * from ${SOURCE}.date_dim;
