# ViewPoint_DB
INSERT INTO Customer (CustomerID, CustName, Phone, Email, SearchID) VALUES
(1, 'John Doe', '123-456-7890', 'johndoe@email.com', 1),
(2, 'Jane Smith', '987-654-3210', 'janesmith@email.com', 2);
GO
INSERT INTO SearchResult (SearchID, CustomerID, AgentID, Query, SearchDate, FilterCriteria) VALUES
(1, 1, 1, '3-bedroom house in downtown', '2024-03-25', 'Price < 500000'),
(2, 2, 2, '2-bedroom condo near park', '2024-03-26', 'Price < 400000');
GO
INSERT INTO Agent (AgentID, AgentName, AgencyName, Email, Phone, LicenseNo, PropertyID, SearchID) VALUES
(1, 'Alice Johnson', 'Best Realty', 'alice@email.com', '555-1234', 'A12345', 1, 1),
(2, 'Bob Williams', 'Home Finders', 'bob@email.com', '555-5678', 'B67890', 2, 2);
GO
INSERT INTO Property (PropertyID, PropertyType, ListingDate, PropertyStatus, AskingPrice, Address, Size) VALUES
(1, 'House', '2024-03-20', 'Available', 450000, '123 Main St', 1500),
(2, 'Condo', '2024-03-22', 'Pending', 380000, '456 Park Ave', 900);
GO
INSERT INTO Location (Address, City, PostalCode, Neighbourhood, Schools, PropertyID) VALUES
('123 Main St', 'Halifax', 'B3K1X5', 'Downtown', 'Central High', 1),
('456 Park Ave', 'Toronto', 'M5V2T6', 'Park District', 'Westview Academy', 2);
GO
INSERT INTO Inspection (InspectionID, PropertyID, InspectorAgency, InspectionType, Results) VALUES
(1, 1, 'Home Inspectors Inc.', 'General', 'Passed'),
(2, 2, 'Quality Inspections', 'Structural', 'Minor Issues');
GO
INSERT INTO Views (ViewDate, CustomerID, PropertyID) VALUES
('2024-03-28', 1, 1),
('2024-03-29', 2, 2);
GO
