# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 "zom".insert(1, 'o')
 "zom".insert(2,'o')
# => “zoom”

 "enhance".ljust(11)
 "enhance".rjust(11)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(-1, " suspects")
#=> "the usual suspects"

 " suspects".insert(0, "the usual")
# => "the usual suspects"

 "The case of the disappearing last letter".chop
 "The case of the disappearing last letter".slice(0..-2)
# => "The case of the disappearing last lette"

 "The mystery of the missing first letter".slice(1..-1)
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

 "z".bytes
# => 122 
# It's the final character in base-122 encoding, which is more used because
# it's more efficient than base-64 encoding.

 "How many times does the letter 'a' appear in this string?".count('a')
# => 4