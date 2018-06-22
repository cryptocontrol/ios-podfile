#
# Be sure to run `pod lib lint CryptoNewsApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CryptoNewsApi'
  s.version          = '1.1.0'
  s.summary          = 'Crypto News API. Official iOS client for the CryptoControl API'

  s.description      = <<-DESC
Official iOS client for the CryptoControl.io API. The CryptoControl iOS API/client lets developers access rich formatted articles from crypto news sources from all around the world. This crypto news api is free to use.
                       DESC

  s.homepage         = 'https://github.com/cryptocontrol/ios-podfile'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'enamakel' => 'enamakel@cryptocontrol.io' }
  s.source           = { :git => 'https://github.com/cryptocontrol/ios-podfile.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/cryptocontrolio'

  s.ios.deployment_target = '8.0'
  s.source_files = 'CryptoNewsApi/Classes/**/*'
  s.swift_version = '3.2'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'Alamofire', '~> 4.7'
end
