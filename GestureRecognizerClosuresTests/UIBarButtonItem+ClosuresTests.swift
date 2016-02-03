import XCTest
import Nimble
@testable import GestureRecognizerClosures

class UIBarButtonItemClosuresTests: XCTestCase {

    func test_initWithTitleStyleAndClosure() {
        var expectation = false
        let title = "Next"
        let style =  UIBarButtonItemStyle.Plain
        let barButtonItem = UIBarButtonItem(title: title, style: style) { barButtonItem in
            expectation = true
        }

        let handler = barButtonItem.target as? ClosureHandler<UIBarButtonItem>
        handler?.handle()

        expect(barButtonItem.title).to(equal(title))
        expect(barButtonItem.style).to(equal(style))
        expect(handler).to(beIdenticalTo(barButtonItem.handler))
        expect(barButtonItem.action).to(equal("handle"))
        expect(expectation).to(beTrue())
    }
}