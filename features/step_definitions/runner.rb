def remover_texto(string, marcadores)
  # Itera sobre cada marcador na lista de marcadores
  marcadores.each do |marcador|
    # Divide a string com base no marcador e mantém apenas a primeira parte
    string = string.split(marcador)[0]
  end
  # Retorna a string modificada
  string.strip # Remove espaços em branco extras no início e no final da string
end

@Cenario1
  Given('a string de entrada "bananas, tomates # e ventiladores"') do
  @string_entrada1 = "bananas, tomates # e ventiladores"
end

@Cenario1
Given('os marcadores “#”, “!”') do
  @marcadores1 = ["#", "!"]
end

@Cenario1
Then('a saída esperada é: “bananas, tomates”') do
  saida_esperada1 = "bananas, tomates"
  saida_obtida1 = remover_texto(@string_entrada1, @marcadores1)
  expect(saida_obtida1). to eq(saida_esperada1)
end

@Cenario2
Given('a string de entrada “o rato roeu a roupa $ do rei % de roma”') do 
  @string_entrada2 = "o rato roeu a roupa $ do rei % de roma"
end

@Cenario2
Given('os marcadores “%”, “!”') do 
  @marcadores2 = ["%", "!"]
end

@Cenario2
Then('a saída esperada é: “o rato roeu a roupa $ do rei”') do 
  saida_esperada2 = "o rato roeu a roupa $ do rei"
  saida_obtida2 = remover_texto(@string_entrada2, @marcadores2)
  expect(saida_obtida2). to eq(saida_esperada2)
end

@Cenario3
Given('a string de entrada “the quick brown fox & jumped over * the lazy dog”') do
  @string_entrada3 = 'the quick brown fox & jumped over * the lazy dog'
end

@Cenario3
Given('os marcadores [“&”, “*”, “%”, “!”]') do
  @marcadores3 = ["&", "*", "%", "!"]
end

@Cenario3
Then('a saída esperada é: “the quick brown fox”') do
  saida_esperada3 = "the quick brown fox"
    saida_obtida3 = remover_texto(@string_entrada3, @marcadores3)
    expect(saida_obtida3). to eq(saida_esperada3)
end





