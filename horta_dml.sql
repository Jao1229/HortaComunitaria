-- Usuario --
insert into Usuario (nome, email, telefone, tipo) 
values ("Maria Silva", "maria@gmail.com", "999999999", "coordenador");

insert into Usuario (nome, email, telefone, tipo) 
values ("João Pedro", "joao@gmail.com", "888888888", "visitante");

select * from Usuario;

--Voluntario--
insert into Voluntario (id_usuario, disponibilidade, tempo_colaboracao) 
values (1, "Sábados pela manhã", 5);

-- Coordenador --
insert into Coordenador (id_usuario, funcao, area_responsavel) 
values (2, "Gestão", "Área Norte");

-- Visitante --
insert into Visitante (id_usuario, data_visita) 
values (3, "2025-09-28");

select * from Voluntario; 
select * from Coordenador; 
select * from Visitante;

-- Voluntario --
update Voluntario 
set tempo_colaboracao = tempo_colaboracao + 10 
where id_usuario = 1;

-- Parcela --
update Parcela 
set status = "ativa" 
where id_parcela = 2;

select * from Voluntario;
select * from Parcela;


