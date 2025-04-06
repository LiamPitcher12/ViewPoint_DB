create.sql

 

CREATE TABLE SearchResult

(

  SearchID INT NOT NULL,

  CustomerID INT NOT NULL,

  AgentID INT NOT NULL,

  Query INT NOT NULL,

  SearchDate INT NOT NULL,

  FilterCriteria INT NOT NULL,

  PRIMARY KEY (SearchID)

);

 

CREATE TABLE Property

(

  PropertyID INT NOT NULL,

  PropertyType INT NOT NULL,

  ListingDate INT NOT NULL,

  PropertyStatus INT NOT NULL,

  AskingPrice INT NOT NULL,

  Address NODATATYPE NOT NULL,

  Size INT NOT NULL,

  PRIMARY KEY (PropertyID)

);

 

CREATE TABLE Location

(

  City INT NOT NULL,

  Neighbourhood INT NOT NULL,

  Postal_Code INT NOT NULL,

  Schools INT NOT NULL,

  Address INT NOT NULL,

  PropertyID INT NOT NULL,

  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)

);

 

CREATE TABLE Customer

(

  CustomerID INT NOT NULL,

  CustName INT NOT NULL,

  Phone INT NOT NULL,

  Email INT NOT NULL,

  SearchID INT NOT NULL,

  PRIMARY KEY (CustomerID),

  FOREIGN KEY (SearchID) REFERENCES SearchResult(SearchID)

);

 

CREATE TABLE Agent

(

  AgentID INT NOT NULL,

  AgentName INT NOT NULL,

  AgencyName INT NOT NULL,

  Email INT NOT NULL,

  Phone INT NOT NULL,

  LicenseNo INT NOT NULL,

  PropertyID INT NOT NULL,

  SearchID INT NOT NULL,

  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),

  FOREIGN KEY (SearchID) REFERENCES SearchResult(SearchID)

);

 

CREATE TABLE Inspection

(

  InspectionID INT NOT NULL,

  PropertyID INT NOT NULL,

  InspectorAgency INT NOT NULL,

  InspectionType INT NOT NULL,

  Results INT NOT NULL,

  PropertyID INT NOT NULL,

  PRIMARY KEY (InspectionID),

  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)

);

 

CREATE TABLE Views

(

  ViewDate INT NOT NULL,

  CustomerID INT NOT NULL,

  PropertyID INT NOT NULL,

  CustomerID INT NOT NULL,

  PropertyID INT NOT NULL,

  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),

  FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID)

);
