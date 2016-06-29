Pod::Spec.new do |s|
  s.name         = "MYHStatusBarHUD"
  s.version      = "0.0.1"
  s.ios.deployment_target = "6.0"
  s.license      = "MIT"
  s.summary      = "A short description of MYHStatusBarHUD."
  s.homepage     = "https://github.com/maoyuhu/MYHStatusIndicator"
  s.author      = { "maoyuhu" => "982140599@qq.com" }
  s.source       = { :git => "https://github.com/maoyuhu/MYHStatusIndicator.git", :tag => s.version }
  s.description  = "simple and easy A short description of MYHStatusBarHUD"
  s.source_files  = "MYHStatusBarHUD"
  s.resources    = "MYHStatusBarHUD/MYHStatusBarHUD.bundle"
  s.requires_arc = true

end
