----LuisVergaraCastro/Consultas-y-DataManipulationLanguage_BOLETIN7.2
--Consultas y DML
--1. Sobre la base de datos COLEGAS, introduce los siguientes datos:
--1.CARROS

--ID		--1			--2			--3			--5			--8

--Marca		--Seat		--Ford		--Toyota	--Renault	--Mitsubishi

--Modelo	--Ibiza		--Focus		--Corolla	--Megane	--Colt


--Año		--2014		--2016		--2017		--2015		--2011

--Color		--Blanco	--Rojo		--Blanco	--Azul		--Rojo


--Propietario	--NULL	--1			--4			--2			--6

--2.PEOPLE

--ID--Nombre--Apellidos--FechaNac

--1--Eduardo--Mingo--14/07/1990

--2--Margarita--Padera--11/11/1992

--4--Eloisa--Lamandra--02/03/2000

--5--Jordi--Videndo--28/05/1989

--6--Alfonso--Sito--10/10/1978

--3.LIBROS

--ID--Titulo--Autors
--2--El corazón de las Tinieblas--Joseph Conrad

--4--Cien años de soledad--Gabriel García Márquez

--8--Harry Potter y la cámara de los secretos--J. K. Rowling

--16--Evangelio del Flying Spaguetti Monster--Bobby Henderson
 

--4. Eduardo Mingo ha leído Cien años de Soledad el año pasado.
--Margarita ha leído El corazón de las tinieblas en 2014. 
--Eloisa ha leído Cien años de soledad en 2015 y Harry Potter en 2017.
--Jordi y Alfonso han leído El Evangelio del FSM en 2010.

--5. Margarita le ha vendido su coche a Alfonso.

--6. Queremos saber los nombres y apellidos de todos los que tienen 30 años o más

--7. Marca, año y modelo de todos los coches que no sean blancos ni verdes

--8. El nuevo gobierno regional ha prohibido todas las religiones, excepto la oficial.
--Por ello, los pastafarianos se ven obligados a ocultarse.
--Inserta un nuevo libro titulado "Vidas santas" cuyo autor es el Abate Bringas.
--Actualiza la tabla lecturas para cambiar las lecturas del Evangelio del FSM por este nuevo libro

--9. Eloísa también ha leído El corazón de las tinieblas y le ha gustado mucho.

--10. Jordi se ha comprado el Seat Ibiza

--11. Haz una consulta que nos devuelva los ids de los colegas que han leído alguno de los libros con ID par.