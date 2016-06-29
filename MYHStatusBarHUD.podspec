

Pod::Spec.new do |s|

  s.name         = "MYHStatusBarHUD"
  s.version      = "0.0.1"
  s.summary      = "A short description of MYHStatusBarHUD."
  s.authors = { ‘maoyuhu’ => ’982140599@qq.com’ }
  s.homepage     = "https://github.com/maoyuhu/MYHStatusIndicator"
  s.source = { :git => 'https://github.com/maoyuhu/MYHStatusIndicator.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.license  = 'MIT'
  s.source_files = 'MYHStatusBarHUD/*.{h,m}'
  s.resources = 'MYHStatusBarHUD/MYHStatusBarHUD.bundle’
  s.requires_arc = true

end
