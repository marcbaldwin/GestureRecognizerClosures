import UIKit

public extension UIView {

    public func onTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 1, handler: handler))
    }

    public func onDoubleTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 2, handler: handler))
    }

    public func onLongPress(_ handler: @escaping (UILongPressGestureRecognizer) -> Void) {
        addGestureRecognizer(UILongPressGestureRecognizer(handler: handler))
    }

    public func onSwipeLeft(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .left, handler: handler))
    }

    public func onSwipeRight(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .right, handler: handler))
    }

    public func onSwipeUp(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .up, handler: handler))
    }

    public func onSwipeDown(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .down, handler: handler))
    }

    public func onPan(_ handler: @escaping (UIPanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPanGestureRecognizer(handler: handler))
    }

    public func onPinch(_ handler: @escaping (UIPinchGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPinchGestureRecognizer(handler: handler))
    }

    public func onRotate(_ handler: @escaping (UIRotationGestureRecognizer) -> Void) {
        addGestureRecognizer(UIRotationGestureRecognizer(handler: handler))
    }

    public func onScreenEdgePan(_ handler: @escaping (UIScreenEdgePanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIScreenEdgePanGestureRecognizer(handler: handler))
    }
}
