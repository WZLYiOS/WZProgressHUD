
Pod::Spec.new do |s|
  s.name             = 'WZProgressHUD'
  s.version          = '1.1.2'
  s.summary          = 'WZProgressHUD'
  s.homepage         = 'https://github.com/WZLYiOS/WZProgressHUD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LiuSky' => '327847390@qq.com' }
  s.source           = { :git => 'https://github.com/WZLYiOS/WZProgressHUD.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.static_framework = true
  s.swift_version         = '5.0'
  s.ios.deployment_target = '9.0'
  s.default_subspec = 'Source'
  
  s.subspec 'Source' do |ss|
    ss.source_files = 'WZProgressHUD/Classes/*.{h,m}'
    ss.resources    = 'WZProgressHUD/**/*.bundle'
    ss.framework    = 'QuartzCore'
  end
  
#  s.subspec 'Binary' do |ss|
#    ss.vendored_frameworks = "Carthage/Build/iOS/Static/WZProgressHUD.framework"
#    ss.resources    = 'WZProgressHUD/**/*.bundle'
#  end
  
end
