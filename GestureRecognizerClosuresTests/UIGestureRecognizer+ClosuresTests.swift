import UIKit
import XCTest

class UIGestureRecognizerClosuresTests: XCTestCase {

    func testGestureRecognizerClosure() {

        var tapGestureClosureExecuted = false
        var gestureRecognizerPassedToClosure: UIGestureRecognizer? = nil

        let gestureRecognizer = UITapGestureRecognizer { gestureRecognizer in
            tapGestureClosureExecuted = true
            gestureRecognizerPassedToClosure = gestureRecognizer
        }

        let handler = gestureRecognizer.handler
        XCTAssertNotNil(handler, "Gesture recognizer should have closure handler")

        handler.handleGesture(gestureRecognizer)
        XCTAssertTrue(tapGestureClosureExecuted, "Closure handler should execute closure")
        XCTAssertEqual(gestureRecognizer, gestureRecognizerPassedToClosure!, "Closure handler should receive gesture passed to it")
    }
}
