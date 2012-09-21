$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_facebook_generate_test_user/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_facebook_generate_test_user"
  s.version     = RailsAdminFacebookGenerateTestUser::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminFacebookGenerateTestUser."
  s.description = "TODO: Description of RailsAdminFacebookGenerateTestUser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.1"

  s.add_dependency('cancan')

  s.add_dependency('koala')
end
