CREATE TABLE Customer (
	id LONG
	name STRING
	address STRING
	email STRING
	credit DOUBLE
	newsletter BOOLEAN
	PRIMARY KEY(id)
);

CREATE TABLE Subscription (
	id LONG
	startingData DATE
	endingDate DATE
	monthlyCost DOUBLE
	subscriptionType STRING
	PRIMARY KEY(id)
);

CREATE TABLE Collection (
	id LONG
	name STRING
	PRIMARY KEY(id)
);

CREATE TABLE Rent (
	id LONG
	startingDate DATE
	endingDate DATE
	return BOOLEAN
	PRIMARY KEY(id)
);

CREATE TABLE pays_a (
	Customer LONG
	Subscription LONG
	PRIMARY KEY(Customer, Subscription)
	FOREIGN KEY(Customer) REFERENCES Customer(id)
	FOREIGN KEY(Subscription) REFERENCES Subscription(id)
);



CREATE TABLE has (
	Customer LONG
	Collection LONG
	PRIMARY KEY(Customer, Collection)
	FOREIGN KEY(Customer) REFERENCES Customer(id)
	FOREIGN KEY(Collection) REFERENCES Collection(id)
);

CREATE TABLE belongs_to (
	ArtPiece LONG
	Subscription LONG
	PRIMARY KEY(ArtPiece, Subscription)
	FOREIGN KEY(ArtPiece) REFERENCES ArtPiece(id)
	FOREIGN KEY(Subscription) REFERENCES Subscription(id)
);

CREATE TABLE ArtPiece (
id LONG
name STRING
artist STRING
heigth DOUBLE
width DOUBLE
style STRING
technique STRING
orientation STRING
price DOUBLE
rating DOUBLE
PRIMARY KEY(id)
);

CREATE TABLE Series (
id LONG
name STRING
artist STRING
PRIMARY KEY(id)
);

CREATE TABLE Reservation(
id LONG	
startingDate DATE
endingDate DATE
deliver BOOLEAN
PRIMARY KEY(id)
);

CREATE TABLE is_part_of (
series LONG
artPiece LONG
PRIMARY KEY(Series, ArtPiece)
FOREIGN KEY(series) REFERENCES Series(id)
FOREIGN KEY(artPiece) REFERENCES ArtPiece(id)
);