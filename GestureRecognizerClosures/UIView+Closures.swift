import UIKit

public extension UIView {

    func onTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 1, handler: handler))
    }

    func onDoubleTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) {
        addGestureRecognizer(UITapGestureRecognizer(taps: 2, handler: handler))
    }

    func onLongPress(_ handler: @escaping (UILongPressGestureRecognizer) -> Void) {
        addGestureRecognizer(UILongPressGestureRecognizer(handler: handler))
    }

    func onSwipeLeft(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .left, handler: handler))
    }

    func onSwipeRight(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .right, handler: handler))
    }

    func onSwipeUp(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .up, handler: handler))
    }

    func onSwipeDown(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        addGestureRecognizer(UISwipeGestureRecognizer(direction: .down, handler: handler))
    }

    func onPan(_ handler: @escaping (UIPanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPanGestureRecognizer(handler: handler))
    }

    func onPinch(_ handler: @escaping (UIPinchGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPinchGestureRecognizer(handler: handler))
    }

    func onRotate(_ handler: @escaping (UIRotationGestureRecognizer) -> Void) {
        addGestureRecognizer(UIRotationGestureRecognizer(handler: handler))
    }

    func onScreenEdgePan(_ handler: @escaping (UIScreenEdgePanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIScreenEdgePanGestureRecognizer(handler: handler))
    }
}
