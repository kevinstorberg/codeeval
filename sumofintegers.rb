sum = 0
File.open(ARGV[0]).each_line do |line|
   d = line.scan(/\d+/)
   sum = sum + d[0].to_i
end
puts sum
