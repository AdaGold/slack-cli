guard :minitest, bundler: false, autorun: false, rubygems: false, test_folders: ['specs'] do
  # with Minitest::Spec
  watch(%r{^specs/(.*)_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$}) { |m| "specs/#{m[1]}_spec.rb" }
  watch(%r{^specs/test_helper\.rb$}) { 'specs' }
end
