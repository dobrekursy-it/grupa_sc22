Feature: Kółko i krzyżyk

  Scenario: Wpisanie kołka
    Given gracz uruchomił grę
    When gracz klika w "lewy" kafelek z "górnego" rzędu
    Then wpisano "kółko" w "lewy" kafelek z "górnego" rzędu

  Scenario: Wpisanie krzyżyka po wpisaniu kółka
    Given gracz uruchomił grę
    When gracz klika w "lewy" kafelek z "górnego" rzędu
    And gracz klika w "środkowy" kafelek z "środkowego" rzędu
    Then wpisano "krzyżyk" w "środkowy" kafelek z "środkowego" rzędu

  Scenario: Kółko wygrywa
    Given gracz uruchomił grę
    When gracz klika w "lewy" kafelek z "górnego" rzędu
    And gracz klika w "środkowy" kafelek z "górnego" rzędu
    And gracz klika w "środkowy" kafelek z "środkowego" rzędu
    And gracz klika w "prawy" kafelek z "środkowego" rzędu
    And gracz klika w "prawy" kafelek z "dolnego" rzędu
    Then "kółko" wygrywa

  Scenario: Remis
    Given gracz uruchomił grę
    When gracz klika w "lewy" kafelek z "górnego" rzędu
    And gracz klika w "środkowy" kafelek z "górnego" rzędu
    And gracz klika w "środkowy" kafelek z "środkowego" rzędu
    And gracz klika w "prawy" kafelek z "środkowego" rzędu
    And gracz klika w "prawy" kafelek z "górnego" rzędu
    And gracz klika w "lewy" kafelek z "dolnego" rzędu
    And gracz klika w "środkowy" kafelek z "dolnego" rzędu
    And gracz klika w "prawy" kafelek z "dolnego" rzędu
    And gracz klika w "lewy" kafelek z "środkowego" rzędu
    Then remis

#  Scenario: Gra jest zresetowana
#    Given gracz uruchomił grę
#    When gracz klika w "lewy" kafelek z "górnego" rzędu
#    And gracz klika w "środkowy" kafelek z "górnego" rzędu
#    And gracz klika w "środkowy" kafelek z "środkowego" rzędu
#    And gracz klika w "prawy" kafelek z "środkowego" rzędu
#    And gracz klika w "prawy" kafelek z "górnego" rzędu
#    And gracz klika w "lewy" kafelek z "dolnego" rzędu
#    And gracz klika w "środkowy" kafelek z "dolnego" rzędu
#    And gracz klika w "prawy" kafelek z "dolnego" rzędu
#    And gracz klika w "lewy" kafelek z "środkowego" rzędu
#    And gracz klika w powtórz
#    Then gra jest pusta
