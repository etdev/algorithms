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
      if script_tag.text.start_with?("App.session")
        script_tag.text =~ /(\"previousSolutions.*\"\]\}\]\})/
        acc << JSON.parse("{#{$1}")
      end
      acc
    end.compact.first["previousSolutions"]
  rescue => e
    puts "Failed to fetch solutions for #{@name}\n#{e.backtrace}"
  end

  def lang_parsed_solution_lists
    @lang_parsed_solution_lists = solutions.map do |soln|
      { url: @url,
        name: @name,
        soln_list: Hash[*soln.values_at("language", "solutions")]
      }
    end
  end

  def generate_output_files
    lang_parsed_solution_lists.each do |soln|
      soln[:soln_list].each do |lang, lang_solns|
        file_name = "#{Dir.pwd}/output/#{soln[:name]}#{FILE_TYPES[lang]}"
        File.open(file_name, File::WRONLY|File::CREAT|File::EXCL) do |soln_file|
          soln_file.write("# #{@url}\n")
          lang_solns.each.with_index do |lang_soln, i|
            soln_file.write("# --- iteration #{i} --- ")
            soln_file.write(lang_soln)
            soln_file.write("\n\n")
          end
        end
      end
    end
  end
end
