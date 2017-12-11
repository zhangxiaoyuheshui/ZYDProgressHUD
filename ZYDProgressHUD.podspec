#
#  Be sure to run `pod spec lint ZYDProgressHUD.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ZYDProgressHUD"
  s.version      = "0.0.3"
  s.summary      = "Simple and easy to use progress indicator"

  s.description  = "Simple and easy to use progress indicator. You can use it to create your ProgressHUD."
  s.homepage     = "https://github.com/zhangxiaoyuheshui/ZYDProgressHUD"

  s.license      = "MIT"

  s.author             = { "MAX" => "806903233@qq.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/zhangxiaoyuheshui/ZYDProgressHUD.git", :tag => s.version }

  s.source_files  = "ZYDProgressHUD/*.swift"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"


  s.framework  = "UIKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  s.requires_arc = true

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
