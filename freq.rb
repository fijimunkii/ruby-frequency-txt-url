#open a url as if it's a standard file with a built in ruby library
require 'open-uri'
#This is Gutenberg's link to Hamlet
link = 'http://www.gutenberg.org/cache/epub/2265/pg2265.txt'
#read the link syntax
file = File.read(open(link))
#create an array of the file with the words split on spaces
words = file.to_s.split("\n").join('').split(' ')
#create a new hash with the key set to key and the value set to 0
freq = Hash.new { |k,v| v = 0 }
#increment a counter in the hash with the words +1
words.each { |word| freq[word] += 1 }
#print out the results sorted in descending value for the "top ten" places
p freq.sort_by { |k,v| -v }[0..9]

