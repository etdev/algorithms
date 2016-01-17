require "open-uri"
require "nokogiri"
require "pry"
require "byebug"
require_relative "./profile"
require_relative "./challenge"

profile = Profile.new("etdev")
challenge_links = profile.challenge_links
challenge_links.each do |c_link|
end

binding.pry; nil.nil?
