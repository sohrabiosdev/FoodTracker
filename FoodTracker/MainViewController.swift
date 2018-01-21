//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sohrab Hussain on 12/25/17.
//  Copyright © 2017 ERES. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var lblNoData: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ERES FOOD TRACKER"
        addBarButtonPlus()
        addBackgroundGradient()
        //displayFoodOrderList()
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
        let tableView: FoodOrderListViewController = FoodOrderListViewController(nibName: "FoodOrderListViewController", bundle: Bundle.main)
        tableView.view.frame = CGRect(x: 10, y: 64, width: getScreeWidth() , height: getScreeHeight()-64)
        self.addChildViewController(tableView)
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
    
    func addBackgroundGradient() {
        let gradient: CAGradientLayer = CAGradientLayer()
        
        gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    // MARK: - Table view data source
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60.0;//Choose your custom row height
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForFoodOrderTableViewCell", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }

}

