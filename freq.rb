require 'open-uri'

link = 'http://www.gutenberg.org/cache/epub/2265/pg2265.txt'
file = File.read(open(link))
words = file.to_s.split("\n").join('').split(' ')

freq = Hash.new { |k,v| v = 0 }

words.each { |word| freq[word] += 1 }
p freq.sort_by { |k,v| -v }[0..9]

