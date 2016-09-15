import UIKit

public extension UITapGestureRecognizer {

    /**
        Initializes a touch gesture-recognizer with the specificed number of taps, touches and handler
     */
    public convenience init(taps: Int = 1, touches: Int = 1, handler: @escaping (UITapGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UITapGestureRecognizer.self)
        numberOfTapsRequired = taps
        numberOfTouchesRequired = touches
    }
}

public extension UILongPressGestureRecognizer {

    /**
        Initializes a long press gesture recognizer with the specificed handler
     */
    public convenience init(handler: @escaping (UILongPressGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UILongPressGestureRecognizer.self)
    }
}

public extension UISwipeGestureRecognizer {

    /**
        Initializes a swipe gesture recognizer with the specificed direction and handler
     */
    public convenience init(direction: UISwipeGestureRecognizerDirection, handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UISwipeGestureRecognizer.self)
        self.direction = direction
    }
}

public extension UIPanGestureRecognizer {

    /**
        Initializes a pan gesture recognizer with the specificed handler
     */
    public convenience init(handler: @escaping (UIPanGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIPanGestureRecognizer.self)
    }
}

public extension UIPinchGestureRecognizer {

    /**
        Initializes a pinch gesture-recognizer with the specificed handler
     */
    public convenience init(handler: @escaping (UIPinchGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIPinchGestureRecognizer.self)
    }
}

public extension UIRotationGestureRecognizer {

    /**
        Initializes a rotation gesture-recognizer with the specificed handler
     */
    public convenience init(handler: @escaping (UIRotationGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIRotationGestureRecognizer.self)
    }
}

public extension UIScreenEdgePanGestureRecognizer {

    /**
        Initializes a screen edge pan gesture-recognizer with the specificed handler
     */
    public convenience init(handler: @escaping (UIScreenEdgePanGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIScreenEdgePanGestureRecognizer.self)
    }
}
