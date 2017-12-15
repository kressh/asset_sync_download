# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asset_sync_download/version'

Gem::Specification.new do |spec|
  spec.name          = "asset_sync_download"
  spec.version       = AssetSyncDownload::VERSION
  spec.authors       = ["Daisuke TASAKI"]
  spec.email         = ["tasaki@i3-systems.com"]

  spec.summary       = %q{Download asset files from your cloud storage such as AWS S3, Rackspace, AzureBlob, synchronised with AssetSync gem}
  spec.description   = %q{This gem enables you to distribute a manifest fiie and asset files to servers, without commiting such files to your repository.}
  spec.homepage      = "https://github.com/devchick/asset_sync_download"
  spec.license       = "MIT"

  spec.rubyforge_project = "asset_sync_download"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'asset_sync', '~> 2.3'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "actionpack"
  spec.add_development_dependency "sprockets"
  spec.add_development_dependency "uglifier"
  spec.add_development_dependency "fog-aws"
  spec.add_development_dependency "fog-azure-rm"

  spec.add_development_dependency "appraisal"
end