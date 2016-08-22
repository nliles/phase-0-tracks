# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(2, 'o')
"zom".insert(1, 'o')
# => “zoom”

p "enhance".center(10)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


puts "the usual".replace("The Usual Suspects")
puts "the usual" << " suspects"
# "the usual".<???>
#=> "the usual suspects"

puts "suspects".prepend("the usual ")
puts "suspects".replace("The Usual Suspects")
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".delete("T")

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
puts "The mystery of the missing first letter"[1..-1]

p "Elementary,    my   dear        Watson!".gsub(/\s+/, ' ')
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
puts "z is the integer ordinal or a one character string."
# (What is the significance of the number 122 in relation to the character z?)


"How many times does the letter 'a' appear in this string?".count("a")