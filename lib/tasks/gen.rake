
desc "Generates fresh exercise files in spec/exercises"
task :gen do

  TEMPLATE_SPECS_PATTERN = "plans/templates/*_spec.rb"

  Dir[TEMPLATE_SPECS_PATTERN].each do |path_to_template|

    filename = File.basename(path_to_template)
    path_to_exercise = "spec/exercises/#{filename}"

    File.open(path_to_exercise, "w") do |output|
      File.open(path_to_template, "r").each do |line|
        stripped_line = line.strip
        preserve = !stripped_line.end_with?("#hide")
        if preserve
          commented_out = stripped_line.start_with?("#")
          uncomment =  commented_out && stripped_line.end_with?("#show")
          if uncomment
            line = line.sub("#show", "").sub(/#\s*/, "")
          end
          output.write(line)
        end
      end
    end
  end

end
