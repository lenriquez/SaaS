#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  str = str.gsub /[^0-9A-Za-z]/, ''
  return str.reverse.upcase == str.upcase
end

def count_words(str)
  array  = str.split(/[^a-zA-Z]+/i).map{ |word| word.downcase }
  hash = Hash.new(0)
  array.each { |word| hash[word] +=1 }
  hash
end


#the code below this line will test your functions.  You should remove everything below this line prior to submitting your file


test_str = "there goes the neighborhood"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + " is a palindrome!"
else
  puts test_str + " is NOT a palindrome!"
end


test_str = "The rent is due on the first day of the month unless the first day of the month falls on a Saturday or Sunday"
test_str_2 = "A man, a plan, a canal -- Panama"
test_str_3 = "Doo bee doo bee doo"

word_count = count_words test_str
puts word_count
#puts count_words test_str_3
#puts count_words test_str_2
