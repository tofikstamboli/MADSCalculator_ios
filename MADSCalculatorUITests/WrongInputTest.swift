//
//  WrongInputTest.swift
//  MADSCalculatorUITests
//
//  Created by Indiawyn Gaming on 22/08/20.
//  Copyright © 2020 myorg. All rights reserved.
//

import XCTest

class WrongInputTest: XCTestCase {

    let app = XCUIApplication()
    
    
    override func setUp() {
        app.launch()
        continueAfterFailure = false
    }

    func testExample() {
        
        let app = XCUIApplication()
        let enterValueTextField = app.textFields["Enter Value"]
        enterValueTextField.tap()
        let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        let key3 = app/*@START_MENU_TOKEN@*/.keys["/"]/*[[".keyboards.keys[\"\/\"]",".keys[\"\/\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key2.tap()
        let ampersandKey = app/*@START_MENU_TOKEN@*/.keys["ampersand"]/*[[".keyboards.keys[\"ampersand\"]",".keys[\"ampersand\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        ampersandKey.tap()
        let okButton = app.alerts["Alert"].scrollViews.otherElements.buttons["OK"]
        okButton.tap()
        let key4 = app/*@START_MENU_TOKEN@*/.keys["-"]/*[[".keyboards.keys[\"-\"]",".keys[\"-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        let button = app.buttons["="]
        button.tap()
        okButton.tap()
        key4.tap()
        okButton.tap()
        key.tap()
        let key5 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key5.tap()
        app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"symbols\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let key6 = app/*@START_MENU_TOKEN@*/.keys["*"]/*[[".keyboards.keys[\"*\"]",".keys[\"*\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key6.tap()
        app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"numbers\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        key2.tap()
        key4.tap()
        button.tap()
        okButton.tap()
        key2.tap()
        key.tap()
        key4.tap()
        key4.tap()
        okButton.tap()

    }
    
    func testExample2(){
        
        let app2 = app
        let app = app2
        let enterValueTextField = app.textFields["Enter Value"]
        enterValueTextField.tap()
        let key = app2/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        let key2 = app2/*@START_MENU_TOKEN@*/.keys["-"]/*[[".keyboards.keys[\"-\"]",".keys[\"-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        enterValueTextField/*@START_MENU_TOKEN@*/.press(forDuration: 1.9);/*[[".tap()",".press(forDuration: 1.9);"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        key2.tap()
        enterValueTextField.tap()
        let key3 = app2/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        app.buttons["="].tap()
        let okButton = app.alerts["Alert"].scrollViews.otherElements.buttons["OK"]
        okButton.tap()
        
    }

}


