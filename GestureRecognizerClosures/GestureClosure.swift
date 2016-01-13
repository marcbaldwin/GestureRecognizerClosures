import UIKit

private var HandlerKey: UInt8 = 0

internal extension UIGestureRecognizer {

    internal convenience init<T: UIGestureRecognizer>(handler: (T) -> Void, type: T.Type) {
        let handler = GestureClosure<T>(handler: handler)
        self.init(target: handler, action: "handleGesture:")
        setHandler(handler)
    }

    internal func setHandler<T: UIGestureRecognizer>(handler: GestureClosure<T>) {
        objc_setAssociatedObject(self, &HandlerKey, handler, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
    }

    internal func handler<T>() -> GestureClosure<T> {
        return objc_getAssociatedObject(self, &HandlerKey) as! GestureClosure
    }
}

internal class GestureClosure<T: UIGestureRecognizer>: NSObject {

    private let handler: (T) -> Void

    init(handler: (T) -> Void) {
        self.handler = handler
    }

    func handleGesture(gestureRecognizer: UIGestureRecognizer) {
        handler(gestureRecognizer as! T)
    }
}