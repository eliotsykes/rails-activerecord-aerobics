task :gen do
  File.open("spec/exercises/a01_find_spec.rb", "w") do |output|
    File.open("plans/templates/a01_find_spec.rb", "r").each do |line|
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
