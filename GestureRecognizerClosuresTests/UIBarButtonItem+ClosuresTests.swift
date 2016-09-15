import XCTest
import Nimble
@testable import GestureRecognizerClosures

class UIBarButtonItemClosuresTests: XCTestCase {

    var expectation: Bool!

    override func setUp() {
        super.setUp()
        expectation = false
    }

    func test_handlerProperty() {
        let image = UIImage()
        let style =  UIBarButtonItemStyle.plain
        let barButtonItem = UIBarButtonItem(image: image, style: style)
        expect(barButtonItem.target).to(beNil())
        expect(barButtonItem.handler).to(beNil())

        barButtonItem.handler = { barButtonItem in
            self.expectation = true
        }

        testHandler(barButtonItem: barButtonItem)
    }

    func test_initWithImageAndStyleAndClosure() {
        let image = UIImage()
        let style =  UIBarButtonItemStyle.plain
        let barButtonItem = UIBarButtonItem(image: image, style: style) { barButtonItem in
            self.expectation = true
        }

        expect(barButtonItem.image).to(equal(image))
        expect(barButtonItem.style).to(equal(style))
        testHandler(barButtonItem: barButtonItem)
    }

    func test_initWithImageLandscapeImagePhoneStyleAndClosure() {
        let image = UIImage()
        let landscapeImage = UIImage()
        let style =  UIBarButtonItemStyle.plain
        let barButtonItem = UIBarButtonItem(image: image, landscapeImagePhone: landscapeImage, style: style) { barButtonItem in
            self.expectation = true
        }

        expect(barButtonItem.image).to(equal(image))
        expect(barButtonItem.landscapeImagePhone).to(equal(landscapeImage))
        expect(barButtonItem.style).to(equal(style))
        testHandler(barButtonItem: barButtonItem)
    }

    func test_initWithTitleStyleAndClosure() {
        let title = "Next"
        let style =  UIBarButtonItemStyle.plain
        let barButtonItem = UIBarButtonItem(title: title, style: style) { barButtonItem in
            self.expectation = true
        }

        expect(barButtonItem.title).to(equal(title))
        expect(barButtonItem.style).to(equal(style))
        testHandler(barButtonItem: barButtonItem)
    }

    func test_initWithBarButtonSystemItemAndClosure() {
        let systemItem = UIBarButtonSystemItem.add
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: systemItem) { barButtonItem in
            self.expectation = true
        }

        // There is currently no way to verify that the UIBarButtonSystemItem is set correctly
        testHandler(barButtonItem: barButtonItem)
    }

    func test_initWithViewAndClosure() {
        let view = UIView()
        let barButtonItem = UIBarButtonItem(customView: view) { barButtonItem in
            self.expectation = true
        }

        expect(barButtonItem.customView).to(equal(view))
        testHandler(barButtonItem: barButtonItem)
    }
}

private extension UIBarButtonItemClosuresTests {

    func testHandler(barButtonItem: UIBarButtonItem) {
        barButtonItem.handler?(barButtonItem)
        expect(self.expectation).to(beTrue())

        let handler = barButtonItem.target as? ClosureHandler<UIBarButtonItem>
        expect(handler).to(beIdenticalTo(barButtonItem.closureHandler))
        expect(barButtonItem.action).to(equal(ClosureHandlerSelector))
    }
}
