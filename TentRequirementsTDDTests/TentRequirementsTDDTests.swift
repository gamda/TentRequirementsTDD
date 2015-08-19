//
//  TentRequirementsTDDTests.swift
//  TentRequirementsTDDTests
//
//  Created by Daniel Garcia on 8/18/15.
//  Copyright (c) 2015 Daniel Garcia. All rights reserved.
//

import UIKit
import XCTest

class TentRequirementsTDDTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLengthGretaerThanTenButLessThanTwenty() {
        // This tent is not common size, the program should
        //  round down to length 10
        
        do {
            _ = try TentModel(newLength: 15)
        } catch TentModel.TentError.InputNotMultipleOfTen {
            XCTAssert(true, "Should throw on input that is not multiple of 10")
        } catch {
            XCTAssert(false, "Something went wrong")
        }
    }

    func testLenghtTen() {
        do {
            let myTentModel = try TentModel(newLength: 10)
            XCTAssert(myTentModel.threeT() == 6, "3-T must be 6")
            XCTAssert(myTentModel.fourT() == 3, "4-T must be 3")
            XCTAssert(myTentModel.tenFeet() == 6, "10ft must be 6")
            XCTAssert(myTentModel.eightFeet() == 6, "8ft must be 6")
            XCTAssert(myTentModel.sixFeet() == 6, "6ft must be 6")
            XCTAssert(myTentModel.lamps() == 1, "Lamps must be 1")
        } catch TentModel.TentError.InputNotMultipleOfTen {
            XCTAssert(false, "Should not fail creation with 10")
        } catch {
            XCTAssert(false, "Something went wrong")
        }
    }
    
    func testLenghtTwenty() {
        do {
            let myTentModel = try TentModel(newLength: 20)
            XCTAssert(myTentModel.threeT() == 6, "3-T must be 6")
            XCTAssert(myTentModel.fourT() == 3, "4-T must be 3")
            XCTAssert(myTentModel.tenFeet() == 12, "10ft must be 12")
            XCTAssert(myTentModel.eightFeet() == 6, "8ft must be 6")
            XCTAssert(myTentModel.sixFeet() == 0, "6ft must be 0")
            XCTAssert(myTentModel.lamps() == 1, "Lamps must be 1")
        } catch TentModel.TentError.InputNotMultipleOfTen {
        XCTAssert(false, "Should not fail creation with 20")
        } catch {
        XCTAssert(false, "Something went wrong")
        }
    }

    func testLenghtThirty() {
        do {
            let myTentModel = try TentModel(newLength: 30)
            XCTAssert(myTentModel.threeT() == 6, "3-T must be 6")
            XCTAssert(myTentModel.fourT() == 6, "4-T must be 6")
            XCTAssert(myTentModel.tenFeet() == 17, "10ft must be 17")
            XCTAssert(myTentModel.eightFeet() == 8, "8ft must be 8")
            XCTAssert(myTentModel.sixFeet() == 0, "6ft must be 0")
            XCTAssert(myTentModel.lamps() == 1, "Lamps must be 1")
        } catch TentModel.TentError.InputNotMultipleOfTen {
            XCTAssert(false, "Should not fail creation with 30")
        } catch {
            XCTAssert(false, "Something went wrong")
        }
    }
    
    func testLenghtForty() {
        do {
            let myTentModel = try TentModel(newLength: 40)
            XCTAssert(myTentModel.threeT() == 6, "3-T must be 6")
            XCTAssert(myTentModel.fourT() == 9, "4-T must be 9")
            XCTAssert(myTentModel.tenFeet() == 22, "10ft must be 22")
            XCTAssert(myTentModel.eightFeet() == 10, "8ft must be 10")
            XCTAssert(myTentModel.sixFeet() == 0, "6ft must be 0")
            XCTAssert(myTentModel.lamps() == 2, "Lamps must be 2")
        } catch TentModel.TentError.InputNotMultipleOfTen {
            XCTAssert(false, "Should not fail creation with 40")
        } catch {
            XCTAssert(false, "Something went wrong")
        }
    }
    
    func testLenghtFifty() {
        do {
            let myTentModel = try TentModel(newLength: 50)
            XCTAssert(myTentModel.threeT() == 6, "3-T must be 6")
            XCTAssert(myTentModel.fourT() == 12, "4-T must be 12")
            XCTAssert(myTentModel.tenFeet() == 27, "10ft must be 27")
            XCTAssert(myTentModel.eightFeet() == 12, "8ft must be 12")
            XCTAssert(myTentModel.sixFeet() == 0, "6ft must be 0")
            XCTAssert(myTentModel.lamps() == 2, "Lamps must be 2")
        } catch TentModel.TentError.InputNotMultipleOfTen {
            XCTAssert(false, "Should not fail creation with 50")
        } catch {
            XCTAssert(false, "Something went wrong")
        }
    }// bigger tents are very unlikely
    
    /*
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    */
}
