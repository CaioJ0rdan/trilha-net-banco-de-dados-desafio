-- Arquivo de Querys Resposta 

--Query 1

SELECT
    Nome,Ano 
FROM 
    Filmes

-- Query 2

SELECT 
    Nome,Ano
FROM
    Filmes
ORDER BY 
    Ano 

-- Query 3

SELECT 
    Nome,Ano,Duracao 
FROM
    Filmes
WHERE
    Nome = 'De Volta para o Futuro'

-- Query 4

SELECT
    Nome, Ano, Duracao
FROM 
    Filmes
WHERE 
    Ano = 1997    

-- Query 5

SELECT
    Nome, Ano, Duracao
FROM 
    Filmes
WHERE 
    Ano > 2000

-- Query 6

SELECT
    Nome, Ano, Duracao
FROM 
    Filmes
WHERE 
    Duracao > 100 AND Duracao < 150
ORDER BY
    Duracao ASC   

-- Query 7

SELECT 
    Ano,
    COUNT(Ano) Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY
    Quantidade DESC     

-- Query 8

SELECT
     Id, PrimeiroNome,UltimoNome,Genero
FROM
    Atores
WHERE
    Genero = 'M'     

-- Query 9

SELECT
     Id, PrimeiroNome,UltimoNome,Genero
FROM
    Atores
WHERE
    Genero = 'F'
ORDER BY
    PrimeiroNome    

-- Query 10

SELECT 
    Filmes.Nome, Generos.Genero
FROM
    FilmesGenero
JOIN  
    Filmes ON FilmesGenero.IdFilme = Filmes.Id
JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id     

-- Query 11

SELECT 
    Filmes.Nome, Generos.Genero
FROM
    FilmesGenero
JOIN  
    Filmes ON FilmesGenero.IdFilme = Filmes.Id
JOIN 
    Generos ON FilmesGenero.IdGenero = Generos.Id 
WHERE Genero = 'Mistério'    

-- Query 12

SELECT 
    Filmes.Nome, Atores.PrimeiroNome,Atores.UltimoNome, ElencoFilme.Papel
FROM
    ElencoFilme
JOIN  
    Filmes ON ElencoFilme.IdFilme = Filmes.Id
JOIN 
    Atores ON ElencoFilme.IdAtor = Atores.Id 
 


    