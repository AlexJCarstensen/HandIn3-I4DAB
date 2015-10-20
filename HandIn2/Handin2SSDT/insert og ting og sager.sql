-- Indsættelse af 10 kontakter

DECLARE @PersonID INT
DECLARE @AdressID INT
--Person 1
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Folkeregister', 'Grønnegade', 119, 8000, 'Aarhus')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2808882010, 'Alex', 'Jul', 'Carstensen', 'Arbejde', (select AdresseID from Adresse where VejNavn='Grønnegade') )
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Sommerhus', 'smedegade', 15, 2653, 'Lem') 
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 27573754, 'Mobil')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 2
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Sommerhus', 'staunsvej', 147, 8381, 'Tilst')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2506892543, 'Jeba', NULL, 'Ranganathan', 'Ven',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 26844055, 'Mobil')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 3
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Arbejde', 'bum', 54, 9000, 'KBH')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 6416516812, 'karl', 'mer', 'Ost', 'Skole',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 68481214, 'Privat')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 4
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Folkeregister', 'bønnevej', 25, 4553, 'Senen')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2506892543, 'Nanna', 'Vestergaard', 'Jensen', 'Familie',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 25684521, 'Privat')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 5
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Sommerhus', 'Hejsagade', 12, 6851, 'grenå')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2554892543, 'Rebecca', NULL, 'Jeba', 'Familie',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 54632845, 'Privat')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 6
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Folkeregister', 'manio', 15, 1111, 'Viborg')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2506893243, 'Martin', 'Fedberg', 'Corona', 'Arbejde',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 55542845, 'Mobil')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 7
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Sommerhus', 'Skeden', 100, 5000, 'Tarm')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2156845962, 'John', NULL, 'Thomsen', 'Skole',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 55364845, 'Privat')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 8
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Skole', 'Finlandsgade', 15, 4215, 'AAlborg')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 2506893243, 'Nikolaj', 'Counter', 'Strike', 'Online',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 54698231, 'Mobil')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 9
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Arbejde', 'gedevej', 115, 2365, 'Odense')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES (2310258496 , 'Mads', 'Kring', 'Jakobsen', 'Skole',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 23124562, 'Arbejde')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)
--Person 10
INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Skole', 'Svendborgvej', 10, 5432, 'Svendborg')
SELECT @AdressID = SCOPE_IDENTITY()
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 1245365243, 'Jonathan', 'Parkour', 'Spang', 'Skole',@AdressID)
SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (@PersonID, 21535625, 'Skole')
INSERT INTO bor (PersonID, AdresseID) VALUES (@PersonID, @AdressID)

-- Opdatering af forskellige ting i databasen
UPDATE Adresse SET City='Horsens' WHERE VejNavn='Bum'
UPDATE Person SET Mellemnavn='ASUS' WHERE Fornavn='John'
UPDATE Telefon SET TelefonNr=25413265 WHERE PersonID=3
--En bor på flere adresser
UPDATE bor SET PersonID=10 WHERE AdresseID=7
--Flere bor på én adresse
UPDATE bor SET AdresseID=1 WHERE PersonID=4

-- Slet Alex og indsæt ham igen og tildel samme adresse.
DELETE FROM Person WHERE Fornavn = 'Alex'
INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], AdresseID) VALUES ( 2808882010, 'Alex', 'Jul', 'Carstensen', 'Arbejde',(SELECT AdresseID FROM Adresse WHERE VejNavn = 'Grønnegade'))
--SELECT @PersonID = SCOPE_IDENTITY()
INSERT INTO bor (PersonID, AdresseID) VALUES ((SELECT PersonID FROM Person WHERE Fornavn = 'Alex'), (SELECT AdresseID FROM Adresse WHERE VejNavn = 'Grønnegade'))

--vælg alle fra typen familie
SELECT * FROM PERSON WHERE type = 'Familie'

--Vis fornavn og efternavn, for dem som bor på AdresseID 1
SELECT ForNavn, EfterNavn FROM Person INNER JOIN bor ON (Person.PersonID = bor.PersonID)
									  INNER JOIN Adresse ON(bor.AdresseID = Adresse.AdresseID)
WHERE Adresse.AdresseID = 1


--vis telefon og tilhørende navne
SELECT * FROM Person INNER JOIN Telefon ON (Person.PersonID = Telefon.PersonID)


--vis ALT!
SELECT * FROM bor INNER JOIN Adresse ON(bor.AdresseID = Adresse.AdresseID)
				  INNER JOIN Person ON(bor.PersonID = Person.PersonID)
				  INNER JOIN Telefon ON(Person.PersonID = Telefon.PersonID)


