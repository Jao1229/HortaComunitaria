insert into Usuario (nome, email, telefone, tipo) 
values ("Maria Silva", "maria@gmail.com", "999999999", "coordenador");

insert into Usuario (nome, email, telefone, tipo) 
values ("João Pedro", "joao@gmail.com", "888888888", "visitante");

select * from Usuario;

insert into Voluntario (id_usuario, disponibilidade, tempo_colaboracao) 
values (1, "Sábados pela manhã", 5);

insert into Coordenador (id_usuario, funcao, area_responsavel) 
values (2, "Gestão", "Área Norte");


insert into Visitante (id_usuario, data_visita) 
values (3, "2025-09-28");

select * from Voluntario; 
select * from Coordenador; 
select * from Visitante;

update Voluntario 
set tempo_colaboracao = tempo_colaboracao + 10 
where id_usuario = 1;
