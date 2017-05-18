Pod::Spec.new do |s|
  s.name         = "DB6"
  s.version      = "0.1"
  s.summary      = "DB6 is App Appearance Configuration via Plist"
  s.homepage     = "https://github.com/jeksys/DB6"
  s.license      = "MIT"
  s.author       = { "Eugene Yagrushkin" => "yagrushkin@gmail.com" }
  s.social_media_url   = "https://jeksys.github.io/"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/jeksys/DB6.git", :tag => s.version.to_s }
  s.source_files = "DB6/Classes/*.swift"
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
end
