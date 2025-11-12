# 💾 System Bazodanowy dla Firmy Spedycyjnej (TSL)

## 🌟 Opis Projektu

Kompletny projekt bazy danych, stworzony jako praca zaliczeniowa na kursie **"Bazy Danych"** na Politechnice Gdańskiej. [cite_start]Projekt symuluje realne procesy logistyczne i spedycyjne, mając na celu **optymalizację zarządzania dostawami, przydział zasobów oraz poprawę komunikacji** między kluczowymi użytkownikami (Nadawca, Odbiorca, Spedytor, Kierowca)[cite: 4, 6, 8].

Jest to gotowe do wdrożenia rozwiązanie, które modeluje kluczowe encje i relacje w branży Transport-Spedycja-Logistyka (TSL).

## 🎯 Cele Projektu

* [cite_start]**Modelowanie Danych:** Stworzenie logicznego i spójnego modelu relacyjnego, zdolnego obsłużyć kluczowe procesy w firmie spedycyjnej ("Spedex")[cite: 2, 4].
* **Integralność Danych:** Zapewnienie poprawności i spójności danych poprzez wykorzystanie kluczy obcych i mechanizmów integralności referencyjnej.
* [cite_start]**Wsparcie Logistyczne:** Przygotowanie bazy pod zapytania i scenariusze kluczowe dla zarządzania transportem (np. śledzenie dostaw, przydział kierowców i pojazdów)[cite: 11, 12, 13].

## 🛠️ Technologie i Wdrożenie

* **Język:** SQL (projekt zgodny ze standardem, zaimplementowany w T-SQL - Microsoft SQL Server / Azure SQL).
* **Modelowanie:** Diagram ERD (Entity-Relationship Diagram).
* **Narzędzia:** Git.

## 🧱 Struktura Bazy Danych

Baza modeluje 9 głównych encji powiązanych złożonymi relacjami (m.in. relacje 1:N i IS\_A - dziedziczenie):

1.  **Firma** (modeluje Nadawców i Odbiorców).
2.  **Pracownik** (modeluje Spedytorów i Kierowców - **relacja dziedziczenia IS\_A**).
3.  **Ladunek**.
4.  **Pojazd**.
5.  **List Przewozowy** (centralna encja łącząca Nadawcę, Odbiorcę, Ładunek, Spedytora i Pojazd).

### Kluczowe Elementy Projektu

* [cite_start]**Model Dziedziczenia:** Zastosowanie relacji **IS\_A** do modelowania specjalizacji (np. `Kierowca` jako podklasa `Pracownika`)[cite: 59, 123].
* **Integralność Kaskadowa:** Implementacja ograniczeń `ON DELETE CASCADE` w celu automatycznego zarządzania danymi powiązanymi, co jest kluczowe dla utrzymywalności i automatyzacji.
* [cite_start]**Model 1:1:** Relacja między `Ładunek` a `List_Przewozowy` zapewniająca unikalną dokumentację dla każdej przesyłki[cite: 100].

## 📂 Zawartość Repozytorium

Repozytorium zawiera kompletne skrypty niezbędne do wdrożenia i testowania bazy danych:

| Nazwa Pliku | Opis |
| :--- | :--- |
| `firma.png` | Graficzna reprezentacja modelu danych (Diagram ERD). |
| `BazyProjket.pdf` | Pełna dokumentacja projektowa (Analiza, Scenariusze, Opis Encji i Związków). |
| `tworzenie_tabel.sql` | Skrypt DDL: tworzenie wszystkich tabel i definiowanie kluczy podstawowych i obcych. |
| `wypelnienie_tabeli.sql` | Skrypt DML: dane testowe do demonstracji funkcjonalności zapytań. |
| `kaskadowe_usuwanie.sql` | Skrypt demonstracji zaawansowanych mechanizmów integralności (`ON DELETE CASCADE`). |
| `usuwanie_obiektow.sql` | Skrypt do czyszczenia bazy przed ponownym wdrożeniem. |

## ⚙️ Jak Wdrożyć

1.  Uruchom środowisko bazy danych (np. SQL Server Management Studio lub DBeaver z podłączoną bazą SQL).
2.  Uruchom skrypt `tworzenie_tabel.sql` (DDL).
3.  Uruchom skrypt `wypelnienie_tabeli.sql` (DML), aby wypełnić bazy danymi testowymi.
4.  [cite_start]Wykonaj zapytania testowe opisane w sekcji **Scenariusze i zapytania** w pliku `BazyProjket.pdf`[cite: 10, 14].

---
*Autor: Franciszek Borys*
*Profil GitHub: FranBory*
