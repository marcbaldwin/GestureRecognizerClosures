//
//  Copyright (c) 2015 Marc Baldwin. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

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