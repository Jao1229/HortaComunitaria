create database HortaComunitaria;

use HortaComunitaria;

-- Tabela Usuário (Entidade Geral)
create table Usuario (
    id_usuario int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    telefone varchar(15) not null,
    tipo enum('voluntario', 'coordenador', 'visitante') not null
    
);

insert into Usuario (nome, email, telefone, tipo) 
values ("Maria Silva", "maria@gmail.com", "999999999", "coordenador");

insert into Usuario (nome, email, telefone, tipo) 
values ("João Pedro", "joao@gmail.com", "888888888", "visitante");

select * from Usuario;

-- Tabelas Especializadas
create table Voluntario (
    id_usuario int primary key,
    disponibilidade varchar(100) not null,
    tempo_colaboracao int default 0,
    foreign key (id_usuario) references Usuario(id_usuario)
    on delete cascade
    on update cascade
);

insert into Voluntario (id_usuario, disponibilidade, tempo_colaboracao) 
values (1, "Sábados pela manhã", 5);

create table Coordenador (
    id_usuario int primary key,
    funcao varchar(100) not null,
    area_responsavel varchar(100) not null,
    foreign key (id_usuario) references Usuario(id_usuario)
    on delete cascade
    on update cascade
);

insert into Coordenador (id_usuario, funcao, area_responsavel) 
values (2, "Gestão", "Área Norte");

create table Visitante (
    id_usuario int primary key,
    data_visita date not null,
    foreign key (id_usuario) references Usuario(id_usuario)
    on delete cascade
    on update cascade 
);

insert into Visitante (id_usuario, data_visita) 
values (3, "2025-09-28");

select * from Voluntario; 
select * from Coordenador; 
select * from Visitante;

update Voluntario 
set tempo_colaboracao = tempo_colaboracao + 10 
where id_usuario = 1;

-- Produto/Plantas
create table Produto (
    id_produto int auto_increment primary key,
    nome varchar(100) not null,
    tipo enum('hortalica', 'fruta', 'legume', 'erva') not null, 
    epoca_plantio varchar(50) not null
);

-- Evento
create table Evento (
    id_evento int auto_increment primary key,
    nome varchar(100) not null,
    data_evento date not null,
    descricao text,
    local_evento varchar(100) not null
);

-- Parcela/Canteiro
create table Parcela (
    id_parcela int auto_increment primary key,
    tamanho decimal(5,2) not null,
    localizacao varchar(100) not null,
    status enum('ativa', 'em manutenção') not null
);
update Parcela 
set status = "ativa" 
where id_parcela = 2;

select * from Voluntario;
select * from Parcela;

-- ParticipacaoEvento (Tabela de Relacionamento)
create table Participacao_Evento (
    id_usuario int,
    id_evento int,
    papel enum('organizador', 'participante') not null,
    primary key (id_usuario, id_evento),
    foreign key (id_usuario) references Usuario(id_usuario),
    foreign key (id_evento) references Evento(id_evento)
);

-- Cultivo (Associativa)
create table Cultivo (
    id_produto int,
    id_parcela int,
    data_plantio date not null,
    status_cultivo enum('plantado', 'colhido') not null,
    primary key (id_produto, id_parcela),
    foreign key(id_produto) references Produto(id_produto),
    foreign key (id_parcela) references Parcela(id_parcela)
);

-- Colheita (Fraca)
create table Colheita (
    id_parcela int,
    id_produto int,
    data_colheita date not null,
    quantidade_kg decimal(6,2) not null,
    primary key (id_parcela, id_produto, data_colheita),
    foreign key (id_parcela) references Parcela(id_parcela),
    foreign key (id_produto) references Produto(id_produto)
);
