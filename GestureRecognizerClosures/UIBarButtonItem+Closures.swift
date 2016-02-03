import UIKit

private var HandlerKey: UInt8 = 0

public extension UIBarButtonItem {

    internal var handler: ClosureHandler<UIBarButtonItem>? {
        get { return objc_getAssociatedObject(self, &HandlerKey) as? ClosureHandler<UIBarButtonItem> }
        set { objc_setAssociatedObject(self, &HandlerKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    public convenience init(title: String?, style: UIBarButtonItemStyle, handler: (UIBarButtonItem) -> Void) {
        self.init()
        self.title = title
        self.style = style
        self.handler = ClosureHandler(handler: handler, control: self)
        self.target = self.handler
        self.action = "handle"
    }
}