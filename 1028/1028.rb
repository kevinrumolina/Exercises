#puts "cuantas pruebas deseas realizar"
#test_cases = gets.chomp.to_i

input ="sequence subsequence
person compression
VERDI vivaVittorioEmanueleReDiItalia
caseDoesMatter CaseDoesMatter
sequence subsequence
person compression
VERDI vivaVittorioEmanueleReDiItalia
caseDoesMatter CaseDoesMatter
sequence subsequence
person compression
VERDI vivaVittorioEmanueleReDiItalia
caseDoesMatter CaseDoesMatter"

input = input.scan(/[a-zA-Z0-9]+\s[a-zA-Z0-9]+/)

for i in 0...input.length
  @t = input[i].scan(/[a-zA-Z0-9]+/)[0]
  @s = input[i].scan(/[a-zA-Z0-9]+/)[1]
#  puts "Digite la palabra que se desea codificar"
#  @t = gets.chomp
#  puts "Digite la subsecuencia a verificar"
#  @s = gets.chomp
  counter_t = 0
  for counter_s in 0...@s.length
    if @s[counter_s] == @t[counter_t]
      counter_t = counter_t + 1
    end
  end

  if counter_t == @t.length
    puts "Yes"
  else
    puts "No"
  end
end
