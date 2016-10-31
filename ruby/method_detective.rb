# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”


puts"zom".chomp("o")
# => “zoom”


puts"enhance".rjust(15)
puts"enhance".center(20)
# => "    enhance    "


puts"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


string_1 = "the usual"
puts string_1 << " suspects"
#=> "the usual suspects"


puts" suspects".prepend("the usual")
# => "the usual suspects"


string_2 = "The case of the disappearing last letter"

puts"The case of the disappearing last letter".chop
puts string_2[0...37]
# => "The case of the disappearing last lette"


string_3 = "The mystery of the missing first letter"
puts string_3[1...50]
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

puts "z".each_byte{|z|print z}
puts "z".each_codepoint{|z| print z}
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4