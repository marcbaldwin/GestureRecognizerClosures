Pod::Spec.new do |s|
  s.name         = "GestureRecognizerClosures"
  s.version      = "5.1.0"
  s.license      = "MIT"
  s.summary      = "Closure handlers for gesture recognizers, controls and bar button items."
  s.homepage     = "https://github.com/marcbaldwin/GestureRecognizerClosures"
  s.author       = { "Marc Baldwin" => "marc.baldwin88@gmail.com" }
  s.source       = { :git => "https://github.com/marcbaldwin/GestureRecognizerClosures.git", :tag => s.version }
  s.source_files = "GestureRecognizerClosures/*.swift"
  s.platform     = :ios, '9.0'
  s.frameworks   = "Foundation", "UIKit"
  s.requires_arc = true
end
