# One more method worth going through is using the to_s method, which converts a given integer to its string representation
#
str = 'Hello Friend'
puts str.each_byte.map { |b| '\x' + b.to_s(16).rjust(2, '0') }.join
