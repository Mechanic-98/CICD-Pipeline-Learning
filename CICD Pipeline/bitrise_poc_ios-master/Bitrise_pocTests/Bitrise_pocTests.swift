//
//  Bitrise_pocTests.swift
//  Bitrise_pocTests
//
//  Created by TCS iMac on 15/05/19.
//  Copyright © 2019 Woodside UX. All rights reserved.
//

import XCTest
@testable import Bitrise_poc

class Bitrise_pocTests: XCTestCase {

    let A = 10, B = 5, C = 3
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testAdd(){
        XCTAssertEqual(A + B, 15)
    }
    
    func testSub(){
        XCTAssertEqual(A - B, 5)
    }
    
    func testMul(){
        XCTAssertEqual(A * B, 50)
    }
    

    func testadd1(){
        XCTAssertEqual(A + B + C, 18)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
