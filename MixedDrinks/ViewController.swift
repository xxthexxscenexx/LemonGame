//
//  ViewController.swift
//  MixedDrinks - Lemonade game
//
//  Created by Rosie  on 1/3/16.
//  Copyright © 2016 Rosie . All rights reserved.
//

import UIKit

// Main View Controller
class ViewController: UIViewController {
    // Variables for the Lemonade Game
    @IBOutlet weak var moneyMainView: UILabel! // Money listed on main view
    // Level
    // Day 
    // Time
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Added Functions for the lemonade game

}

// Status View Controller
class Status: UIViewController {
    // Variables for the Lemonade Game
    @IBOutlet weak var MoneyStatus: UILabel! // Money listed on status view 
    // Current status for supplies
    @IBOutlet weak var CurrentLemons: UILabel!
    @IBOutlet weak var CurrentSugar: UILabel!
    @IBOutlet weak var CurrentCubes: UILabel!
    // Purchase supplies 
    @IBOutlet weak var BuyLemons: UILabel!
    @IBOutlet weak var BuySugar: UILabel!
    @IBOutlet weak var BuyCubes: UILabel!
    // Mix drinks 
    @IBOutlet weak var NumLemons: UILabel!
    @IBOutlet weak var NumSugar: UILabel!
    @IBOutlet weak var NumCubes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Added Functions for the lemonade game
    // Purchase supplies buttons 
    @IBAction func incLemons(sender: UIButton) {
    }
    @IBAction func decLemons(sender: UIButton) {
    }
    @IBAction func incSugar(sender: UIButton) {
    }
    @IBAction func decSugar(sender: UIButton) {
    }
    @IBAction func incCubes(sender: UIButton) {
    }
    @IBAction func decCubes(sender: UIButton) {
    }
    
    // Mix drinks buttons
    @IBAction func addLemons(sender: UIButton) {
    }
    @IBAction func subLemons(sender: UIButton) {
    }
    @IBAction func addSugar(sender: UIButton) {
    }
    @IBAction func subSugar(sender: UIButton) {
    }
    @IBAction func addCubes(sender: UIButton) {
    }
    @IBAction func subCubes(sender: AnyObject) {
    }
    
}

// Game Play View Controller
class Play: UIViewController {
    // Variables for the Lemonade Game
    // Customers 
    // Taste preference 
    // Lemonade acidity and coldness
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Added Functions for the lemonade game
    
    
    
}


