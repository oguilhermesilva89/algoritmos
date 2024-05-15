=begin
Passar de algarismos romano para números inteiros

Algarismos romanos são representados por 7 simbolos:
I => 1, V => 5, X => 10, L => 50, C => 100, D => 500, M => 1000

Existem 6 casos que a subtração é usada:

I antes de V ou X
X antes de L ou C
C antes de D ou M

Dado um algarismo romano, converta-o para um número inteiro.
=end

# @param {String} s
# @return {Integer}
def roman_to_int(s)
    # Define um hash que mapeia os numerais romanos aos seus valores inteiros correspondentes
  roman_numerals = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  # Inicializa a variável total com 0, que será usada para armazenar o valor inteiro final
  total = 0

  # Inicializa previous_value com 0, que será usada para armazenar o valor do numeral anterior
  previous_value = 0

  # Itera sobre cada caractere da string romana invertida
  s.reverse.each_char do |char|
    # Obtém o valor inteiro correspondente ao numeral romano atual
    value = roman_numerals[char]

    # Se o valor atual for menor que o valor anterior, subtrai o valor atual do total
    if value < previous_value
      total -= value
    else
      # Caso contrário, adiciona o valor atual ao total
      total += value
    end

    # Atualiza previous_value com o valor atual
    previous_value = value
  end

  # Retorna o valor total calculado
  total
end

puts roman_to_int('III')   # Saída: 3
puts roman_to_int('IV')    # Saída: 4
puts roman_to_int('IX')    # Saída: 9
puts roman_to_int('LVIII') # Saída: 58
puts roman_to_int('MCMXCIV') # Saída: 1994