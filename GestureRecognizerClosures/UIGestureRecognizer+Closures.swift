import UIKit

public extension UITapGestureRecognizer {

    public convenience init(taps: Int = 1, touches: Int = 1, handler: (UITapGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UITapGestureRecognizer.self)
        numberOfTapsRequired = taps
        numberOfTouchesRequired = touches
    }
}

public extension UILongPressGestureRecognizer {

    public convenience init(handler: (UILongPressGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UILongPressGestureRecognizer.self)
    }
}

public extension UISwipeGestureRecognizer {

    public convenience init(direction: UISwipeGestureRecognizerDirection, handler: (UISwipeGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UISwipeGestureRecognizer.self)
        self.direction = direction
    }
}

public extension UIPanGestureRecognizer {

    public convenience init(handler: (UIPanGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIPanGestureRecognizer.self)
    }
}

public extension UIPinchGestureRecognizer {

    public convenience init(handler: (UIPinchGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIPinchGestureRecognizer.self)
    }
}

public extension UIRotationGestureRecognizer {

    public convenience init(handler: (UIRotationGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIRotationGestureRecognizer.self)
    }
}

public extension UIScreenEdgePanGestureRecognizer {

    public convenience init(handler: (UIScreenEdgePanGestureRecognizer) -> Void) {
        self.init(handler: handler, type: UIScreenEdgePanGestureRecognizer.self)
    }
}
