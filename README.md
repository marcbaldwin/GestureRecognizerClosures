# Gesture Recognizer Closures
[Closure](http://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html) support for handling gesture recognizers in Swift.

`GestureRecognizerClosures` supports all subclasses of [`UIGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIGestureRecognizer_Class/)

Example of handling a `UITapGestureRecognizer`
```Swift
view.addGestureRecognizer(UITapGestureRecognizer { _ in
    // Respond to tap
})
```
Example of handling a `UIPinchGestureRecognizer`
```Swift
view.addGestureRecognizer(UIPinchGestureRecognizer { gestureRecognizer in
    let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
    // Respond to pinch
})
```
Example of handling a `UISwipeGestureRecognizer`
```Swift
let swipeDown = UISwipeGestureRecognizer { gestureRecognizer in
    let swipeDownGestureRecognizer = gestureRecognizer as! UISwipeGestureRecognizer
    // Respond to swipe
})
swipeDown.direction = .Down
view.addGestureRecognizer(swipeDown)
```
## Installation

### Use CocoaPods

[CocoaPods](http://cocoapods.org/about) is a dependency manager for Cocoa projects that supports embedded frameworks for Swift.

For instructions on how to install and use CocoaPods checkout the [guides](http://guides.cocoapods.org/).

#### New CocoaPods Project
To integrate `GestureRecognizerClosures` into your Xcode project that is not currently using CocoaPods specify it in a new `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'GestureRecognizerClosures', '~> 1'
```

Then, run the following command:

```bash
$ pod install
```
#### Existing CocoaPods Project
To integrate `GestureRecognizerClosures` into your existing CocoaPods Xcode project specify it in your `Podfile`:

```ruby
pod 'GestureRecognizerClosures', '~> 1'
```
Then, run the following command:
```bash
$ pod install
```

## Updating

### Use CocoaPods
To update to the latest version of `GestureRecognizerClosures` run the following command:

```bash
$ pod update
```

## Change Log
You can view the change log [here](http://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md).
