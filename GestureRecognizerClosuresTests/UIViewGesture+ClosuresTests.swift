import UIKit
import XCTest

class UIViewGestureClosureTests: XCTestCase {

    var view: UIView!

    override func setUp() {
        super.setUp()
        view = UIView()
    }

    func testOnTap() {
        view.onTap { tap in

        }

        let tap = view.gestureRecognizers!.first as! UITapGestureRecognizer
        XCTAssertEqual(1, tap.numberOfTapsRequired)
    }

    func testOnDoubleTap() {
        view.onDoubleTap { doubleTap in

        }

        let doubleTap = view.gestureRecognizers!.first as! UITapGestureRecognizer
        XCTAssertEqual(2, doubleTap.numberOfTapsRequired)
    }

    func testOnLongPress() {
        view.onLongPress { longPress in

        }

        XCTAssertTrue(UILongPressGestureRecognizer.self === view.gestureRecognizers?.first?.dynamicType)
    }

    func testOnSwipeLeft() {
        view.onSwipeLeft { swipeLeft in

        }

        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        XCTAssertEqual(UISwipeGestureRecognizerDirection.Left, swipe.direction)
    }

    func testOnSwipeRight() {
        view.onSwipeRight { swipeRight in

        }

        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        XCTAssertEqual(UISwipeGestureRecognizerDirection.Right, swipe.direction)
    }

    func testOnSwipeUp() {
        view.onSwipeUp { swipeUp in

        }

        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        XCTAssertEqual(UISwipeGestureRecognizerDirection.Up, swipe.direction)
    }

    func testOnSwipeDown() {
        view.onSwipeDown { swipeDown in

        }

        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        XCTAssertEqual(UISwipeGestureRecognizerDirection.Down, swipe.direction)
    }

    func testOnPan() {
        view.onPan { pan in

        }

        XCTAssertTrue(UIPanGestureRecognizer.self === view.gestureRecognizers?.first?.dynamicType)
    }
    
    func testOnPinch() {
        view.onPinch { pinch in
            
        }
        
        XCTAssertTrue(UIPinchGestureRecognizer.self === view.gestureRecognizers?.first?.dynamicType)
    }

    func testOnRotate() {
        view.onRotate { rotate in

        }

        XCTAssertTrue(UIRotationGestureRecognizer.self === view.gestureRecognizers?.first?.dynamicType)
    }
}