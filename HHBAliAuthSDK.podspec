#
# Be sure to run `pod lib lint HHBAliAuthSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHBAliAuthSDK'
  s.version          = '0.3.0'
  s.summary          = '阿里云一键登录的framework资源管理仓库.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  HBAliAuthSDK 是 阿里云一键登录的framework资源管理仓库 目前阿里云sdk版本为：v2.12.13.1-2023.05.12.
                       DESC

  s.homepage         = 'https://github.com/ioslcf/HHBAliAuthSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuchengfei' => '13717883106@163.com' }
  s.source           = { :git => 'https://github.com/ioslcf/HHBAliAuthSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'   }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.resources           = 'HHBAliAuthSDK/ATAuthSDK.framework/ATAuthSDK.bundle'
  s.vendored_frameworks = 'HHBAliAuthSDK/ATAuthSDK.framework','HHBAliAuthSDK/YTXMonitor.framework','HHBAliAuthSDK/YTXOperators.framework'
  s.static_framework = false

  # s.source_files = 'HBAliAuthSDK/Classes/**/*'

  # s.resource_bundles = {
  #   'HBAliAuthSDK' => ['HBAliAuthSDK/Assets/*.png']
  # }

  # 解决移动crash
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
    'ENABLE_BITCODE' => 'NO'
  }


  # s.source_files = 'HHBAliAuthSDK/Classes/**/*'

  # s.resource_bundles = {
  #   'HHBAliAuthSDK' => ['HHBAliAuthSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
