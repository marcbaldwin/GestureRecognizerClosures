import XCTest
@testable import GestureRecognizerClosures

class UIGestureRecognizerClosuresTests: XCTestCase {

    var closureExecuted = false
    var gestureRecognizerPassedToClosure: UIGestureRecognizer? = nil

    func testUILongPressGestureRecognizerClosure() {

        let gestureRecognizer = UILongPressGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }

    func testUIPanGestureRecognizerClosure() {

        let gestureRecognizer = UIPanGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }

    func testUIPinchGestureRecognizerClosure() {

        let gestureRecognizer = UIPinchGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }

    func testUIRotationGestureRecognizerClosure() {

        let gestureRecognizer = UIRotationGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }

    func testUISwipeGestureRecognizerClosure() {

        let gestureRecognizer = UISwipeGestureRecognizer(direction: .Left) { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }

    func testUITapGestureRecognizerClosure() {

        let gestureRecognizer = UITapGestureRecognizer { gestureRecognizer in
            self.closureExecuted = true
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }

        testClosureIsInvokedForGestureRecognizer(gestureRecognizer)
    }
}


private extension UIGestureRecognizerClosuresTests {

    private func testClosureIsInvokedForGestureRecognizer<T: UIGestureRecognizer>(gestureRecognizer: T) {
        let handler: GestureClosure<T>  = gestureRecognizer.handler()
        XCTAssertNotNil(handler, "Gesture recognizer should have closure handler")

        handler.handleGesture(gestureRecognizer)
        XCTAssertTrue(closureExecuted, "Closure handler should execute closure")
        XCTAssertEqual(gestureRecognizer, gestureRecognizerPassedToClosure!, "Closure handler should receive gesture passed to it")
        XCTAssertTrue(gestureRecognizer.dynamicType === T.self, "Gesture recognizer should be correct type")
    }
}