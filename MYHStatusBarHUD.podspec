Pod::Spec.new do |s|
  s.name         = "MYHStatusBarHUD"
  s.version      = "0.0.1"
  s.ios.deployment_target = "8.0"
  s.license      = "MIT"
  s.summary      = "A short description of MYHStatusBarHUD."
  s.homepage     = "https://github.com/maoyuhu/MYHStatusIndicator"
  s.authors      = { "maoyuhu" => "982140599@qq.com" }
  s.source       = { :git => "https://github.com/maoyuhu/MYHStatusIndicator.git", :tag => s.version.to_s }
  s.description  = "simple and easy A short description of MYHStatusBarHUD"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  
  s.source_files  = 'MYHStatusBarHUD/*.{h,m}'
  s.resources    = 'MYHStatusBarHUD/MYHStatusBarHUD.bundle'
  s.requires_arc = true

end
