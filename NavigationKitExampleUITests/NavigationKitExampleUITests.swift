//
//  NavigationKitExampleUITests.swift
//  NavigationKitExampleUITests
//
//  Created by Salah on 3/27/22.
//  Copyright © 2022 Salah. All rights reserved.
//

import XCTest
import NavigationKitExample

class NavigationKitExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testExample() throws {
                // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        XCUIApplication().launch()
        
//        var a = app.windows.firstMatch.value
//        print("a\(a)");
////
//        let button = app.navigationBars.element(boundBy: 0)
//        let frame = button.frame
//        let xPosition = frame.origin.x
//        let yPosition = frame.origin.y
//        var a2 = app.navigationBars.scrollBars.colorWells.element;
//        let a:Any = app.navigationBars["First"].outlines.
//        XCTAssertNotNil(a);
//        var a = app.navigationBars.colorWells.elem
        
//        print("new \(type(of: a))")
//        XCTAssertEqual(app.staticTexts["First"].value, UIColor.black)
//        var element = app.navigationBars.element(matching: .any, identifier: "First")
//        print(element);
        
//        let nextStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["Next"]/*[[".buttons[\"Next\"].staticTexts[\"Next\"]",".staticTexts[\"Next\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        nextStaticText.tap()
//        nextStaticText.tap()
//        nextStaticText.tap()
//        app.buttons["Next"].tap()
//        app/*@START_MENU_TOKEN@*/.staticTexts["Refresh Style"]/*[[".buttons[\"Refresh Style\"].staticTexts[\"Refresh Style\"]",".staticTexts[\"Refresh Style\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            
 
        }
    }
}
