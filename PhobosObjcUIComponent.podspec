#
# Be sure to run `pod lib lint PhobosObjcUIComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

group = "PhobosObjc"
name = "UIComponent"
pod_name = "#{group}#{name}"

has_public_header_files = false
has_resource_bundles = true
enable_test = true


Pod::Spec.new do |s|
  s.name             = "#{pod_name}"
  s.version          = '0.1.1'
  s.summary          = "#{pod_name} is a basic develop-kits for all the frameworks and apps."
  s.swift_version    = '5.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/restlesscode/phobos-objc'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Restless Developer' => 'developer@codebase.codes' }
  s.source           = { :git => 'https://github.com/restlesscode/phobos-objc.git', :tag => "#{name}-" + s.version.to_s }
  s.social_media_url = 'https://twitter.com/CodesRestless'

  s.ios.deployment_target = '10.0'

  s.cocoapods_version = '>= 1.10.0'
  s.static_framework = false
  s.prefix_header_file = false

  s.source_files = "#{group}/#{name}/Classes/**/*.{swift,m,h}"
  s.exclude_files = "#{group}/#{name}/Classes/Privatized+third+party+code/SwiftyRSA/SwiftyRSA+ObjC.swift"

  s.preserve_paths = [
    "#{group}/#{name}/README.md",
    "#{group}/#{name}/CHANGELOG.md"
  ]
  
  if has_resource_bundles
    s.resource_bundles = {
      "#{pod_name}" => ["#{group}/#{name}/Assets/**/*"]
    }
  end

  if has_public_header_files
    s.public_header_files = "#{group}/#{name}/Classes/**/*.h"
  end

  s.dependency 'PhobosObjcCore', '~> 0.1.0'
  #s.frameworks = 'Security'
  
  if enable_test
    s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = "#{group}/#{name}/Tests/**/*.{swift,h,m}"
    end
  end
  
end
