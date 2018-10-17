require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "rn-ios-user-agent"
  s.version        = "1.0"
  s.summary        = "Package to set the user agent"
  s.homepage       = "https://github.com/tritter/rn-ios-user-agent"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "7.0"
  s.source         = { :git => "https://github.com/tritter/rn-ios-user-agent" }
  s.source_files   = 'RNUserAgent/*.{h,m}'
  s.dependency 'React'

end