File.open('nmodm.txt').each_line do |line|
   numbers = line.scan(/\d+/)
   n = numbers[0].to_i
   m = numbers[1].to_i
   q = n/m
   r = n - q*m
   puts r
end
