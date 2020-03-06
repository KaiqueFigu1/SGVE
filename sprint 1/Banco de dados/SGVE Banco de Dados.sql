create database sgve;
-- criando banco de dados 
use sgve;
-- criando tabela para cadastro do usuario 
create table cadastro (
  id int primary key auto_increment,-- chave primaria que se completa sozinha 
  login varchar(50),
  senha varchar(50),
  cnpj varchar(14),
  nome_estacionamento varchar(50)
);


-- criando tabela para cadastrar o carro assim que ele chegar 
create table dados_arduino(
	id int primary key auto_increment,
    h_chegada time,
    dia date
);
-- cadastro do sensor 
create table vaga(
	id int primary key auto_increment,
    numero_vaga varchar(10),
    situacao char(1) default '0' -- define 0 como padrao para o campo situaçao 
);
-- inserindo cadstro do usuario kaique
insert into cadastro(login,senha,cnpj,nome_estacionamento) values ('kaique',md5('12345678'), '12345678901', 'capsloki parking'); 
-- inserindo dados do arduino com data e hora automatica 
insert into dados_arduino(h_chegada,dia) values (now(),now()); -- now para pegar dados atuais do computador

-- consulta na tabeal dados arduino
select * from dados_arduino;
-- consulta na tabela cadastro 
select * from cadastro;

-- drop database sgve;

-- faz a validacao do usuario  que esta cadstradado 
SELECT * FROM cadastro WHERE login = 
    'kaique' AND senha = md5('12345678');
-- faz a validaçao de um suario que nao existe 
    SELECT * FROM cadastro WHERE login = 
    'pedro' AND senha = md5('pedro123')
    
    
-- md5 é um metodo que faz a criptografia da senha a deixando segura 
