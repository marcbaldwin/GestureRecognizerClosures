import UIKit

public extension UIControl {

    /// Adds a handler that will be invoked for the specified control events
    public func on(controlEvents: UIControlEvents, invokeHandler handler: (UIControl) -> Void) -> AnyObject {
        let closureHandler = ClosureHandler(handler: handler, control: self)
        addTarget(closureHandler, action: ClosureHandlerSelector, forControlEvents: controlEvents)
        return closureHandler
    }
}