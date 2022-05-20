create database funilaria;

use funilaria;
create table tb_administrador(
id_administrador		int primary key auto_increment,
nm_usuario		varchar(100),
ds_senha		varchar(100)
);

create table tb_pedido(
id_pedido		int primary key auto_increment,
id_administrador	int,
nm_cliente		varchar(100),
ds_endereco		varchar(100),
dt_atendimento		datetime,
ds_telefone		varchar(20),
nm_carro		varchar(100),
dt_anoCarro		datetime,
ds_placa		varchar(100),
ds_problema		varchar(1000),
ds_pecas		varchar(1000),
vl_orcamento	decimal(10,2),
foreign key (id_administrador) references tb_administrador(id_administrador)
);

select *
from tb_administrador
join tb_pedido on tb_administrador.id_administrador = tb_pedido.id_administrador;

insert into tb_pedido(nm_cliente, ds_endereco, dt_atendimento, ds_telefone, nm_carro, dt_anoCarro, ds_placa, ds_problema, ds_pecas, vl_orcamento)
values( 'Roberto', 'rua sei la', '2022-10-03', '4002-8922', 'celtinha rebaixado', '2000-01-01', 'abluablue', 'carro nao funciona ora bolas', 'carburador novo', '3000');
select * from tb_pedido;