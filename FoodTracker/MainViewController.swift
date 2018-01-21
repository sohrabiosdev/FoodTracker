//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sohrab Hussain on 12/25/17.
//  Copyright © 2017 ERES. All rights reserved.
//

import UIKit
import SQLite3

class MainViewController: UIViewController {

    @IBOutlet weak var lblNoData: UILabel!
    
    //Opaque pointers are used to represent C pointers to types that cannot be represented in Swift, such as incomplete struct types.
    
    // Database Variables
    var db : OpaquePointer?
    var fileURL: URL = URL(fileURLWithPath: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ERES FOOD TRACKER"
        addBarButtonPlus()
        displayFoodOrderList()
        // Do any additional setup after loading the view, typically from a nib.
        
        createDatabaseFile()
        openDatabase()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addBarButtonPlus()
    {
        let rightBtn : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(addItem(_:)))
        self.navigationItem.setRightBarButton(rightBtn, animated: true)
    }
    
    @objc func addItem(_ sender: UIBarButtonItem)
    {
        
    }
    
    func displayFoodOrderList()
    {
        let tableView: FoodOrderListViewController = FoodOrderListViewController()
        tableView.view.frame = CGRect(x: 10, y: 64, width: getScreeWidth() , height: getScreeHeight()-64)
        self.addChildViewController(tableView)
        self.view.addSubview(tableView.view)
        tableView.didMove(toParentViewController: self)
    }
    
    func getScreeWidth() -> Int {
        let width: Int = Int(UIScreen.main.bounds.width)
        return width
    }
    
    func getScreeHeight() -> Int {
        let height: Int = Int(UIScreen.main.bounds.height)
        return height
    }
    
    // MARK: Data base methods
    
    func createDatabaseFile()
    {
        // Creating DataBase File
       fileURL  = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("FoodTrackerDatabase.sqlite")
    }
    
    func openDatabase() {
        // Opening DataBase File
        if sqlite3_open(fileURL.path , &db) != SQLITE_OK
        {
            print("DATA BASE NOT CREATED...!!!")
        }
        else
        {
            print("DATA BASE CREATED AT = %@", fileURL.path)
        }
    }
}

