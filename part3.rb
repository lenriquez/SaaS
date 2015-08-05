def combine_anagrams(words)
  sort = words.map{ |string| string.chars.sort.join }

  hash = {}
  sort.each_index do |index|
    string = sort[index].downcase!
    hash[string]||=[]
    hash[string] << words[index] 
  end

  result = []
  hash.each_key do |key| 
	result << []
	hash[key].each{ |string| result[-1] << string } 
  end
  return result
end

test_case1 = [
  'cars',
  'for',
  'potatoes',
  'racs',
  'four',
  'scar',
  'creams',
 'scream' ]

puts combine_anagrams(test_case1).inspect
