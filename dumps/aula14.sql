use cadastro;

desc gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso);

select * from gafanhotos;

update gafanhotos set cursopreferido = '6'where id = '1';

delete from cursos where idcurso = '6';

select nome, cursopreferido from gafanhotos;

select nome, idcurso from cursos;

select g.nome, c.nome, c.ano from gafanhotos as g right join cursos as c on c.idcurso = g.cursopreferido;