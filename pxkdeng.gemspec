require_relative 'lib/pxkdeng/version'

Gem::Specification.new do |spec|
  spec.name          = "pxkdeng"
  spec.version       = Pxkdeng::VERSION
  spec.authors       = ["Nantiwat Thongseng"]
  spec.email         = ["nwatth@gmail.com"]

  spec.summary       = %q{ไพ่ + (ป๊อก, ตัดและแผลงมาจากภาษาอังกฤษ poker)}
  spec.description   = %q{การพนันชนิดหนึ่ง เจ้ามือแจกไพ่ให้คนละ 2 ใบ แล้วเรียกไพ่ได้อีก และจะจ่ายเงินให้คนที่ได้แต้มสูงกว่า และกินเงินคนที่ได้แต้มต่ำกว่าตามกติกา}
  spec.homepage      = "https://github.com/nwatth/pxkdeng"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nwatth/pxkdeng"
  spec.metadata["changelog_uri"] = "https://github.com/nwatth/pxkdeng/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'byebug'
end
