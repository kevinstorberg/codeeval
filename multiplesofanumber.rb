
numbers = Array.new
File.open(ARGV[0]).each_line do |line|
   numbers << line.scan(/\d+/)
   numbers.flatten!
end

i = 0
while i < numbers.length
   x = numbers[i].to_i
   n = numbers[i + 1].to_i
   j = 1
   until x <= j*n
      j = j + 1
   end
   puts j*n
   i = i + 2
end
