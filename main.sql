 CREATE TABLE Company_Landlord (
    Companyid int NOT NULL,
    Companyname varchar(255) NOT NULL,
    PRIMARY KEY (Companyid)
);
   
CREATE TABLE Tenant (
    Tenantid int NOT NULL,
    Name varchar(255) NOT NULL,
    Address varchar(255) NOT NULL,
    Phone varchar(255) NOT NULL,
    PRIMARY KEY (Tenantid)
);
   
CREATE TABLE Lease (
    Leaseid int NOT NULL,
    Apartmentid int NOT NULL,
    Tenantid int NOT NULL,
    Startdate date NOT NULL,
    Enddate date NOT NULL,
    PRIMARY KEY (Leaseid),
    FOREIGN KEY (Apartmentid) REFERENCES Apartment_House(Apartmentid)
    FOREIGN KEY (Tenantid) REFERENCES Tenant(Tenantid)
);

CREATE TABLE Apartment_House (
    Apartmentid int NOT NULL,
    Companyid int NOT NULL,
    Squarefeet int NOT NULL,
    Apartmentaddress varchar(255) NOT NULL,
    Apartmentnumber varchar(255) NOT NULL,
  FOREIGN KEY (Companyid) REFERENCES Company_Landlord(Companyid)

);
   
INSERT INTO Company_Landlord 
VALUES 
  (1,'Chartwells'),
  (2,'HousingInc'),
  (3,'LiveForLess'), 
  (4,'TheShores');

INSERT INTO Tenant 
VALUES 
  (1,'JohnDoe','2341BuffaloDr,Lakeland, FL 33800','435-124-4235'),
  (2,'Steven Jones','2345 Raceway St, Riverview, FL 33568','234-534-2634'),
  (3,'Rachel King','6543 Jacaranda St, Gibsonton, FL 33567','123-543-6434'),
  (4,'Jimmy Swift','9865 Summerfield Rd, Miami, FL 23142','987-212-4536');

INSERT INTO Lease 
VALUES 
  (1,1,1,'2021-07-12','2022-06-12'),
  (2,2,2,'2021-07-21','2022-07-20'),
  (3,3,3,'2021-06-15','2022-06-14'),
  (4,4,4,'2021-05-14','2022-05-14');
   
INSERT INTO Apartment_House 
VALUES 
  (1,1,1380,'100 Lake Morton Dr, Lakeland, FL 33801',543),
  (2,2,900,'4141 US Hwy 98 N, Lakeland, FL 33809',234),
  (3,3,1200,'219 N Massachusetts Ave, Lakeland, FL 33801', 567),
  (4,4,700,'1475 Walt Loop Rd, Lakeland, FL 33809',174);
   
SELECT * FROM Company_Landlord ;
SELECT * FROM Tenant ;
SELECT * FROM Lease ;
SELECT * FROM Apartment_House ;