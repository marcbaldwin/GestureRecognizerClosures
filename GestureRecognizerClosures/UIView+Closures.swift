import UIKit

public extension UIView {

    public func onTap(handler: (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 1, handler: handler))
    }

    public func onDoubleTap(handler: (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 2, handler: handler))
    }

    public func onLongPress(handler: (UILongPressGestureRecognizer) -> Void) {
        addGestureRecognizer(UILongPressGestureRecognizer(handler: handler))
    }

    public func onSwipeLeft(handler: (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .Left, handler: handler))
    }

    public func onSwipeRight(handler: (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .Right, handler: handler))
    }

    public func onSwipeUp(handler: (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .Up, handler: handler))
    }

    public func onSwipeDown(handler: (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .Down, handler: handler))
    }

    public func onPan(handler: (UIPanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPanGestureRecognizer(handler: handler))
    }

    public func onPinch(handler: (UIPinchGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPinchGestureRecognizer(handler: handler))
    }

    public func onRotate(handler: (UIRotationGestureRecognizer) -> Void) {
        addGestureRecognizer(UIRotationGestureRecognizer(handler: handler))
    }
}