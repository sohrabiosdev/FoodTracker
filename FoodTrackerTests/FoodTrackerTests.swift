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
    
    // MARK: FoodItem Test Cases
    
    // Confirm that the FoodItem initializer returns a FoodItem object when passed valid parameters.
    func testFoodItemInitializationSucceeds()
    {
        // Positive amount
        let noPersonFoodItem = FoodItem.init(date: "22-11-2017", amount: 120.0, persons: 2)
        XCTAssertNotNil(noPersonFoodItem)
        
        // Zero amount
        let zeroAmountFoodItem = FoodItem.init(date: "22-11-2017", amount: 0.0, persons: 2)
        XCTAssertNil(zeroAmountFoodItem)
    }

}
    

