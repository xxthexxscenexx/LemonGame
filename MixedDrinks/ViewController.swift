//
//  ViewController.swift
//  MixedDrinks - Lemonade game
//
//  Created by Rosie  on 1/3/16.
//  Copyright © 2016 Rosie . All rights reserved.
//

import UIKit
import CoreData

let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
let context: NSManagedObjectContext = appDel.managedObjectContext

let newInventory = NSEntityDescription.insertNewObjectForEntityForName("Inventory", inManagedObjectContext: context)

// MAIN CONTROLLER
class ViewController: UIViewController {
    // Variables for the Lemonade Game
    
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

// STATUS CONTROLLER
class Status: UIViewController {
    // Variables for the Lemonade Game
    @IBOutlet weak var amntLemons: UILabel!
    @IBOutlet weak var amntSugar: UILabel!
    @IBOutlet weak var amntCubes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Added Functions for the lemonade game
    // SAVE amount of inventory at the start of the day 
    @IBAction func startDay(sender: UIButton) {
        
        newInventory.setValue(100, forKey: "lemons")
        newInventory.setValue(100, forKey: "cubes")
        newInventory.setValue(100, forKey: "sugar")
        
        do {
            try context.save()
        } catch {
        //error handling 
        }
        
        print(newInventory)
        print("Object saved")
    }
    
}

// GAME CONTROLLER
class Play: UIViewController {
    // Variables for the Lemonade Game
    
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


