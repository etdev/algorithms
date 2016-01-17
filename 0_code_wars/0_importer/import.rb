require "open-uri"
require "nokogiri"
require "mechanize"
require "pry"
require "byebug"
require_relative "./profile"
require_relative "./challenge"

GH_OAUTH_SIGNIN_URL = "https://www.codewars.com/users/preauth/github/signin"
USERNAME = ENV["GITHUB_USERNAME"]

def get_gh_authenticated_connection(username, password)
  mech = Mechanize.new
  gh_signed_in_page = mech.get(GH_OAUTH_SIGNIN_URL).form_with(name: nil) do |form|
    form.login = username
    form.password = password
  end.submit
  mech.click(gh_signed_in_page.link_with(text: "click here"))
  mech
end

# authenticate
mech = get_gh_authenticated_connection(ENV["GITHUB_USERNAME"], ENV["GITHUB_PW"])
profile = Profile.new("etdev", mech)
challenge_links = profile.challenge_links
challenges = challenge_links.lazy.reduce([]) do |acc, c_link|
  acc << Challenge.new(mech, c_link)
end.first
binding.pry
x = 5
