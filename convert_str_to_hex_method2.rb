str = 'Black Hat Ruby'
puts str.each_byte.map { |b| '\x%02x' % b }.join

puts str.each_byte.map { |b| format('\x%02x', b) }.join
