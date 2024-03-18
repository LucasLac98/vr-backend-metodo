Feature: Marcadores &, *, % e !
    Scenario: Cenario 3 
        Given a string de entrada “the quick brown fox & jumped over * the lazy dog”
        And os marcadores [“&”, “*”, “%”, “!”]
        Then a saída esperada é: “the quick brown fox”
