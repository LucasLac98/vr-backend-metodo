Feature: Marcadores # e !
    Scenario: Cenario 1 
        Given a string de entrada "bananas, tomates # e ventiladores"
        And os marcadores “#”, “!”
        Then a saída esperada é: “bananas, tomates”
