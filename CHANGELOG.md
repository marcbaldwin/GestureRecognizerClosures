# GestureRecognizerClosures - Change Log

All noteable changes to `GestureRecognizerClosures` will be documented in this file.

`GestureRecognizerClosures` adheres to [Semantic Versioning](http://semver.org/).

## Release Summary
- 2.1.0 - Add closure support for `UIScreenEdgePanGestureRecognizer`
- 2.0.0 - Xcode 7 and Swift 2
- 1.1.0 - Adds utility functions to `UIView` for adding closures for `UIGestureRecognizer`
- 1.0.0 - Adds closure initializer to `UIGestureRecognizer`

## [2.1.0 - Support for UIScreenEdgePanGestureRecognizer](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/2.1.0)
Released on 2016-02-2

### Added
- Convenience init to `UIScreenEdgePanGestureRecognizer` that takes a closure
- Utility function to `UIView` to add a `UIScreenEdgePanGestureRecognizer` that takes a closure

## [2.0.0 - Swift 2](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/2.0.0)
Released on 2015-09-16

### Breaking Changes
- Compile against Swift 2

## [1.1.0 - UIView Utility Functions](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/1.1.0)
Released on 2015-09-16

### Added
- The following utility functions to `UIView`
  - onTap
  - onDoubleTap
  - onLongPress
  - onPinch
  - onPan
  - onRotate
  - onSwipeLeft
  - onSwipeRight
  - onSwipeUp
  - onSwipeDown

## [1.0.0 - Closure Initializer](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/1.0.0)
Released on 2015-08-26

### Added
- Initializer to `UIGestureRecognizer` that accepts a closure as its only parameter
