//
//  MvvmTestTests.swift
//  MvvmTestTests
//
//  Created by Pavel Nikitinskiy on 11/11/16.
//  Copyright © 2016 Pavel Nikitinskiy. All rights reserved.
//

import XCTest
@testable import MvvmTest

class MvvmTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCarViewModelWithFerrariF12()  {
        let  ferraryF12 = Car(model: "F12", make: "Ferrary", horsepower: 730, photoURL: "http://auto.ferrari.com/en_EN/wp-content/uploads/sites/5/2013/07/Ferrari-F12berlinetta.jpg")
        let ferraryViewModel = CarViewModel(car: ferraryF12)
        XCTAssertEqual(ferraryViewModel.modelText, "F12")
        XCTAssertEqual(ferraryViewModel.makeText, "Ferrary")
        XCTAssertEqual(ferraryViewModel.horsepowerText, "730 HP")
        XCTAssertEqual(ferraryViewModel.photoURL, NSURL(string: ferraryF12.photoURL))
        XCTAssertEqual(ferraryViewModel.titleText, "Ferrary F12")
        
        
    }
    
}
