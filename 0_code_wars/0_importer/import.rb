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
    form.login, form.password = [username, password]
  end.submit
  mech.click(gh_signed_in_page.link_with(text: "click here"))
  mech
end

# authenticate
print "\nAuthenticating..."
mech = get_gh_authenticated_connection(ENV["GITHUB_USERNAME"], ENV["GITHUB_PW"])
print "."
profile = Profile.new(USERNAME, mech)
print "."
challenge_links = profile.challenge_links
print ".\n"

# fetch challenges
print "Fetching challenges and solutions..."
challenges = challenge_links.lazy.reduce([]) do |acc, c_link|
  print "."
  acc << Challenge.new(mech, c_link)
end
print "\n"

# parse solutions
solns = challenges.map(&:lang_parsed_solution_lists)
challenges.map(&:generate_output_files)

binding.pry
x = 5
