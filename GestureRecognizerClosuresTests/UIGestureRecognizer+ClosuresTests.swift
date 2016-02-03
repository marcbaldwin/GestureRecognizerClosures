import XCTest
import Nimble
@testable import GestureRecognizerClosures

class UIGestureRecognizerClosuresTests: XCTestCase {

    var gestureRecognizerPassedToClosure: UIGestureRecognizer? = nil

    func testUILongPressGestureRecognizerClosure() {
        let gestureRecognizer = UILongPressGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUIPanGestureRecognizerClosure() {
        let gestureRecognizer = UIPanGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUIPinchGestureRecognizerClosure() {
        let gestureRecognizer = UIPinchGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUIRotationGestureRecognizerClosure() {
        let gestureRecognizer = UIRotationGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUIScreenEdgePanGestureRecognizerClosure() {
        let gestureRecognizer = UIScreenEdgePanGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUISwipeGestureRecognizerClosure() {
        let gestureRecognizer = UISwipeGestureRecognizer(direction: .Left) { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }

    func testUITapGestureRecognizerClosure() {
        let gestureRecognizer = UITapGestureRecognizer { gestureRecognizer in
            self.gestureRecognizerPassedToClosure = gestureRecognizer
        }
        testGesture(gestureRecognizer)
    }
}

private extension UIGestureRecognizerClosuresTests {

    private func testGesture<T: UIGestureRecognizer>(gestureRecognizer: T) {
        let handler: ClosureHandler<T> = gestureRecognizer.handler()
        handler.handle()
        expect(self.gestureRecognizerPassedToClosure).to(equal(gestureRecognizer))
    }
}