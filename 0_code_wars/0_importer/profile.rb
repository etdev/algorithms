require_relative "./kata"

class Profile
  CW_BASE_URL = "http://www.codewars.com"
  BASE_PROFILE_URL = "http://www.codewars.com/users"
  CHALLENGE_ITEM_CSS = ".item-title > a"

  attr_accessor :url, :page, :limit

  def initialize(username, mech, page = 1, limit = nil)
    @url = "#{BASE_PROFILE_URL}/#{username}.json?page=#{page}"
    @mech = mech
    @limit = limit
    @page ||= fetch_profile_page(@mech, page)
  end

  def fetch_profile_page(mech, page)
    @page = mech.get(@url)
  rescue StandardError => e
    puts "Failed to fetch profile page\n#{e.inspect}"
  end

  def challenge_links
    @challenge_links ||=
      begin
        @page.css(CHALLENGE_ITEM_CSS).map do |el|
          {
            name:el.text,
            url: CW_BASE_URL + el["href"]
          }
        end
      end
  rescue StandardError => e
    puts "Failed to parse challenge links on profile page\n#{e.inspect}"
  end

  def katas
    page_hash = JSON.parse(@page.body)
    katas = page_hash["completed"]
              .map{ |obj| obj["kata"] }
              .map{ |kata| Kata.new(*kata.values) }
    katas = katas.first(limit) if limit
    katas
  rescue StandardError => e
    puts "Failed to parse katas on profile page\n#{e.inspect}"
  end
end
