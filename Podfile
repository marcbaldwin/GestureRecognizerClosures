platform :ios, '8.0'
use_frameworks!

target 'GestureRecognizerClosuresTests' do
  pod 'Nimble', git: 'https://github.com/Quick/Nimble', branch: 'master'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings["SWIFT_VERSION"] = "3.0"
    end
  end
end
