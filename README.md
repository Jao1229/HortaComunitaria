# HortaComunitaria
## Este repositório contém scrips SQL para a criação e manipulação de um Banco de Dados relecionado ao nosso projeto __Horta Comunitaria__

### Estrutura:
1. **create tables** --> Comando para a criação de uma tabela do Banco.
2. **select** --> Comando para consulta de dado de uma tabela.
3. **insert** --> Comando para a inserçãõ de dados de uma tabela ja existente.
4. **update** --> Comando para atualizar(modificar) dados existente em uma tabela.

### Pré-requisitos:
- Banco de Dados MySql
- Utilizar ferramentas como MySql Workbench

### Como executar para testes:
- create table Usuario (
    id_usuario int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null unique,
    telefone varchar(20) not null,
    tipo enum('voluntario', 'coordenador', 'visitante') not null
    
);
- insert into Usuario (nome, email, telefone, tipo) 
values ("Maria Silva", "maria@gmail.com", "999999999", "voluntario");

- select * from Usuario; 
- update Voluntario 
set tempo_colaboracao = tempo_colaboracao + 10 
where id_usuario = 1;
