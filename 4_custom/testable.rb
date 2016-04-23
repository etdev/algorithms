require "pry"
require "byebug"

module Testable
  def test
    test_cases.each do |test_case|
      input, output = test_case.values_at(:in, :out)
      puts "Testing that solution(#{input}) == #{output}"
      if test_passes?(input, output)
        puts passing_text "OK"
      else
        puts failing_text "FAILED - actual result: #{solution(input) || "nil"}"
      end
    end
  end

  private

  def test_passes?(input, output)
    solution(input) == output
  end

  def failing_text(text)
    "\e[#{31}m#{text}\e[0m"
  end

  def passing_text(text)
    "\e[#{32}m#{text}\e[0m"
  end
end
