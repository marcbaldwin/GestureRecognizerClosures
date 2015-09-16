import UIKit

public extension UIView {

    public func onTap(handler: (UITapGestureRecognizer) -> Void) {
        onTapWithTapCount(1, run: handler)
    }

    public func onDoubleTap(handler: (UITapGestureRecognizer) -> Void) {
        onTapWithTapCount(2, run: handler)
    }

    public func onLongPress(handler: (UILongPressGestureRecognizer) -> Void) {
        addGestureRecognizer(UILongPressGestureRecognizer { gesture in
            handler(gesture as! UILongPressGestureRecognizer)
        })
    }

    public func onSwipeLeft(handler: (UISwipeGestureRecognizer) -> Void) {
        onSwipeWithDirection(.Left, run: handler)
    }

    public func onSwipeRight(handler: (UISwipeGestureRecognizer) -> Void) {
        onSwipeWithDirection(.Right, run: handler)
    }

    public func onSwipeUp(handler: (UISwipeGestureRecognizer) -> Void) {
        onSwipeWithDirection(.Up, run: handler)
    }

    public func onSwipeDown(handler: (UISwipeGestureRecognizer) -> Void) {
        onSwipeWithDirection(.Down, run: handler)
    }

    public func onPan(handler: (UIPanGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPanGestureRecognizer { gesture in
            handler(gesture as! UIPanGestureRecognizer)
        })
    }

    public func onPinch(handler: (UIPinchGestureRecognizer) -> Void) {
        addGestureRecognizer(UIPinchGestureRecognizer { gesture in
            handler(gesture as! UIPinchGestureRecognizer)
        })
    }

    public func onRotate(handler: (UIRotationGestureRecognizer) -> Void) {
        addGestureRecognizer(UIRotationGestureRecognizer { gesture in
            handler(gesture as! UIRotationGestureRecognizer)
        })
    }
}

private extension UIView {

    private func onTapWithTapCount(numberOfTaps: Int, run handler: (UITapGestureRecognizer) -> Void) {
        let tapGesture = UITapGestureRecognizer { gesture in
            handler(gesture as! UITapGestureRecognizer)
        }
        tapGesture.numberOfTapsRequired = numberOfTaps
        addGestureRecognizer(tapGesture)
    }

    private func onSwipeWithDirection(direction: UISwipeGestureRecognizerDirection, run handler: (UISwipeGestureRecognizer) -> Void) {
        let swipeGesture = UISwipeGestureRecognizer { gesture in
            handler(gesture as! UISwipeGestureRecognizer)
        }
        swipeGesture.direction = direction
        addGestureRecognizer(swipeGesture)
    }
}