Feature: Marcadores % e !
    Scenario: Cenario 2 
        Given a string de entrada “o rato roeu a roupa $ do rei % de roma”
        And os marcadores “%”, “!”
        Then a saída esperada é: “o rato roeu a roupa $ do rei”