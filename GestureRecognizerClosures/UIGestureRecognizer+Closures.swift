//
//  Copyright (c) 2015 Marc Baldwin. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

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