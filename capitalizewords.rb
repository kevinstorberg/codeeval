File.open('capitalizewords.txt').each_line do |line|
   words = line.scan(/\S+/)
   i = 0
   string = ''
   while i < words.length
      word = words[i].split(//)
      word[0] = word[0].capitalize
      word = word.join('')
      i = i + 1
      string = string + word + ' '
   end
   puts string.chop
end
