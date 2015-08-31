import UIKit
import XCTest

class UIGestureRecognizerClosuresTests: XCTestCase {

    var closureExecuted = false
    var gestureRecognizerPassedToClosure: UIGestureRecognizer? = nil

    func testUILongPressGestureRecognizerClosure() {

        let gestureRecognizer = UILongPressGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UILongPressGestureRecognizer.self)
    }

    func testUIPanGestureRecognizerClosure() {

        let gestureRecognizer = UIPanGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UIPanGestureRecognizer.self)
    }

    func testUIPinchGestureRecognizerClosure() {

        let gestureRecognizer = UIPinchGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UIPinchGestureRecognizer.self)
    }

    func testUIRotationGestureRecognizerClosure() {

        let gestureRecognizer = UIRotationGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UIRotationGestureRecognizer.self)
    }

    func testUISwipeGestureRecognizerClosure() {

        let gestureRecognizer = UISwipeGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UISwipeGestureRecognizer.self)
    }

    func testUITapGestureRecognizerClosure() {

        let gestureRecognizer = UITapGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer, andIsOfType: UITapGestureRecognizer.self)
    }
}


private extension UIGestureRecognizerClosuresTests {

    private func testClosureIsInvokedForGestureRecognizer(gestureRecognizer: UIGestureRecognizer, andIsOfType aClass: AnyClass) {
        let handler = gestureRecognizer.handler
        XCTAssertNotNil(handler, "Gesture recognizer should have closure handler")

        handler.handleGesture(gestureRecognizer)
        XCTAssertTrue(closureExecuted, "Closure handler should execute closure")
        XCTAssertEqual(gestureRecognizer, gestureRecognizerPassedToClosure!, "Closure handler should receive gesture passed to it")
        XCTAssertTrue(gestureRecognizer.dynamicType === aClass, "Gesture recognizer should be correct type")
    }
}