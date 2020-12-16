import UIKit

public extension UIView {

	@discardableResult
	func onTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UITapGestureRecognizer(taps: 1, handler: handler)
		addGestureRecognizer(gesture)
		return gesture
	}

	@discardableResult
    func onDoubleTap(_ handler: @escaping (UITapGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UITapGestureRecognizer(taps: 2, handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onLongPress(_ handler: @escaping (UILongPressGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UILongPressGestureRecognizer(handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onSwipeLeft(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UISwipeGestureRecognizer(direction: .left, handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onSwipeRight(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UISwipeGestureRecognizer(direction: .right, handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onSwipeUp(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UISwipeGestureRecognizer(direction: .up, handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onSwipeDown(_ handler: @escaping (UISwipeGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UISwipeGestureRecognizer(direction: .down, handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onPan(_ handler: @escaping (UIPanGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UIPanGestureRecognizer(handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onPinch(_ handler: @escaping (UIPinchGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UIPinchGestureRecognizer(handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onRotate(_ handler: @escaping (UIRotationGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UIRotationGestureRecognizer(handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }

	@discardableResult
    func onScreenEdgePan(_ handler: @escaping (UIScreenEdgePanGestureRecognizer) -> Void) -> UIGestureRecognizer {
		let gesture = UIScreenEdgePanGestureRecognizer(handler: handler)
        addGestureRecognizer(gesture)
		return gesture
    }
}
