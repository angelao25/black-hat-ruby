str = 'Black Hat Ruby'
puts str.unpack('H*')

puts str.unpack('C*').map { |b| '\x%02x' % b }.join

# puts str.unpack('H*').map { |b| '\x%02x' % b }.join
