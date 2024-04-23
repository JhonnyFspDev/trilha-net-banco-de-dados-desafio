--------------------------------------
--1
SELECT 
	Nome, Ano
FROM Filmes

---------------------------------------
--2
SELECT 
	*
FROM Filmes
ORDER BY Ano

---------------------------------------
--3
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'de volta para o futuro'

---------------------------------------
--4
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = '1997'

---------------------------------------
--5
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > '2000'

---------------------------------------
--6
SELECT
	Nome, Ano, Duracao
FROM Filmes
--WHERE Duracao > 100 AND Duracao < 150
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao ASC

---------------------------------------
--7
SELECT
	Ano,
	COUNT(Ano) AS QUANTIDADE
FROM Filmes
GROUP BY Ano
ORDER BY QUANTIDADE DESC

---------------------------------------
--8
SELECT
	* 
FROM Atores
WHERE Genero = 'M'

---------------------------------------
--9
SELECT
	* 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

---------------------------------------
--10
SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
ON G.Id = FG.IdGenero

---------------------------------------
--11
SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

---------------------------------------
--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON A.Id = EF.IdAtor

	
