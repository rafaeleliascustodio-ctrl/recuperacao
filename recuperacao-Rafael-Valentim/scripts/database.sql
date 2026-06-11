USE techfactory_db;

CREATE TABLE departamento (
  id_departamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome_departamento VARCHAR(100) NOT NULL,
  local_departamento VARCHAR(100) NOT NULL

);

CREATE TABLE colaborador(
  id_colaborador INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome_colaborador VARCHAR(100) NOT NULL,
  cpf_colaborador VARCHAR(11) NOT NULL UNIQUE,
  email_corporativo_colaborador varchar(100) not null unique,
  cargo_colaborador varchar(100) not null,
  data_admissao_colaborador date not null,
  id_departamento int not null,
  foreign key (id_departamento) REFERENCES departamento(id_departamento)
);

create table categoria(
  id_categoria int primary key AUTO_INCREMENT NOT NULL,
  nome_categoria varchar(100) not NULL
);

create table fornecedor(
  id_fornecedor INT PRIMARY KEY NOT NULL,
  razão_social_forneedor VARCHAR(100) NOT NULL,
  CNPJ_fornecedor varchar(18) NOT NULL UNIQUE,
  telefone_fornecedor varchar(14),
  cidade_fornecedor varchar(100) NOT NULL

);  

create table chamado(
id_chamado int PRIMARY KEY NOT null,
numero_chamado VARCHAR(100) not null,
data_abertura_chamado date not null,
descricao_chamado text not null,
prioridade_chamado varchar(100) not null,

);
create table equipamento(

);

