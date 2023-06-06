Pod::Spec.new do |s|
  s.name             = "SPMDemo"
  s.version          = "3.0.0"
  s.summary          = "SPM Demo package"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
SPM Demo package
                       DESC

  s.homepage         = "https://github.com/theonepa1/SPMDemoPackage"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'private'
  s.author           = {  "theone.pa1@gmail.com" }
  s.source           = { :git => "https://github.com/theonepa1/SPMDemoPackage", :tag => "#{s.version}"}

  s.platform = :ios
  s.ios.deployment_target = "14.0"
  s.swift_version = "5.0"

  s.vendored_frameworks = "Frameworks/DeviceRisk.xcframework"
  s.preserve_paths = "Frameworks/DeviceRisk.xcframework"

  s.ios.frameworks = 'UIKit'

end
