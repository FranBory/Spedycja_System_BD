USE spedycja;
GO 

IF OBJECT_ID('List_przewozowy', 'U') IS NOT NULL
    DROP TABLE List_przewozowy;

IF OBJECT_ID('Ladunek', 'U') IS NOT NULL
    DROP TABLE Ladunek;

IF OBJECT_ID('Pojazd', 'U') IS NOT NULL
    DROP TABLE Pojazd;

IF OBJECT_ID('Kierowca', 'U') IS NOT NULL
    DROP TABLE Kierowca;

IF OBJECT_ID('Pracownik', 'U') IS NOT NULL
    DROP TABLE Pracownik;

IF OBJECT_ID('Spedytor_logistyczny', 'U') IS NOT NULL
    DROP TABLE Spedytor_logistyczny;

IF OBJECT_ID('Odbiorca', 'U') IS NOT NULL
    DROP TABLE Odbiorca;

IF OBJECT_ID('Nadawca', 'U') IS NOT NULL
    DROP TABLE Nadawca;

IF OBJECT_ID('Firma', 'U') IS NOT NULL
    DROP TABLE Firma;
