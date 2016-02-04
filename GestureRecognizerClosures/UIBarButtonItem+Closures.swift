import UIKit

private var HandlerKey: UInt8 = 0

public extension UIBarButtonItem {

    internal var handler: ClosureHandler<UIBarButtonItem>? {
        get { return objc_getAssociatedObject(self, &HandlerKey) as? ClosureHandler<UIBarButtonItem> }
        set { objc_setAssociatedObject(self, &HandlerKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    public convenience init(title: String?, style: UIBarButtonItemStyle, handler: (UIBarButtonItem) -> Void) {
        let handler = ClosureHandler(handler: handler)
        self.init(title: title, style: style, target: handler, action: ClosureHandlerSelector)
        handler.control = self
        self.handler = handler
    }

    public convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, handler: (UIBarButtonItem) -> Void) {
        let handler = ClosureHandler(handler: handler)
        self.init(barButtonSystemItem: systemItem, target: handler, action: ClosureHandlerSelector)
        handler.control = self
        self.handler = handler
    }
}