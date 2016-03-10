File.open(ARGV[0]).each_line do |line|
   digits = Array.new
   digits = line.scan(/\d/)
   sum = 0
   digits.each {|n| sum = sum + n.to_i}
   puts sum
end
