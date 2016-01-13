import UIKit
import XCTest
import Nimble

class UIViewGestureClosureTests: XCTestCase {

    var view: UIView!

    override func setUp() {
        super.setUp()
        view = UIView()
    }

    func testOnTap() {
        view.onTap { tap in }
        let tap = view.gestureRecognizers!.first as! UITapGestureRecognizer
        expect(tap.numberOfTapsRequired).to(equal(1))
    }

    func testOnDoubleTap() {
        view.onDoubleTap { doubleTap in }
        let doubleTap = view.gestureRecognizers!.first as! UITapGestureRecognizer
        expect(doubleTap.numberOfTapsRequired).to(equal(2))
    }

    func testOnLongPress() {
        view.onLongPress { longPress in }
        let _ = view.gestureRecognizers!.first as! UILongPressGestureRecognizer
    }

    func testOnSwipeLeft() {
        view.onSwipeLeft { swipeLeft in }
        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        expect(swipe.direction).to(equal(UISwipeGestureRecognizerDirection.Left))
    }

    func testOnSwipeRight() {
        view.onSwipeRight { swipeRight in }
        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        expect(swipe.direction).to(equal(UISwipeGestureRecognizerDirection.Right))
    }

    func testOnSwipeUp() {
        view.onSwipeUp { swipeUp in }
        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        expect(swipe.direction).to(equal(UISwipeGestureRecognizerDirection.Up))
    }

    func testOnSwipeDown() {
        view.onSwipeDown { swipeDown in }
        let swipe = view.gestureRecognizers!.first as! UISwipeGestureRecognizer
        expect(swipe.direction).to(equal(UISwipeGestureRecognizerDirection.Down))
    }

    func testOnPan() {
        view.onPan { pan in }
        let _ = view.gestureRecognizers!.first as! UIPanGestureRecognizer
    }
    
    func testOnPinch() {
        view.onPinch { pinch in }
        let _ = view.gestureRecognizers!.first as! UIPinchGestureRecognizer
    }

    func testOnRotate() {
        view.onRotate { rotate in }
        let _ = view.gestureRecognizers!.first as! UIRotationGestureRecognizer
    }
}