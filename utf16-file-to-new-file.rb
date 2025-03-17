require 'iconv'
file = ARGV[0]
string = open(file).read.scrub
converted = Iconv.conv('UTF-8', 'UTF-16', string).scrub
File.write("utf8-#{file}", converted)
