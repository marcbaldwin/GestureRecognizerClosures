import XCTest
import Nimble
@testable import GestureRecognizerClosures

class UIControlClosuresTests: XCTestCase {

    var expectation: Bool!
    var control: UIControl!

    override func setUp() {
        super.setUp()
        expectation = false
        control = UIButton()
    }

    func test_shouldAddTargetActionForSpecifiedControlEvents() {
        let target = control.on(.TouchDown) { [unowned self] _ in
            self.expectation = true
        }

        expect(self.expectation).to(beFalse())
        expect(self.control.allTargets().count).to(equal(1))
        expect(self.control.allControlEvents()).to(equal(UIControlEvents.TouchDown))
        expect(self.control.actionsForTarget(target, forControlEvent: .TouchDown)).to(equal([ClosureHandlerSelector.description]))

        (target as! ClosureHandler<UIControl>).handle()
        expect(self.expectation).to(beTrue())
    }
}