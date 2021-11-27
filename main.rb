# A stream throttler

require './throttler'

lps = 5 # allowed max rate of lines per second
throttler = Throttler.new(lps)

quit = false
Signal.trap('INT') { quit = true }
Signal.trap('TERM') { quit = true }

ARGF.each_line do |line|
  break if quit
  throttler.echo(line.strip)
end
