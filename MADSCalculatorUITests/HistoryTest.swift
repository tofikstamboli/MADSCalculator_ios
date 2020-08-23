//
//  HistoryTest.swift
//  MADSCalculatorUITests
//
//  Created by Indiawyn Gaming on 23/08/20.
//  Copyright © 2020 myorg. All rights reserved.
//

import XCTest

class HistoryTest: XCTestCase {

    override func setUp() {
        
        continueAfterFailure = false

        XCUIApplication().launch()

    }


    func testExample1() {
        
        let app = XCUIApplication()
        app.textFields["Enter Value"].tap()
        let key = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        let key2 = app/*@START_MENU_TOKEN@*/.keys["4"]/*[[".keyboards.keys[\"4\"]",".keys[\"4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        let key3 = app/*@START_MENU_TOKEN@*/.keys["6"]/*[[".keyboards.keys[\"6\"]",".keys[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        let app2 = app
        app2/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"symbols\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let key4 = app2/*@START_MENU_TOKEN@*/.keys["*"]/*[[".keyboards.keys[\"*\"]",".keys[\"*\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        app2/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"numbers\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        let key5 = app2/*@START_MENU_TOKEN@*/.keys["3"]/*[[".keyboards.keys[\"3\"]",".keys[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key5.tap()
        let key6 = app2/*@START_MENU_TOKEN@*/.keys["/"]/*[[".keyboards.keys[\"\/\"]",".keys[\"\/\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key6.tap()
        let key7 = app2/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key7.tap()
        let key8 = app2/*@START_MENU_TOKEN@*/.keys["0"]/*[[".keyboards.keys[\"0\"]",".keys[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key8.tap()
        let key9 = app2/*@START_MENU_TOKEN@*/.keys["-"]/*[[".keyboards.keys[\"-\"]",".keys[\"-\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key9.tap()
        key2.tap()
        app.buttons["="].tap()
        app.buttons["History"].tap()
    }
    
    
    func test11thEntry(){
        let app = XCUIApplication()
        app.textFields["Enter Value"].tap()
        let key = app/*@START_MENU_TOKEN@*/.keys["5"]/*[[".keyboards.keys[\"5\"]",".keys[\"5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        for _ in 1...11 { // at 11th operation 1st will get removed from history
            
            app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"symbols\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
            
            let key2 = app/*@START_MENU_TOKEN@*/.keys["*"]/*[[".keyboards.keys[\"*\"]",".keys[\"*\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
            key2.tap()
            
            app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"numbers\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
            key.tap()
            
            app.buttons["="].tap()
            
        }
        
        app.buttons["History"].tap()

    }

}
