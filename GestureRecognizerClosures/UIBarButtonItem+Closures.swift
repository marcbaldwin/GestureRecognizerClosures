import UIKit

private var HandlerKey: UInt8 = 0

internal extension UIBarButtonItem {

    internal var closureHandler: ClosureHandler<UIBarButtonItem>? {
        get { return objc_getAssociatedObject(self, &HandlerKey) as? ClosureHandler<UIBarButtonItem> }
        set { objc_setAssociatedObject(self, &HandlerKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC) }
    }

    internal func initClosureHandler(handler: (UIBarButtonItem) -> Void) {
        closureHandler = ClosureHandler(handler: handler, control: self)
        target = closureHandler
        action = ClosureHandlerSelector
    }
}

public extension UIBarButtonItem {

    /// A handler that is invoked when the item is selected
    public var handler: ((UIBarButtonItem) -> Void)? {
        get { return closureHandler?.handler }
        set {
            if let newValue = newValue {
                if let closureHandler = self.closureHandler {
                    closureHandler.handler = newValue
                } else {
                    self.initClosureHandler(newValue)
                }
            } else {
                closureHandler = nil
            }
        }
    }

    /**
        Initializes a new item using the specified image, style and handler
     */
    public convenience init(image: UIImage?, style: UIBarButtonItemStyle, handler: (UIBarButtonItem) -> Void) {
        self.init(image: image, style: style, target: nil, action: nil)
        initClosureHandler(handler)
    }

    /**
        Initializes a new item using the specified images, style and handler
     */
    public convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, handler: (UIBarButtonItem) -> Void) {
        self.init(image: image, landscapeImagePhone: landscapeImagePhone, style: style, target: nil, action: nil)
        initClosureHandler(handler)
    }

    /**
        Initializes a new item using the specified title, style and handler
     */
    public convenience init(title: String?, style: UIBarButtonItemStyle, handler: (UIBarButtonItem) -> Void) {
        self.init(title: title, style: style, target: nil, action: nil)
        initClosureHandler(handler)
    }

    /**
        Initializes a new item containing the specified system item and using the specified handler
     */
    public convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, handler: (UIBarButtonItem) -> Void) {
        self.init(barButtonSystemItem: systemItem, target: nil, action: nil)
        initClosureHandler(handler)
    }

    /**
        Initializes a new item containing the specified view and using the specified handler
     */
    public convenience init(customView: UIView, handler: (UIBarButtonItem) -> Void) {
        self.init(customView: customView)
        initClosureHandler(handler)
    }
}