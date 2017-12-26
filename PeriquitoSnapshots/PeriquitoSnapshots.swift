//
//  PeriquitoSnapshots.swift
//  PeriquitoSnapshots
//
//  Created by Sam Bauch on 12/5/17.
//  Copyright © 2017 Sam Bauch. All rights reserved.
//

import XCTest

class PeriquitoSnapshots: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.

        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
//
//        XCUIApplication().otherElements.containing(.navigationBar, identifier:"Periquito.InstagramCollectionView").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .collectionView).element.tap()
        
        
        let app = XCUIApplication()
         snapshot("01CollectionView")
        app.collectionViews.children(matching: .cell).element(boundBy: 7).children(matching: .other).element.tap()
        
        let element = app.scrollViews.otherElements.containing(.table, identifier:"Empty list").children(matching: .other).element
        let textView = element.children(matching: .textView).element
        textView.tap()
        textView.typeText(" ")
        textView.typeText(XCUIKeyboardKey.delete.rawValue)
        snapshot("02Tweet")
        
    }
    
}
