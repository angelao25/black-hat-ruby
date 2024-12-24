#!/usr/bin/env ruby

class Strings
  def mv_up(n=1); cursor(self, "\033[#{n}A"); end
  def mv_down(n=1); cursor(self, "\033[#{n}B"); end
  def mv_fw(n=1); cursor(self, "\033[#{n}C"); end
  def mv_bw(n=1); cursor(self, "\033[#{n}D"); end
  def cls_upline; cursor(self, "\e[K"); end
  def cls;  cursor(self, "\e[H\e[2J"); end
  def save_position;  cursor(self, "\033[s"); end
  def restore_position; cursor(self, "\033[u"); end
  def cursor(text, position); "\r#{position}#{text}"; end
end

# Level 1
(1..3).map do |num|
  print "\rNumber: #{num}"
  sleep 0.7
  # Level 2
  ('a'..'c').map do |char|
    print "Characters: #{char}".mv_down
    sleep 0.5
    # Level 3
    ('A'..'C').map do |char1|
      print "Capital: #{char1}".mv_down
      sleep 0.2
      print "".mv_up
    end
    print "".mv_up
  end
  sleep 0.7
end
print "".mv_down(3)

