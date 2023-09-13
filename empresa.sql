create database db_empresa;
use db_empresa;

create table tb_estado(
est_sigla char(2) not null primarykey,
est_descricao varchar(35)
);

create table tb_clientes(
cli_codigo int auto_increment primary key,
cli_nome varchar(45) not null,
cli_endereco varchar(50)
);
alter table tb_clientes add column cli_est_cod char(2) not null;

alter table tb_clientes add foreign key(cli_est_sigla) 
references tb_estado(est_sigla);
describe tb_clientes;
insert into tb_estado values ('SP', "Sao Paulo");
insert into tb_estado values ('AC', "Acre");
insert into tb_estado values ('AL', "Alagoas");
insert into tb_estado values ('AP', "Amapá");
insert into tb_estado values ('AM', "Amazonas");
insert into tb_estado values ('', "Bahia");
insert into tb_estado values ('', "Ceará");
insert into tb_estado values ('', "Espírito Santo");
insert into tb_estado values ('', "Goiás");
insert into tb_estado values ('', "Maranhão");
insert into tb_estado values ('', "Mato Grosso");
insert into tb_estado values ('', "Mato Grosso do Sul");
insert into tb_estado values ('', "Minas Gerais");
insert into tb_estado values ('', "Pará");
insert into tb_estado values ('', "Paraíba");
insert into tb_estado values ('', "Paraná");
insert into tb_estado values ('', "Pernambuco");
insert into tb_estado values ('', "Piauí");
insert into tb_estado values ('', "Rio de Janeiro");
insert into tb_estado values ('', "Rio Grande do Norte");
insert into tb_estado values ('RS', "Rio Grande do Sul");
insert into tb_estado values ('', "Rondônia");
insert into tb_estado values ('', "Roraima");
insert into tb_estado values ('', "");
insert into tb_estado values ('', "");
insert into tb_estado values ('', "");
select * from tb_estado;

