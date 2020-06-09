def substrings set_of_words, subset_of_string
  substrings = Hash.new 0

  set_of_words.downcase
              .tr(",.*?!", "")
              .split(" ")
              .each do |word|
    subset_of_string.each do |string|
      substrings[string] += 1 if word.include? string
    end
  end
  return substrings
end

print "Enter a statement: "
set_of_words = gets.chomp
subset_of_string = []

loop do
  print "Enter a list of words to find subsets (enter \"/stop/\" to stop): "
  input = gets.chomp.downcase.tr(",.*?!", "")
  break if input == "/stop/"
  subset_of_string.push input
end

p substrings set_of_words, subset_of_string