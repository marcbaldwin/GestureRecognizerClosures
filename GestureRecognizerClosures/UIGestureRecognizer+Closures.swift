import UIKit

private var HandlerKey: UInt8 = 0

public extension UIGestureRecognizer {

    internal var handler: GestureRecognizerClosureHandler! {
        get { return objc_getAssociatedObject(self, &HandlerKey) as! GestureRecognizerClosureHandler }
        set { objc_setAssociatedObject(self, &HandlerKey, newValue, UInt(OBJC_ASSOCIATION_RETAIN_NONATOMIC)) }
    }

    public convenience init(handler: (UIGestureRecognizer) -> Void) {
        let handler = GestureRecognizerClosureHandler(handler: handler)
        self.init(target: handler, action: "handleGesture")
        self.handler = handler
    }
}

internal class GestureRecognizerClosureHandler: NSObject {

    private let handler: (UIGestureRecognizer) -> Void

    init(handler: (UIGestureRecognizer) -> Void) {
        self.handler = handler
    }

    func handleGesture(gestureRecognizer: UIGestureRecognizer) {
        handler(gestureRecognizer)
    }
}
