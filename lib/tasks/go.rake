desc "Run the exercise specs"
RSpec::Core::RakeTask.new(:go => "spec:prepare") do |t|
  t.pattern = "./exercises/**/*_spec.rb"
  t.rspec_opts = "--fail-fast --format documentation"
end