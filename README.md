# Gesture Recognizer Closures
![Swift 4](https://img.shields.io/badge/Swift-4-orange.svg)
[![Platform](http://img.shields.io/cocoapods/p/GestureRecognizerClosures.svg?style=flat)](http://cocoadocs.org/docsets/GestureRecognizerClosures)
[![License](http://img.shields.io/cocoapods/l/GestureRecognizerClosures.svg?style=flat)](http://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/LICENSE)
[![Pod](http://img.shields.io/cocoapods/v/GestureRecognizerClosures.svg?style=flat)](https://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md)
[![Build Status](https://travis-ci.org/marcbaldwin/GestureRecognizerClosures.svg?branch=master)](https://travis-ci.org/marcbaldwin/GestureRecognizerClosures)

[Closure](http://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html) handlers for gesture recognizers, controls and bar button items.

`GestureRecognizerClosures` supports
- [`UIGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIGestureRecognizer_Class)
 - [`UILongPressGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UILongPressGestureRecognizer_Class)
 - [`UIPinchGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPinchGestureRecognizer_Class)
 - [`UIRotationGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIRotateGestureRecognizer_Class)
 - [`UISwipeGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwipeGestureRecognizer_Class)
 - [`UITapGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UITapGestureRecognizer_Class)
 - [`UIPanGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIPanGestureRecognizer_Class)
   - [`UIScreenEdgePanGestureRecognizer`](http://developer.apple.com/library/ios/documentation/UIKit/Reference/UIScreenEdgePanGestureRecognizer_Class)
- [`UIBarButtonItem`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIBarButtonItem_Class/)
- [`UIControl`](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIControl_Class/)

## Gesture Recognizer Examples
Example of handling a single tap
```Swift
view.onTap { _ in
    // Do something
}
```

Example of handling a double tap
```Swift
view.onDoubleTap { _ in
    // Do something
}
```

Example of handling a long press
```Swift
view.onLongPress { _ in
    // Do something
}
```

Example of handling a pinch
```Swift
view.onPinch { pinch in
    // Do something
}
```

Example of handling a pan
```Swift
view.onPan { pan in
    // Do something
}
```

Example of handling a rotation
```Swift
view.onRotate { rotate in
    // Do something
}
```

Example of handling a screen edge pan
```Swift
view.onScreenEdgePan { _ in
    // Do something
}
```

Example of handling a swipe left
```Swift
view.onSwipeLeft { _ in
    // Do something
}
```

Example of handling a swipe right
```Swift
view.onSwipeRight { _ in
    // Do something
}
```

Example of handling a swipe up
```Swift
view.onSwipeUp { _ in
    // Do something
}
```

Example of handling a swipe down
```Swift
view.onSwipeDown { _ in
    // Do something
}
```

## Bar Button Item Example
```Swift
let barButtonItem = UIBarButtonItem(title: "Save", style: .Plain) { [unowned self] _ in
  self.save()
}
```

## Control Example
```Swift
slider.on(.ValueChanged) { [unowned self] _ in
  self.volume = self.slider.value
}
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

pod 'GestureRecognizerClosures', '~> 4'
```

Then, run the following command:

```bash
$ pod install
```
#### Existing CocoaPods Project
To integrate `GestureRecognizerClosures` into your existing CocoaPods Xcode project specify it in your `Podfile`:

```ruby
pod 'GestureRecognizerClosures', '~> 4'
```
Then, run the following command:
```bash
$ pod install
```

### Use Carthage
You can use [Carthage](github.com/carthage/carthage) to install `GestureRecognizerClosures ` by adding it to your `Cartfile`:

```
github "marcbaldwin/GestureRecognizerClosures"
```


## Updating

### Use CocoaPods
To update to the latest version of `GestureRecognizerClosures` run the following command:

```bash
$ pod update
```

## Change Log
You can view the change log [here](http://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md).
