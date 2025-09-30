insert into Usuario (nome, email, telefone, tipo) 
values ("Maria Silva", "maria@gmail.com", "999999999", "coordenador");

insert into Usuario (nome, email, telefone, tipo) 
values ("João Pedro", "joao@gmail.com", "888888888", "visitante");

select * from Usuario;

insert into Voluntario (id_usuario, disponibilidade, tempo_colaboracao) 
values (1, "Sábados pela manhã", 5);
