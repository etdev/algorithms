require "open-uri"
require "nokogiri"
require "mechanize"
require "pry"
require "byebug"
require "io/console"
require_relative "./profile"
require_relative "./challenge"

GH_OAUTH_SIGNIN_URL = "https://www.codewars.com/users/preauth/github/signin"

def get_gh_authenticated_connection
  mech = Mechanize.new
  username = get_username
  password = get_password
  gh_signed_in_page = get_gh_signed_in_page(mech, username, password)
  mech.click(gh_signed_in_page.link_with(text: "click here"))
  mech
end

def get_username
  print "\nEnter your Github username: "
  username = gets.chomp
end

def get_password
  print "Enter your Github password: "
  password = STDIN.noecho(&:gets).chomp
  puts "OK"
  password
end

def get_gh_signed_in_page(mech, username, password)
  mech.get(GH_OAUTH_SIGNIN_URL).form_with(name: nil) do |form|
    form.login, form.password = [username, password]
  end.submit
  if mech.page.links.any?{ |link| link.text =~ /two-factor recovery/ }
    gh_signed_in_page = mech.page.form_with(name: nil) do |form|
      print "Enter your 2FA code: "
      otp = gets.chomp
      form.otp = otp
    end.submit
  else
    gh_signed_in_page = mech.page
  end
  gh_signed_in_page
end

# authenticate
print "\nAuthenticating..."
mech = get_gh_authenticated_connection
print "."
profile = Profile.new(@username, mech, 1)
print "."
katas = profile.katas
print ".\n"

# fetch challenges
print "Fetching challenges and solutions..."
begin
  challenges = katas.reduce([]) do |acc, kata|
    print "."
    sleep(2)
    acc << Challenge.new(mech, kata)
  end
  print "\n"
rescue StandardError => e
  puts "Couldn't fetch all solutions"
  puts e.stacktrace
end

binding.pry

# parse solutions
solns = challenges.map(&:lang_parsed_solution_lists)
challenges.map(&:generate_output_files)

