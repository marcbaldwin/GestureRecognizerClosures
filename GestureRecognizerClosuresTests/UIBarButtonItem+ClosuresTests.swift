import XCTest
import Nimble
@testable import GestureRecognizerClosures

class UIBarButtonItemClosuresTests: XCTestCase {

    var expectation: Bool!

    override func setUp() {
        super.setUp()
        expectation = false
    }

    func test_initWithTitleStyleAndClosure() {

        let title = "Next"
        let style =  UIBarButtonItemStyle.Plain
        let barButtonItem = UIBarButtonItem(title: title, style: style) { barButtonItem in
            self.expectation = true
        }

        let handler = barButtonItem.target as? ClosureHandler<UIBarButtonItem>
        handler?.handle()

        expect(barButtonItem.title).to(equal(title))
        expect(barButtonItem.style).to(equal(style))
        expect(handler).to(beIdenticalTo(barButtonItem.handler))
        expect(barButtonItem.action).to(equal(ClosureHandlerSelector))
        expect(self.expectation).to(beTrue())
    }

    func test_initWithBarButtonSystemItemAndClosure() {
        let systemItem = UIBarButtonSystemItem.Add
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: systemItem) { barButtonItem in
            self.expectation = true
        }

        let handler = barButtonItem.target as? ClosureHandler<UIBarButtonItem>
        handler?.handle()

        // No way to verify the UIBarButtonSystemItem is correct
        expect(handler).to(beIdenticalTo(barButtonItem.handler))
        expect(barButtonItem.action).to(equal(ClosureHandlerSelector))
        expect(self.expectation).to(beTrue())
    }
}