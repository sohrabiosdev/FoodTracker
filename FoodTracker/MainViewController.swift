//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sohrab Hussain on 12/25/17.
//  Copyright © 2017 ERES. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lblNoData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ERES FOOD TRACKER"
        addBarButtonPlus()
        displayFoodOrderList()
        // Do any additional setup after loading the view, typically from a nib.
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
        self.view.addSubview(tableView.view)
    }
    
    func getScreeWidth() -> Int {
        let width: Int = Int(UIScreen.main.bounds.width)
        return width
    }
    
    func getScreeHeight() -> Int {
        let height: Int = Int(UIScreen.main.bounds.height)
        return height
    }
}

