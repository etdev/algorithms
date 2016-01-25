class Profile
  CW_BASE_URL = "http://www.codewars.com"
  BASE_PROFILE_URL = "http://www.codewars.com/users/"
  CHALLENGE_ITEM_CSS = ".item-title > a"
  USERNAME = ENV["GITHUB_USERNAME"]

  attr_accessor :url, :page

  def initialize(username, mech, page = 1)
    @url = "#{BASE_PROFILE_URL}/#{USERNAME}"
    @mech = mech
    @page ||= fetch_profile_page(@mech, page)
  end

  def fetch_profile_page(mech, page)
    mech.get("#{BASE_PROFILE_URL}#{USERNAME}?page=#{page}")
  rescue StandardError => e
    puts "Failed to fetch profile page\n#{e.inspect}"
  end

  def challenge_links
    @challenge_links ||=
      begin
        @page.css(CHALLENGE_ITEM_CSS).map do |el|
          {
            name: format_challenge_name(el.text),
            url: CW_BASE_URL + el["href"]
          }
        end
      end
  rescue StandardError => e
    puts "Failed to parse challenge links on profile page\n#{e.inspect}"
  end

  private

  # set to snake_case format for file names etc.
  def format_challenge_name(challenge_name)
    challenge_name
      .downcase
      .tr("^ a-z", "")[0..25]
      .gsub(/\s+/, "_")
      .gsub(/\A_/, "")
  end
end
