//
//  Property_Based_Testing_ExampleTests.swift
//  Property Based Testing ExampleTests
//
//  Created by Sebastian Grail on 23/8/17.
//  Copyright © 2017 Sebastian Grail. All rights reserved.
//

import XCTest
import SwiftCheck
@testable import Property_Based_Testing_Example


class Property_Based_Testing_ExampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMax() {
        property("max returns one of the inputs") <- forAll { (x: Int, y: Int) in
            let result = max(x, y)
            return result == x || result == y
        }
        
        property("the output of max is greater or equal than both inputs") <- forAll { (x: Int, y: Int) in
            let result = max(x, y)
            return result >= x && result >= y
        }
    }
    

}
