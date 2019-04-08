import UIKit

public extension UITapGestureRecognizer {

    /**
        Initializes a touch gesture-recognizer with the specificed number of taps, touches and handler
     */
    convenience init(taps: Int = 1, touches: Int = 1, handler: @escaping (UITapGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UITapGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
        numberOfTapsRequired = taps
        numberOfTouchesRequired = touches
    }
}

public extension UILongPressGestureRecognizer {

    /**
        Initializes a long press gesture recognizer with the specificed handler
     */
    convenience init(handler: @escaping (UILongPressGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UILongPressGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
    }
}

public extension UISwipeGestureRecognizer {

    /**
        Initializes a swipe gesture recognizer with the specificed direction and handler
     */
    convenience init(direction: UISwipeGestureRecognizer.Direction, handler: @escaping (UISwipeGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UISwipeGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
        self.direction = direction
    }
}

public extension UIPanGestureRecognizer {

    /**
        Initializes a pan gesture recognizer with the specificed handler
     */
    @objc convenience init(handler: @escaping (UIPanGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UIPanGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
    }
}

public extension UIPinchGestureRecognizer {

    /**
        Initializes a pinch gesture-recognizer with the specificed handler
     */
    convenience init(handler: @escaping (UIPinchGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UIPinchGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
    }
}

public extension UIRotationGestureRecognizer {

    /**
        Initializes a rotation gesture-recognizer with the specificed handler
     */
    convenience init(handler: @escaping (UIRotationGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UIRotationGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
    }
}

public extension UIScreenEdgePanGestureRecognizer {

    /**
        Initializes a screen edge pan gesture-recognizer with the specificed handler
     */
    convenience init(handler: @escaping (UIScreenEdgePanGestureRecognizer) -> Void) {
        let handler = ClosureHandler<UIScreenEdgePanGestureRecognizer>(handler: handler)
        self.init(target: handler, action: ClosureHandlerSelector)
        setHandler(self, handler: handler)
    }
}
