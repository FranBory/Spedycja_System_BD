USE spedycja;
GO 

-- Usuwanie istniej¹cych ograniczeñ
ALTER TABLE Ladunek
DROP CONSTRAINT FK_Ladunek_Nadawca;

ALTER TABLE List_Przewozowy
DROP CONSTRAINT FK_List_Przewozowy_Ladunek;

-- Dodanie nowych ograniczeñ z kaskadowym usuwaniem
ALTER TABLE Ladunek
ADD CONSTRAINT FK_Ladunek_Nadawca
FOREIGN KEY (id_nadawcy) REFERENCES Nadawca(id_nadawcy)
ON DELETE CASCADE;

ALTER TABLE List_Przewozowy
ADD CONSTRAINT FK_List_Przewozowy_Ladunek
FOREIGN KEY (nr_ladunku) REFERENCES Ladunek(nr_ladunku)
ON DELETE CASCADE;
GO
DELETE FROM Nadawca
WHERE id_nadawcy = '2137'
GO
