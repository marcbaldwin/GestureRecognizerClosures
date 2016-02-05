# Change Log

All noteable changes to `GestureRecognizerClosures` will be documented in this file.

`GestureRecognizerClosures` adheres to [Semantic Versioning](http://semver.org/).

## Release Summary
- 2.2.0 - Closure support for `UIBarButtonItem`
- 2.1.0 - Closure support for `UIScreenEdgePanGestureRecognizer`
- 2.0.0 - Swift 2 and Xcode 7
- 1.1.0 - `UIView` convenience functions to add closure `UIGestureRecognizers`
- 1.0.0 - Closure initializers for `UIGestureRecognizer`

## [2.2.0 - Closure support for UIBarButtonItem](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/2.2.0)
*Released 2016-02-8*

Allows a specified closure to be invoked when a `UIBarButtonItem` is selected.

#### Implemented
- Convenience initializers for `UIBarButtonItem` that take a closure
- Handler property for `UIBarButtonItem`

## [2.1.0 - Closure support for UIScreenEdgePanGestureRecognizer](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/2.1.0)
*Released 2016-02-2*

Allows a specified closure to be invoked when a `UIScreenEdgePanGestureRecognizer` is recognized

#### Implemented
- Convenience initializer for `UIScreenEdgePanGestureRecognizer` that takes a closure
- Convenience function to add a closure `UIScreenEdgePanGestureRecognizer` to a `UIView`

## [2.0.0 - Swift 2 and Xcode 7](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/2.0.0)
*Released 2015-09-16*

Updated code to Swift 2 syntax.

#### Breaking Changes
- Compile against Swift 2
- Update project to Xcode 7

## [1.1.0 - UIView convenience functions to add closure UIGestureRecognizers](https://github.com/marcbaldwin/GestureRecognizerClosures/releases/tag/1.1.0)
*Released 2015-09-16*

Provides a convenient way to add closure `UIGestureRecognizers` to a `UIView`

#### Implemented
- The following convenience to `UIView`
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
*Released 2015-08-26*

Allows a specified closure to be invoked when instances of `UIGestureRecognizer` are recognized

#### Implemented
- Initializer for `UIGestureRecognizer` that takes a closure
