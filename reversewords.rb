File.open(ARGV[0]).each_line do |line|
   words = line.scan(/\w+/)
   reversed_words = words.reverse
   puts reversed_words.join(" ")
end
