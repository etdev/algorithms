class Challenge
  attr_accessor :url, :name, :page

  def initialize(challenge_link)
    @name, @url = challenge_link.name, challenge_link.url
    fetch_challenge_page
  end

  def fetch_challenge_page(challenge_link)
    @page ||= Nokogiri::HTML(open(challenge_link.url))
  end

  def solutions
  end
end
