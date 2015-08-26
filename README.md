# Gesture Recognizer Closures
[![Build Status](https://travis-ci.org/marcbaldwin/GestureRecognizerClosures.svg?branch=master)](https://travis-ci.org/marcbaldwin/GestureRecognizerClosures) [![Platform](http://img.shields.io/cocoapods/p/GestureRecognizerClosures.svg?style=flat)](http://cocoadocs.org/docsets/GestureRecognizerClosures) [![Pod](http://img.shields.io/cocoapods/v/GestureRecognizerClosures.svg?style=flat)](https://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md) [![License](http://img.shields.io/cocoapods/l/GestureRecognizerClosures.svg?style=flat)](http://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/LICENSE)

[Closure](http://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html) support for handling gesture recognizers in Swift.

`GestureRecognizerClosures` supports all subclasses of [`UIGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIGestureRecognizer_Class) including:
- [`UILongPressGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UILongPressGestureRecognizer_Class)
- [`UIPanGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPanGestureRecognizer_Class)
- [`UIPinchGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPinchGestureRecognizer_Class)
- [`UIRotationGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIRotateGestureRecognizer_Class)
- [`UISwipeGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwipeGestureRecognizer_Class)
- [`UITapGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UITapGestureRecognizer_Class)

## Examples
Example of handling a [`UITapGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UITapGestureRecognizer_Class)
```Swift
view.addGestureRecognizer(UITapGestureRecognizer { _ in
    // Respond to tap
})
```
Example of handling a [`UIPinchGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPinchGestureRecognizer_Class)
```Swift
view.addGestureRecognizer(UIPinchGestureRecognizer { gestureRecognizer in
    let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
    // Respond to pinch
})
```
Example of handling a [`UISwipeGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwipeGestureRecognizer_Class)
```Swift
let swipeDown = UISwipeGestureRecognizer { gestureRecognizer in
    let swipeDownGestureRecognizer = gestureRecognizer as! UISwipeGestureRecognizer
    // Respond to swipe
}
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
