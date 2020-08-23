//
//  MADSCalculatorUITests.swift
//  MADSCalculatorUITests
//
//  Created by Indiawyn Gaming on 21/08/20.
//  Copyright © 2020 myorg. All rights reserved.
//

import XCTest

class MADSCalculatorUITests: XCTestCase {

    let app = XCUIApplication()
    
    
    override func setUp() {
        app.launch()
        continueAfterFailure = false
    }
    
    
    func testCorrectInputes() {
           
           app.textFields["Enter Value"].tap()
           let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key.tap()
           let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key2.tap()
           let shiftButton = app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"symbols\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
           shiftButton.tap()
           let key3 = app/*@START_MENU_TOKEN@*/.keys["*"]/*[[".keyboards.keys[\"*\"]",".keys[\"*\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key3.tap()
           shiftButton.tap()
           let key4 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key4.tap()
           shiftButton.tap()
           let key5 = app/*@START_MENU_TOKEN@*/.keys["+"]/*[[".keyboards.keys[\"+\"]",".keys[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key5.tap()
           shiftButton.tap()
           let key6 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key6.tap()
           let key7 = app/*@START_MENU_TOKEN@*/.keys["-"]/*[[".keyboards.keys[\"-\"]",".keys[\"-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
           key7.tap()
           key4.tap()
           app.buttons["="].tap()
           app.buttons["History"].tap()
           
       }
       
    
    func testReuseResult(){
        
        let app = XCUIApplication()
        app.textFields["Enter Value"].tap()
        let shiftButton = app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"symbols\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        let key = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        let key2 = app/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        let key3 = app/*@START_MENU_TOKEN@*/.keys["/"]/*[[".keyboards.keys[\"\/\"]",".keys[\"\/\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        let key4 = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        let key5 = app/*@START_MENU_TOKEN@*/.keys["-"]/*[[".keyboards.keys[\"-\"]",".keys[\"-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key5.tap()
        let key6 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key6.tap()
        shiftButton.tap()
        let key7 = app/*@START_MENU_TOKEN@*/.keys["*"]/*[[".keyboards.keys[\"*\"]",".keys[\"*\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key7.tap()
        shiftButton.tap()
        key.tap()
        let button = app.buttons["="]
        button.tap()
        shiftButton.tap()
        let key8 = app/*@START_MENU_TOKEN@*/.keys["+"]/*[[".keyboards.keys[\"+\"]",".keys[\"+\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key8.tap()
        shiftButton.tap()
        let key9 = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key9.tap()
        key4.tap()
        shiftButton.tap()
        key7.tap()
        shiftButton.tap()
        key6.tap()
        button.tap()
        
    }
    
}
