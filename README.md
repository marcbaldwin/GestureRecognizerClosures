# Gesture Recognizer Closures
[Closure](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html) support for handling gesture recognizers in Swift.

`GestureRecognizerClosures` supports all subclasses of [`UIGestureRecognizer`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIGestureRecognizer_Class/)

```Swift
view.addGestureRecognizer(UITapGestureRecognizer { _ in
    // Respond to tap
})

view.addGestureRecognizer(UIPinchGestureRecognizer { gestureRecognizer in
    let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
    // Respond to pinch
})
```
## Installation

### Use CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects that supports embedded frameworks for Swift.

For instructions on how to install and use CocoaPods checkout the [guides](https://guides.cocoapods.org/).

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
You can view the change log [here](https://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md).
