CREATE TABLE Agents(
	Id SERIAL PRIMARY KEY,
	FirstName VARCHAR NOT NULL,
	LastName VARCHAR NOT NULL,
	Patronymic VARCHAR NOT NULL,
	Login VARCHAR NOT NULL,
	Password VARCHAR NOT NULL);

CREATE TABLE Clients(
	Id SERIAL PRIMARY KEY,
	FirstName VARCHAR NOT NULL,
	LastName VARCHAR NOT NULL,
	Patronymic VARCHAR NOT NULL,
	Phone VARCHAR NOT NULL,
	Email VARCHAR NOT NULL);
 
CREATE TABLE Deals(
	Id SERIAL PRIMARY KEY,
	IdRealEstate int NOT NULL,
	IdClient int NOT NULL,
	IdAgent int NOT NULL,
	Date date NOT NULL);
	
CREATE TABLE RealEstates(
	Id SERIAL PRIMARY KEY,
	Address VARCHAR NOT NULL,
	Price decimal(18, 2) NOT NULL,
	NumberOfRooms int NOT NULL,
	TotalArea float NOT NULL,
	TotalFloors int NOT NULL,
	Latitude VARCHAR NOT NULL,
	Longitude VARCHAR NOT NULL,
	Photo VARCHAR NULL);
	
CREATE TABLE Requests(
	Id SERIAL PRIMARY KEY,
	Name VARCHAR NOT NULL,
	Phone VARCHAR NOT NULL,
	Email VARCHAR NOT NULL,
	Status bit NOT NULL,
	IdRealEstate int NOT NULL,
	RequestDate date NOT NULL);

INSERT INTO Agents (FirstName, LastName, Patronymic, Login, Password) VALUES ('andrey', 'andrey', 'andrey', '1', '1');

INSERT INTO clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('Дорофеев', 'Андрей', 'Вальеревич', '79325458703', 'andreyd@gmailcom');
INSERT INTO Clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('32432', '234324', '41231', '42', '2334432');
INSERT INTO Clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('23423', '123', '12314', '31234531', '23422312');
INSERT INTO Clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('123', 'huy', '123', '232', '1231');
INSERT INTO Clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('фывфы', 'фыв', 'вфыв', 'фыв', 'вфыв');
INSERT INTO Clients (FirstName, LastName, Patronymic, Phone, Email) VALUES ('фывафыва', 'ыва', 'фыва', 'фывафы', 'фыва');

INSERT INTO RealEstates (Address, Price, NumberOfRooms, TotalArea, TotalFloors, Latitude, Longitude, Photo) VALUES ('sda', CAST(123100 AS Decimal(18, 2)), 213123, 123, 4324, '4502089995628897', '38590000', NULL);
INSERT INTO RealEstates (Address, Price, NumberOfRooms, TotalArea, TotalFloors, Latitude, Longitude, Photo) VALUES ('asda', CAST(1231200 AS Decimal(18, 2)), 3123123, 31231, 24232312, '4501270806427422', '38590000', NULL);
INSERT INTO RealEstates (Address, Price, NumberOfRooms, TotalArea, TotalFloors, Latitude, Longitude, Photo) VALUES ('asd', CAST(11100 AS Decimal(18, 2)), 123, 123124, 3424, '4502114642486776', '38590000', NULL);

INSERT INTO Requests (Name, Phone, Email, Status, IdRealEstate, RequestDate) VALUES ('Георгий', '79180351122', 'georgiyi@gmailcom', '0', 1, '2024-06-08');
INSERT INTO Requests (Name, Phone, Email, Status, IdRealEstate, RequestDate) VALUES ('Андрей', '79531129052', 'andreyd@mailru', '1', 1, '2024-06-08');
ALTER TABLE requests ALTER COLUMN RequestDate SET DEFAULT ('0001-01-01');

