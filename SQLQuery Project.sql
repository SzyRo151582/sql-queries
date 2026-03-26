CREATE DATABASE Project;

USE Project;

CREATE TABLE Products
(ID INT NOT NULL,
TITLE NVARCHAR (30) NOT NULL,
AUTHOR NVARCHAR (30) NOT NULL,
GENRE NVARCHAR (20) NOT NULL,
PRICE INT NOT NULL,
);

ALTER TABLE Products ADD CONSTRAINT "ID_PRODUCT" PRIMARY KEY (ID);

INSERT INTO Products VALUES
(1, 'M�skie Granie 2021', 'M�skie Granie Orkiestra 2021', 'Pop', 49),
(2, 'Irenka', 'Sanah', 'Pop', 39),
(3, 'Kr�lowa Dram', 'Sanah', 'Pop', 39),
(4, 'Regnum', 'Natalia Nykiel', 'Pop', 43),
(5, 'Ciche Dni', 'Kasia Sochacka', 'Pop', 44),
(6, 'Pie�ni Wsp�czesne', 'Zesp� �l�sk', 'Folk', 45),
(7, 'Ministory', 'Kasia Sochacka', 'Pop', 29),
(8, 'Z Archiwum X2', 'Dwa S�awy', 'Hip Hop', 44),
(9, 'M�ody Matczak', 'Mata', 'Rap', 45),
(10, 'Maanam. Z�ota Kolekcja', 'Maanam', 'Rock', 23);

CREATE TABLE Customers
(ID INT NOT NULL,
FIRSTNAME NVARCHAR (30) NOT NULL,
SURNAME NVARCHAR (30) NOT NULL,
STREET NVARCHAR (30) NOT NULL,
NUM NVARCHAR (10) NOT NULL,
ZIP_CODE NVARCHAR (10) NOT NULL,
CITY NVARCHAR (20) NOT NULL,
COUNTRY NVARCHAR (20) NOT NULL,
E_MAIL NVARCHAR (30) NOT NULL,
PHONE NVARCHAR (15) NOT NULL,
);

ALTER TABLE Customers ADD CONSTRAINT "ID_CLIENT" PRIMARY KEY (ID);

INSERT INTO Customers VALUES
(1, 'Jan', 'Kowalski', 'Miodowa', '32', '50-238', 'Katowice', 'Polska', 'jan.kowalski@o2.pl', '511754323'),
(2, 'Adrianna', 'Nowak', 'Aresa', '11', '34-285', 'Zielona G�ra', 'Polska', 'anowak@wp.pl', '684112670'),
(3, 'Kamil', 'Maciejczak', 'My�liborska', '2A', '81-218', 'Olsztyn', 'Polska', 'k.maciejczak@gmail.com', '+(48)125664279'),
(4, 'Marcin', 'Ko�mierski', 'Lawendowa', '112', '51-214', 'Szczecin', 'Polska', 'kozmier89@onet.pl', '512689925'),
(5, 'Adrian', 'Wuja', 'D�uga', '18', '80-266', 'Gda�sk', 'Polska', 'wujek12@interia.pl', '618995336'),
(6, 'Alicja', '�opata', 'Ziemna', '65/12', '23-311', 'Wroc�aw', 'Polska', 'alicjaxd@onet.pl', '598672115'),
(7, 'Zofia', 'Barniecka', 'Ilo�ska', '37', '28-259', 'Pozna�', 'Polska', 'barnieckazofia@yahoo.com', '509286373'),
(8, 'Danuta', 'Schwester', 'Jungenstrasse', '58C', '82041', 'Monachium', 'Niemcy', 'bruder@gmail.com', '+(49)278645008'),
(9, 'Hubert', 'Ba�ski', 'Lito�ciwa', '18', '67-257', 'Rzesz�w', 'Polska', 'hubanski@wp.pl', '+(58)548992003'),
(10, 'Olaf', 'Hrabecka', 'Pod Jankovem', '285', '104 00', 'Praga', 'Czechy', 'hrabecka-olaf@gmail.com', '+(420)516337801');

CREATE TABLE Orders
(ID INT NOT NULL,
ID_CUSTOMER INT NOT NULL,
ID_ALBUM INT NOT NULL,
DISCS_NUMBER INT NOT NULL,
DISC_PRICE INT NOT NULL,
POSTAGE_COST INT NOT NULL,
TOTAL_COST INT NOT NULL,
);

ALTER TABLE Orders ADD CONSTRAINT "ID_ORDER" PRIMARY KEY (ID);
ALTER TABLE Orders ADD CONSTRAINT "FK_CUSTOMER" FOREIGN KEY (ID_CUSTOMER) REFERENCES Clients (ID);
ALTER TABLE Orders ADD CONSTRAINT "FK_ALBUM" FOREIGN KEY (ID_ALBUM) REFERENCES Products (ID);

INSERT INTO Orders VALUES
(1, 1, 3, 1, 49, 20, 69),
(2, 2, 8, 1, 44, 20, 64),
(3, 3, 2, 2, 78, 20, 98),
(4, 4, 5, 3, 132, 20, 152),
(5, 5, 4, 1, 43, 20, 63),
(6, 6, 7, 2, 58, 20, 78),
(7, 7, 8, 2, 88, 20, 108),
(8, 8, 1, 10, 490, 30, 520),
(9, 9, 5, 5, 220, 20, 240),
(10, 10, 6, 2, 90, 30, 120),
(11, 2, 10, 2, 46, 20, 66),
(12, 3, 9, 1, 45, 20, 65),
(13, 4, 1, 1, 49, 20, 69),
(14, 5, 3, 1, 49, 20, 69),
(15, 9, 2, 2, 78, 20, 98);

CREATE TABLE Stock
(ID INT NOT NULL,
TITLE NVARCHAR (30) NOT NULL,
AUTHOR NVARCHAR (30) NOT NULL,
PRODUCED INT NOT NULL,
IN_STOCK INT NOT NULL,
);

ALTER TABLE Stock ADD CONSTRAINT "ID_STATE" PRIMARY KEY (ID);

INSERT INTO Stock VALUES
(1, 'M�skie Granie 2021', 'M�skie Granie Orkiestra 2021', 20000, 2399),
(2, 'Irenka', 'Sanah', 30000, 8456),
(3, 'Kr�lowa Dram', 'Sanah', 30000, 5518),
(4, 'Regnum', 'Natalia Nykiel', 12000, 7677),
(5, 'Ciche Dni', 'Kasia Sochacka', 10000, 4112),
(6, 'Pie�ni Wsp�czesne', 'Zesp� �l�sk', 8000, 6600),
(7, 'Ministory', 'Kasia Sochacka', 5000, 4250),
(8, 'Z Archiwum X2', 'Dwa S�awy', 6000, 4416),
(9, 'M�ody Matczak', 'Mata', 25000, 2014),
(10, 'Maanam. Z�ota Kolekcja', 'Maanam', 15000, 947);

SELECT * FROM dbo.Orders,
dbo.Products
WHERE ID_ALBUM = Products.ID;

SELECT * FROM dbo.Orders JOIN dbo.Customers ON
dbo.Orders.ID_CUSTOMER = dbo.Customers.ID;