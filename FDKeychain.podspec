Pod::Spec.new do |s|
  s.name = "FDKeychain"
  s.version = "1.3.1"
  s.summary = "Save, load and delete items from the keychain with a single Objective-C message."
  s.license = { :type => "MIT", :file => "LICENSE.md" }
  s.source = { :git => "https://github.com/Ixaya/FDKeychain.git", :tag => "#{s.version}" }
  
  s.homepage = "https://github.com/reidmain/FDKeychain"
  s.author = { "Reid Main" => "reidmain@gmail.com" }
  s.social_media_url = "http://twitter.com/reidmain"
  
  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "12.9"
  s.watchos.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  
  s.frameworks = [ "Foundation", "Security" ]
  s.requires_arc = true
  
  s.source_files = [ "Sources/#{s.name}/**/*.{h,m}" ]
end
