# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n_manylang_patch/version'

Gem::Specification.new do |gem|
  gem.name          = "i18n_manylang_patch"
  gem.version       = I18nManylangPatch::VERSION
  gem.authors       = ["baban"]
  gem.email         = ["babanba.n@gmail.com"]
  gem.description   = %q{This gem add translate language i18n gem}
  gem.summary       = %q{This gem add translate language i18n gem}
  gem.homepage      = "https://github.com/baban/i18n_manylang_patch"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
