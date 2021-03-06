lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "rake"
require 'vinquery/version'

Gem::Specification.new do |s|
  s.name        = "vinquery"
  s.version     = Vinquery::VERSION
  s.summary     = "A client for vinquery.com"
  s.description = "A client for the Vinquery.com vin decoding web service."
  s.homepage    = "http://github.com/tinomen/vinquery"

  s.authors = ["Jake Mallory", "George South"]
  s.email   = "tinomen@gmail.com"
  #s.date   = "2011-06-08" # defaults to today
  s.files   = FileList["lib/**/*.rb", "[A-Z]*", "spec/**/*"].to_a

  # RDoc settings
  s.extra_rdoc_files = FileList["[A-Z]*"].to_a
  s.rdoc_options     << "--title"        << s.summary <<
                        "--main"         << "README.rdoc" <<
                        "--line-numbers" << "--charset=UTF-8"
  
  s.required_rubygems_version = ">= 1.3.6"
  s.require_path = 'lib'
  
  # Test settings
  s.test_files = FileList["spec/**/*"].to_a

  # Dependencies
  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new("1.2.0") then
      s.add_runtime_dependency     "nokogiri",     [">= 1.4.4"]
      s.add_development_dependency "rspec", [">= 2.6.0"]
      s.add_development_dependency "webmock", [">= 1.6.4"]
      s.add_development_dependency "vin_exploder", [">= 0.4.0"]
    else
      s.add_dependency "nokogiri",     [">= 1.4.4"]
    end
  else
    s.add_dependency "nokogiri",     [">= 1.4.4"]
  end
end