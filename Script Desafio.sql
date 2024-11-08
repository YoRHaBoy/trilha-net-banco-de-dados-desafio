
-- 1 Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao from Filmes order by Ano

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- 4 Buscar os filmes lan�ados em 1997
select * from Filmes where Ano = 1997

-- 5 Buscar os filmes lan�ados AP�S o ano 2000
select * from Filmes where Ano > 2000

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao

-- 7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) Quantidade from Filmes group by Ano order by Quantidade desc

-- 8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
Select * from Atores where Genero = 'M'

-- 9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select * from Atores where Genero = 'F' order by PrimeiroNome 

-- 10 Buscar o nome do filme e o g�nero
select F.Nome, G.Genero from FilmesGenero FG join Filmes F on F.Id = FG.IdFilme join Generos G on G.Id = FG.IdGenero

-- 11 Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select F.Nome, G.Genero from FilmesGenero FG join Filmes F on F.Id = FG.IdFilme join Generos G on G.Id = FG.IdGenero where G.Genero = 'Mist�rio'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome, A.PrimeiroNome, A.UltimoNome, Papel from ElencoFilme EF join Filmes F on F.id = EF.IdFilme join Atores A on A.Id = EF.IdAtor
