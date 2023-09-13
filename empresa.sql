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
insert into tb_estado values ('AC', "Acre");
insert into tb_estado values ('AL', "Alagoas");
insert into tb_estado values ('AP', "Amapá");
insert into tb_estado values ('AM', "Amazonas");
insert into tb_estado values ('BA', "Bahia");
insert into tb_estado values ('CE', "Ceará");
insert into tb_estado values ('ES', "Espírito Santo");
insert into tb_estado values ('GO', "Goiás");
insert into tb_estado values ('MA', "Maranhão");
insert into tb_estado values ('MT', "Mato Grosso");
insert into tb_estado values ('MS', "Mato Grosso do Sul");
insert into tb_estado values ('MG', "Minas Gerais");
insert into tb_estado values ('PA', "Pará");
insert into tb_estado values ('PB', "Paraíba");
insert into tb_estado values ('PR', "Paraná");
insert into tb_estado values ('PE', "Pernambuco");
insert into tb_estado values ('PI', "Piauí");
insert into tb_estado values ('RJ', "Rio de Janeiro");
insert into tb_estado values ('RN', "Rio Grande do Norte");
insert into tb_estado values ('RS', "Rio Grande do Sul");
insert into tb_estado values ('RO', "Rondônia");
insert into tb_estado values ('RR', "Roraima");
insert into tb_estado values ('SC', "Santa Catarina");
insert into tb_estado values ('SP', "Sao Paulo");
insert into tb_estado values ('SE', "Sergipe");
insert into tb_estado values ('TO', "Tocantins");
select * from tb_estado;

