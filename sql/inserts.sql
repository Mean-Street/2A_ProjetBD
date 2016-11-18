-- Subscribers #################################################################
INSERT INTO Subscriber (CreditCard, LastName, FirstName, Birthdate, Address) 
VALUES (001, 'Mouchet', 'Alexandre', TO_DATE('17/03/1993', 'dd/mm/yyyy'), 'Paris');
INSERT INTO Subscriber (CreditCard, LastName, FirstName, Birthdate, Address) 
VALUES (002, 'Carre', 'Ludovic', TO_DATE('08/07/1995', 'dd/mm/yyyy'), 'Marseille');
INSERT INTO Subscriber (CreditCard, LastName, FirstName, Birthdate, Address) 
VALUES (003, 'Lefoulon', 'Vincent', TO_DATE('24/04/1994', 'dd/mm/yyyy'), 'Paris');
INSERT INTO Subscriber (CreditCard, LastName, FirstName, Birthdate, Address) 
VALUES (004, 'Deloche', 'Maxime', TO_DATE('13/11/1996', 'dd/mm/yyyy'), 'Lyon');

-- VehicleClass ################################################################
INSERT INTO VehicleClass(ClassName, MaxDuration, HourlyPrice, Deposit)
VALUES ('VoitureElectrique', 96, 8, 800);
INSERT INTO VehicleClass(ClassName, MaxDuration, HourlyPrice, Deposit)
VALUES ('Velo', 72, 3, 50);
INSERT INTO VehicleClass(ClassName, MaxDuration, HourlyPrice, Deposit)
VALUES ('VeloElectrique', 72, 6, 400);
INSERT INTO VehicleClass(ClassName, MaxDuration, HourlyPrice, Deposit)
VALUES ('VeloRemorque', 72, 7, 200);
INSERT INTO VehicleClass(ClassName, MaxDuration, HourlyPrice, Deposit)
VALUES ('Utilitaire', 96, 10, 1000);

-- Vehicle #####################################################################
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (1, 'VeloElectrique', 1);
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (2, 'Velo', 1);
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (3, 'Velo', 1);
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (4, 'VoitureElectrique', 4);
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (5, 'Utilitaire', 8);
INSERT INTO Vehicle (IdVehicle, ClassName, Seats) VALUES (6, 'VeloElectrique', 1);

-- Station #####################################################################
INSERT INTO Station (StationName, StationAddress) VALUES ('Chatelet', 'Paris');
INSERT INTO Station (StationName, StationAddress) VALUES ('Austerlitz', 'Paris');
INSERT INTO Station (StationName, StationAddress) VALUES ('JeanJaures', 'Lyon');

-- Location ####################################################################
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (1, 'JeanJaures', 001, 2, TO_DATE('11/11/2016 05:18', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (2, 'Austerlitz', 004, 5, TO_DATE('5/11/2016 20:39', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (3, 'Chatelet', 001, 4, TO_DATE('16/11/2016 15:14', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (4, 'Austerlitz', 002, 5, TO_DATE('15/11/2016 12:52', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (5, 'Austerlitz', 004, 1, TO_DATE('17/11/2016 08:05', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (6, 'Chatelet', 002, 1, TO_DATE('13/03/2015 17:25', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (7, 'Austerlitz', 003, 2, TO_DATE('05/09/2015 16:41', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (8, 'JeanJaures', 001, 6, TO_DATE('01/12/2015 20:26', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (9, 'Chatelet', 004, 3, TO_DATE('11/01/2005 11:31', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (10, 'Austerlitz', 002, 5, TO_DATE('29/08/2006 16:55', 'dd/mm/yyyy hh24:mi'));
INSERT INTO Location (IdLocation, StartStationName, CreditCard, IdVehicle, StartDate)
VALUES (11, 'JeanJaures', 002, 2, TO_DATE('08/09/2015 12:17', 'dd/mm/yyyy hh24:mi'));

-- UserClassIllimitedRate ######################################################
INSERT INTO UserClassIllimitedRate (CreditCard, ClassName, Duration, StartDate, Price)
VALUES (002, 'Velo', 365, TO_DATE('07/07/2016 21:45', 'dd/mm/yyyy hh24:mi'), 200);

-- UserClassLimitedRate ########################################################
INSERT INTO UserClassLimitedRate (CreditCard, ClassName, NbLocation, Price)
VALUES (004, 'Utilitaire', 12, 100);

-- StationVehicle ##############################################################
INSERT INTO StationVehicle (IdVehicle, StationName) VALUES (2, 'Chatelet');
INSERT INTO StationVehicle (IdVehicle, StationName) VALUES (3, 'JeanJaures');
INSERT INTO StationVehicle (IdVehicle, StationName) VALUES (6, 'JeanJaures');

-- StationLocation #############################################################
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (1, 'Austerlitz', TO_DATE('12/11/2016 17:56', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (2, 'Austerlitz', TO_DATE('07/11/2016 15:26', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (6, 'JeanJaures', TO_DATE('15/03/2015 21:40', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (7, 'Chatelet', TO_DATE('05/09/2015 18:30', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (8, 'Austerlitz', TO_DATE('05/12/2015 18:02', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (9, 'Austerlitz', TO_DATE('13/01/2005 11:21', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (10, 'JeanJaures', TO_DATE('30/08/2006 21:21', 'dd/mm/yyyy hh24:mi'));
INSERT INTO StationLocation (IdLocation, EndStationName, EndDate)
VALUES (11, 'Chatelet', TO_DATE('10/09/2015 18:23', 'dd/mm/yyyy hh24:mi'));

-- StationClass ################################################################
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Chatelet', 'VoitureElectrique', 10);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Chatelet', 'Velo', 5);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Chatelet', 'VeloElectrique', 3);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Chatelet', 'VeloRemorque', 7);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Chatelet', 'Utilitaire', 9);

INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Austerlitz', 'VoitureElectrique', 5);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Austerlitz', 'Velo', 3);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Austerlitz', 'VeloElectrique', 4);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Austerlitz', 'VeloRemorque', 6);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('Austerlitz', 'Utilitaire', 10);

INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('JeanJaures', 'VoitureElectrique', 7);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('JeanJaures', 'Velo', 3);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('JeanJaures', 'VeloElectrique', 4);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('JeanJaures', 'VeloRemorque', 10);
INSERT INTO StationClass (StationName, ClassName, MaxSpots)
VALUES ('JeanJaures', 'Utilitaire', 8);

