internal let ClosureHandlerSelector = Selector("handle")

internal class ClosureHandler<T: AnyObject>: NSObject {

    internal let handler: (T) -> Void
    internal weak var control: T?

    internal init(handler: (T) -> Void, control: T? = nil) {
        self.handler = handler
        self.control = control
    }

    func handle() {
        if let control = self.control {
            handler(control)
        }
    }
}