//
//  FoodItem.swift
//  FoodTracker
//
//  Created by Sohrab Hussain on 2/27/18.
//  Copyright © 2018 ERES. All rights reserved.
//

import UIKit

class FoodItem: NSObject {
    
    //MARK: Properties
    
    var date: String = ""
    var amount: Float = 0.0
    var persons: NSInteger = 0
    
    //MARK: Initialization
    
    init?(date: String , amount: Float , persons: NSInteger )
    {
        // Initialization should fail if there is no person or no name or amount is zero.
        if persons == 0 ||  amount == 0 || date.isEmpty
        {
            return nil
        }
        
        // Initialize stored properties.
        self.date = date
        self.amount = amount
        self.persons = persons
    }
    
}
