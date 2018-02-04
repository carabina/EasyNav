//
//  NavUITests.swift
//  NavUITests
//
//  Created by elena verona on 04/02/2018.
//  Copyright © 2018 ios. All rights reserved.
//

import XCTest
@testable import Nav

class NavUITests: XCTestCase {
    
    var controller:NavView!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        let storyboard = UIStoryboard(name:"NavView", bundle: Bundle.main)
        //controller = storyboard.instantiateInitialViewController() as! NavView
        controller = storyboard.instantiateViewController(withIdentifier: NavView) as NavView
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        controller = nil
    }
    
    func testtapShow() {
        let _ = controller.view
        let contact = self.controller.contactButton
        controller.moreButton.sendActions(for : .touchUpInside)
        
        XCTAssertEqual(contact?.alpha,1)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testtapHide() {
        let _ = controller.view
        let contact = self.controller.contactButton
        controller.moreButton.sendActions(for : .touchUpInside)
        controller.moreButton.sendActions(for : .touchUpInside)
        XCTAssertEqual(contact?.alpha,0)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

