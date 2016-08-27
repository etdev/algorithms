require "pry"
require "byebug"
require "benchmark"

module Testable
  def test(debug: false)
    test_cases.each do |test_case|
      test_name, input, output = test_case.values_at(:name, :in, :out)
      puts "Testing that solution(#{input}) == #{output}" if debug

      if test_passes?(test_name, input, output)
        puts passing_text "#{test_name} - OK"
      else
        puts failing_text "#{test_name} - FAILED"
        puts failing_text "actual result: #{solution(input) || "nil"}" if debug
      end
    end
  end

  private

  def test_passes?(name, input, output)
    Benchmark.bm(7) do |bench|
      bench.report("#{name}")   { result = solution(input) }
    end
    solution(input) == output
  end

  def failing_text(text)
    "\e[#{31}m#{text}\e[0m"
  end

  def passing_text(text)
    "\e[#{32}m#{text}\e[0m"
  end
end
