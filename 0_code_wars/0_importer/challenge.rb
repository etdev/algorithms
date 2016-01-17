class Challenge
  attr_accessor :url, :name, :page, :solutions
  TRAIN_PATH = "/train/ruby"
  def initialize(mech, challenge_link)
    @mech = mech
    @name, @url = challenge_link[:name], challenge_link[:url]
    @page = fetch_challenge_page
    @solutions = solutions = fetch_solutions
  end

  def fetch_challenge_page
    @mech.get(@url)
  end

  def fetch_solutions
    train_page = @mech.get(@url + TRAIN_PATH)
    train_page.css("script").reduce([]) do |acc, script_tag|
      acc << script_tag.text if script_tag.text.start_with?("App.session")
      acc
    end.compact.first
  end
end
