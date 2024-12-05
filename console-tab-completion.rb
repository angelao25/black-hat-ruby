require 'readline'
trap('INT', 'SIG_IGN')
CMDS = [ 'help', 'ls', 'pwd', 'exit']
completion = proc { |line| CMDS.grep(/^#{Regexp.escape( line )}/) }
Readline.completion_proc = completion
Readline.completion_append_character = ' '
while line = Readline.readline('-> ', true)
  puts line unless line.nil? or line.squeeze.empty?
  break if line =~ /^quit.*/i or line =~ /^exit.*/i
end
