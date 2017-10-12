input = "1 10
15 100"

input = input.scan(/[0-9]+\s[0-9]+/)
result = 0

for counter in 0...input.length
  first_number = input[counter].scan(/[0-9]+/)[0].to_i
  second_number = input[counter].scan(/[0-9]+/)[1].to_i
  for num_dec in first_number..second_number
    num_bin = num_dec.to_s(2)
    for i in 0...num_bin.length
      if num_bin[i] == "1"
        result = result + 1
      end
    end
    if num_dec == second_number
      puts result
      result = 0
    end
  end
end
