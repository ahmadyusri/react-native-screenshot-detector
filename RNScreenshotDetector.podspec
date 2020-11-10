require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNScreenshotDetector"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RNScreenshotDetector - first incomplete Detector Screenshot solution for your React Native app
                   DESC
  s.homepage     = "https://github.com/ahmadyusri/react-native-screenshot-detector"
  s.license      = "MIT"
  s.author       = { "author" => "ahmadyusri@bungkusteknologi.id" }
  s.platforms    = { :ios => "9.0", :tvos => "11.0" }
  s.source       = { :git => "https://github.com/ahmadyusri/react-native-screenshot-detector.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

