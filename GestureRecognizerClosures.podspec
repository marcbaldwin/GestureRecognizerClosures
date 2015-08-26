Pod::Spec.new do |s|
  s.name         = "GestureRecognizerClosures"
  s.version      = "1.0.0"
  s.license      = "GNU"
  s.summary      = "Closure support for handling gesture recognizers in Swift."
  s.homepage     = "https://github.com/marcbaldwin/GestureRecognizerClosures"
  s.author       = { "marcbaldwin" => "marc.baldwin88@gmail.com" }
  s.description  = %{
    Handle gestures with closures as an alternative to the target action pattern.
  }

  s.source       = { :git => "https://github.com/marcbaldwin/GestureRecognizerClosures.git", :tag => s.version }
  s.source_files = "GestureRecognizerClosures"
  s.platform     = :ios, '8.0'
  s.frameworks   = "Foundation", "UIKit"
  s.requires_arc = true
end
