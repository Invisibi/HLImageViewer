#
# Be sure to run `pod lib lint HLImageViewer.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HLImageViewer"
  s.version          = "0.1.0"
  s.summary          = "A short description of HLImageViewer."
  s.description      = <<-DESC
                       An optional longer description of HLImageViewer

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/egistli/HLImageViewer"
  s.license          = 'MIT'
  s.author           = { "Ken Kuan" => "kenkuan@hooloop.com",  "Egist Li" => "egistli@hooloop.com" }
  s.source           = { :git => "https://github.com/egistli/HLImageViewer.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HLImageViewer' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'SDWebImage'
  s.dependency 'SDWebImage-ProgressView'
  s.dependency 'libextobjc'
end
