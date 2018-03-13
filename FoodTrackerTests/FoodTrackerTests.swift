//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Sohrab Hussain on 2/27/18.
//  Copyright © 2018 ERES. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    func testFoodItemInitializationSucceeds()  {
        let noPersonFoodItem = FoodItem.init(date: "22-11-2017", amount: 0, persons: 0)
        XCTAssertNotNil(noPersonFoodItem)
    }

}
    

