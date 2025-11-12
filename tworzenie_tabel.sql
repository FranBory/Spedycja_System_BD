USE spedycja;
GO 

CREATE TABLE Firma (
    NIP CHAR(10) PRIMARY KEY,
    nazwa VARCHAR(100),
    adres VARCHAR(255),
    tel VARCHAR(15),
    email VARCHAR(100),
    data_zalozenia_konta DATE
);

CREATE TABLE Pracownik (
    id_pracownika INT PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    tel VARCHAR(15)
);

CREATE TABLE Nadawca (
    id_nadawcy INT PRIMARY KEY
);

CREATE TABLE Odbiorca (
    id_odbiorcy INT PRIMARY KEY
);

CREATE TABLE Spedytor_Logistyczny (
    id_spedytora INT PRIMARY KEY
);

CREATE TABLE Pojazd (
    VIN CHAR(17) PRIMARY KEY,
    ladownosc INT,
    typ_ladunku VARCHAR(50),
    pojemnosc FLOAT
);

CREATE TABLE Ladunek (
    nr_ladunku INT PRIMARY KEY,
    typ VARCHAR(50),
    ilosc INT,
    waga FLOAT,
    objetosc FLOAT,
    data_nadania DATE,
    id_nadawcy INT,
    FOREIGN KEY (id_nadawcy) REFERENCES Nadawca(id_nadawcy)
);

CREATE TABLE List_Przewozowy (
    nr_listu INT PRIMARY KEY,
    data_zaladunku DATE,
    data_rozladunku DATE,
    miejsce_zaladunku VARCHAR(255),
    miejsce_rozladunku VARCHAR(255),
    nr_ladunku INT,
    id_spedytora INT,
    id_odbiorcy INT,
    VIN CHAR(17),
    FOREIGN KEY (nr_ladunku) REFERENCES Ladunek(nr_ladunku),
    FOREIGN KEY (id_spedytora) REFERENCES Spedytor_Logistyczny(id_spedytora),
    FOREIGN KEY (id_odbiorcy) REFERENCES Odbiorca(id_odbiorcy),
    FOREIGN KEY (VIN) REFERENCES Pojazd(VIN)
);

CREATE TABLE Kierowca (
    id_kierowcy INT PRIMARY KEY,
    nr_prawa_jazdy VARCHAR(20),
    uprawnienia_na_pojazd VARCHAR(10),
    FOREIGN KEY (id_kierowcy) REFERENCES Pracownik(id_pracownika)
);
