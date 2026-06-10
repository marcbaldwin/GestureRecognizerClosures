# Gesture Recognizer Closures
![Swift 5](https://img.shields.io/badge/Swift-5-orange.svg)
![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20tvOS-lightgrey.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/LICENSE)
[![Swift Package Manager](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)

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

### Use Swift Package Manager

[Swift Package Manager](https://www.swift.org/package-manager/) is the recommended way to install `GestureRecognizerClosures`.

In Xcode, go to **File ▸ Add Package Dependencies…** and enter the repository URL:

```
https://github.com/marcbaldwin/GestureRecognizerClosures.git
```

Or add it to the `dependencies` of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/marcbaldwin/GestureRecognizerClosures.git", from: "5.0.0"),
]
```

Then add `"GestureRecognizerClosures"` to your target's dependencies.

## Change Log
You can view the change log [here](http://github.com/marcbaldwin/GestureRecognizerClosures/blob/master/CHANGELOG.md).
