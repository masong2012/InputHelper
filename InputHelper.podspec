#
#  Be sure to run `pod spec lint InputHelper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "InputHelper"
  s.version      = "0.0.1"
  s.summary      = "InputHelper can auto adjust the frame of UITextField,UTextView and UISearchBar"
  s.homepage     = "https://github.com/masong2012/InputHelper"
  s.license      = "MIT"
  s.author             = { "masong" => "bcdvip@gmail.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/masong2012/InputHelper.git", :tag => "0.0.1" }
  s.source_files  = "InputHelper/*"
  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true

end
