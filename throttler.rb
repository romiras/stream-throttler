class Throttler

  def initialize(lps_rate = 5)
    @lps_rate = lps_rate
    reset_counter
    run_clock
  end

  def echo(line)
    @counter += 1
    puts(line) unless @counter > @lps_rate
  end

  def reset_counter
    @counter = 0
  end

  def run_clock
    sleep_time = 1.0
    task = Thread.new do
      loop do
        reset_counter
        sleep(sleep_time)
      end
    end
    at_exit { task.kill }
  end

end
