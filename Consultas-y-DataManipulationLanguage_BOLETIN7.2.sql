----LuisVergaraCastro/Consultas-y-DataManipulationLanguage_BOLETIN7.2
--Consultas y DML
--1. Sobre la base de datos COLEGAS, introduce los siguientes datos:
USE Colegas
--1.CARROS --SELECT * FROM Carros
--ID		--1			--2			--3			--5			--8
--Marca		--Seat		--Ford		--Toyota	--Renault	--Mitsubishi
--Modelo	--Ibiza		--Focus		--Corolla	--Megane	--Colt
--Año		--2014		--2016		--2017		--2015		--2011
--Color		--Blanco	--Rojo		--Blanco	--Azul		--Rojo
--Propietario	--NULL	--1			--4			--2			--6
GO
INSERT INTO Carros
           ([ID],[Marca],[Modelo],[Anho],[Color],[IDPropietario])
     VALUES
           (1, 'Seat', 'Ibiza', 2014,'Blanco', NULL),
		   (2, 'Ford', 'Focus', 2016,'Rojo', 1),
		   (3, 'Toyota', 'Corolla', 2017,'Blanco', 4),
		   (5, 'Renault', 'Megane', 2015,'Azul', 2),
		   (8, 'Mitsubishi', 'Colt', 2011,'Rojo', 6)
GO
--2.PEOPLE --SELECT * FROM PEOPLE

--ID--Nombre--Apellidos--FechaNac

--1--Eduardo--Mingo--14/07/1990

--2--Margarita--Padera--11/11/1992

--4--Eloisa--Lamandra--02/03/2000

--5--Jordi--Videndo--28/05/1989

--6--Alfonso--Sito--10/10/1978
GO
INSERT INTO [dbo].[People]
           ([ID]
           ,[Nombre]
           ,[Apellidos]
           ,[FechaNac])
     VALUES
           (1, 'Eduardo', 'Mingo', '14/07/1990'),
		   (2, 'Margarita', 'Padera', '11/11/1992'),
		   (4, 'Eloisa', 'Lamandra', '02/03/2000'),
		   (5, 'Jordi', 'Videndo', '28/05/1989'),
		   (6, 'Alfonso', 'Sito', '10/10/1978')
GO
--3.LIBROS--SELECT * FROM LIBROS

--ID--Titulo--Autors
--2--El corazón de las Tinieblas--Joseph Conrad

--4--Cien años de soledad--Gabriel García Márquez

--8--Harry Potter y la cámara de los secretos--J. K. Rowling

--16--Evangelio del Flying Spaguetti Monster--Bobby Henderson
GO
INSERT INTO [dbo].[Libros]
           ([ID]
           ,[Titulo]
           ,[Autors])
     VALUES
           (2, 'El corazón de las Tinieblas', 'Joseph Conrad'),
		   (4, 'Cien años de soledad', 'Gabriel García Márquez'),
		   (8, 'Harry Potter y la cámara de los secretos', 'J. K. Rowling'),
		   (16, 'Evangelio del Flying Spaguetti Monster', 'Bobby Henderson')
GO
--4. Eduardo Mingo ha leído Cien años de Soledad el año pasado.
--Margarita ha leído El corazón de las tinieblas en 2014. 
--Eloisa ha leído Cien años de soledad en 2015 y Harry Potter en 2017.
--Jordi y Alfonso han leído El Evangelio del FSM en 2010.
--SELECT * FROM Lecturas
GO
INSERT INTO [dbo].[Lecturas]
           ([IDLibro]
           ,[IDLector]
           ,[AnhoLectura])
     VALUES
           (4, 1, 2021),
		   (2, 2, 2014),
		   (4, 4, 2015),
		   (8, 4, 2017),
		   (16, 5, 2010),
		   (16, 6, 2010)
GO
--5. Margarita le ha vendido su coche a Alfonso.
SELECT * FROM Carros
GO

UPDATE [dbo].[Carros]
   SET [ID] = 5
      ,[Marca] = 'Renault'
      ,[Modelo] = 'Megane'
      ,[Anho] = 2015
      ,[Color] = 'Azul'
      ,[IDPropietario] = 6
 WHERE IDPropietario = 2
GO
--6. Queremos saber los nombres y apellidos de todos los que tienen 30 años o más
SELECT * FROM People
GO
SELECT Nombre, Apellidos, DATEDIFF(YEAR, FechaNac, CURRENT_TIMESTAMP) AS [EDAD]
FROM People
WHERE DATEDIFF(YEAR, FechaNac, CURRENT_TIMESTAMP) >= 30
--7. Marca, año y modelo de todos los coches que no sean blancos ni verdes
GO
SELECT * FROM Carros
GO
SELECT Marca, Modelo, Color
FROM Carros
WHERE Color NOT LIKE ('Blanco') AND Color NOT LIKE ('Verde')
--8. El nuevo gobierno regional ha prohibido todas las religiones, excepto la oficial.
--Por ello, los pastafarianos se ven obligados a ocultarse.
--Inserta un nuevo libro titulado "Vidas santas" cuyo autor es el Abate Bringas.
--Actualiza la tabla lecturas para cambiar las lecturas del Evangelio del FSM por este nuevo libro
GO

INSERT INTO [dbo].[Libros]
           ([ID]
           ,[Titulo]
           ,[Autors])
     VALUES
           (10
           ,'Vidas Santas'
           ,'Abate Bringas')
GO
GO
UPDATE [dbo].[Lecturas]
   SET [IDLibro] = 10
 WHERE IDLibro = 16
GO
SELECT * FROM Lecturas
SELECT * FROM Libros
SELECT * FROM People

--9. Eloísa también ha leído El corazón de las tinieblas y le ha gustado mucho.
GO
INSERT INTO [dbo].[Lecturas]
           ([IDLibro]
           ,[IDLector])
     VALUES
           (2,4)
GO
--10. Jordi se ha comprado el Seat Ibiza
USE [Colegas]
GO

INSERT INTO [dbo].[Carros]
           ([ID]
           ,[Marca]
           ,[Modelo]
           ,[Anho]
           ,[Color]
           ,[IDPropietario])
     VALUES
           (10, 'Seat', 'Ibiza', 2022, 'Rosa Fuxia', 5)
GO
--11. Haz una consulta que nos devuelva los ids de los colegas que han leído alguno de los libros con ID par.
SELECT * FROM Lecturas
GO
SELECT IDLector, IDLibro
FROM Lecturas
WHERE IDLibro %2 = 0