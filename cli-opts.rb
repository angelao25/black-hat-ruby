require 'optparse'

options = {}

opts = OptionParser.new do |opts|
  opts.banner = "Usage: #{__FILE__} [options] [subcommand [options]]"
  opts.on('-t', '--target HOST', 'The target hostname or IP address.') do |v|
    options[:target] = v
  end
  opts.on('-h', '--help', 'Display this screen.') do
    puts opts
    exit!
  end
  opts.on_tail "Examples:"
  opts.on_tail "  #{__FILE__} --target blackhatruby.com"
end

opts.order!
puts "Ther target is: #{options[:target]}" if options[:target]
