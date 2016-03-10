File.open(ARGV[0]).each_line do |line|
   string = line.downcase!
   puts string
end
