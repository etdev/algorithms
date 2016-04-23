class Challenge
  TRAIN_PATH = "/train/ruby"
  FILE_TYPES = { "Ruby" => ".rb" }

  attr_accessor :url, :name, :page, :solutions

  def initialize(mech, kata)
    @mech = mech
    @name = kata.name
    @url = kata.url
    @page = fetch_challenge_page
    @solutions = fetch_solutions
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
        file_name = "#{Dir.pwd}/output/#{format_challenge_name(soln[:name])}#{FILE_TYPES[lang]}"
        File.open(file_name, File::WRONLY|File::CREAT) do |soln_file|
          soln_file.write("# #{@url}\n")
          lang_solns.each.with_index do |soln_code, i|
            soln_file.write(solution_snippet(soln_code, i))
          end
        end
      end
    end
  rescue => e
    puts "Failed to generate output files\n#{e.backtrace}"
  end

  private

  def solution_snippet(soln_code, i)
    <<~EOF
      # --- iteration #{i+1} ---
      #{clean_up_solution_code(soln_code)}
    EOF
  end

  def clean_up_solution_code(code)
    code.gsub(/\t/, "  ").split("\n").map(&:rstrip).join("\n") + "\n"
  end

  def format_challenge_name(challenge_name)
    challenge_name
      .downcase
      .tr("^ a-z", "")[0..25]
      .strip
      .gsub(/\s+/, "_")
      .gsub(/\A_/, "")
      .gsub(/_\z/, "")
  end
end
