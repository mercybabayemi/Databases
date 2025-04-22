USE lagos_riding_sharing_analytics;

CREATE TABLE Drivers(
	DriverID	INT		NOT NULL	auto_increment,
    Name	VARCHAR(50)		NOT NULL,
    Rating	DECIMAL(1.1)	NOT NULL,
    TotalRides	INT		NOT NULL,
    CONSTRAINT		DriverIDPK		PRIMARY KEY (DriverID)
);

CREATE TABLE Riders(
	RiderID		INT		NOT NULL  auto_increment,
    Name	VARCHAR(50)		NOT NULL,
    City	VARCHAR(50)		NOT NULL,
    CONSTRAINT RidersPK		PRIMARY KEY(RiderID)
);

CREATE TABLE Rides(
	RideID	INT		NOT NULL	auto_increment,
    DriverID	INT		NOT NULL,
    RiderID		INT		NOT NULL,
    Fare	INT		NOT NULL,
    Rating	DECIMAL(1.1)	NOT NULL,
    DistanceKM	INT	NOT NULL,
    CONSTRAINT RideIDPK PRIMARY KEY(RideID),
    CONSTRAINT DriverIDFK	FOREIGN KEY(DriverID)	REFERENCES	Drivers(DriverId),
    CONSTRAINT	RiderIDFK	FOREIGN KEY(RiderID) REFERENCES	Riders(RiderID)
);

CREATE TABLE Payments(
	PaymentID	INT		NOT NULL	auto_increment,
    RideID		INT		NOT NULL,
    Amount		INT		NOT NULL,
    PaymentMethod	VARCHAR(20)		NOT NULL,
    CONSTRAINT	PaymentIDFK	PRIMARY KEY(PaymentID),
    CONSTRAINT	RideIDFK	FOREIGN KEY(RideId)	REFERENCES	Rides(RideID)
);