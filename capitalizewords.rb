File.open(ARGV[0]).each_line do |line|
   words = line.split.each{|i| i.capitalize!}.join(' ')
   puts words
end
