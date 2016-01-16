class Challenge
  BASE_CHALLENGE_URL = "http://www.codewars.com/kata/"
  attr_accessor :url

  def initialize(kata_code)
    @url = BASE_CHALLENGE_URL << kata_code
  end
  
end
