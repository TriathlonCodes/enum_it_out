Gem::Specification.new do |s|
  s.name               = "enum_it_out"
  s.version            = "0.0.1"
  s.default_executable = "enum_it_out"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephanie Hutson"]
  s.date = %q{2015-09-04}
  s.description = %q{add functions to strings and enumerators to easy view and datatype change}
  s.email = %q{stephanie.m.hutson@gmail.com}
  s.files = ["Rakefile", "lib/enum_it_out.rb", "bin/enum_it_out"]
  s.test_files = ["test/test_enum_it_out.rb"]
  s.homepage = %q{http://rubygems.org/gems/enum_it_out}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.0.0}
  s.summary = %q{This gem does an easy transfer from an array or a string to an array. It also allows a clean display of arrays and hashes}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
