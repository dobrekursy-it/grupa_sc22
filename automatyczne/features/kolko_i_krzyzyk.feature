Feature: Kółko i krzyżyk
  Scenario: Klikanie w kafelek
    Given uzytkownik uruchomil
    When uzytkownik kilknal w "gorny" "prawy" kafalek
    Then kafalek "gorny" "prawy" jest "kolkiem"

  Scenario: Klikanie w dwa kafeleki
    Given uzytkownik uruchomil
    When uzytkownik kilknal w "gorny" "prawy" kafalek
    When uzytkownik kilknal w "srodkowy" "srodkowy" kafalek
    Then kafalek "srodkowy" "srodkowy" jest "krzyzykiem"

  Scenario: Klikanie w dwa kafeleki
    Given uzytkownik uruchomil
    When uzytkownik kilknal w "gorny" "prawy" kafalek
    When uzytkownik kilknal w "srodkowy" "srodkowy" kafalek
    When uzytkownik kilknal w "srodkowy" "prawy" kafalek
    When uzytkownik kilknal w "srodkowy" "lewy" kafalek
    When uzytkownik kilknal w "dolny" "prawy" kafalek
    Then kolko wygralo
