//
//  ViewController.swift
//  MixedDrinks - Lemonade game
//  Working on increment and decrement buttons
//  Created by Rosie  on 1/3/16.
//  Copyright © 2016 Rosie . All rights reserved.
//

import UIKit
import CoreData

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
    @IBOutlet weak var amntLemon: UITextField!
    @IBOutlet weak var amntSugar: UITextField!
    @IBOutlet weak var amntCube: UITextField!
    
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
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        // References the App Delegate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        // References the Context / Information
        
        let newInventory = NSEntityDescription.insertNewObjectForEntityForName("Inventory", inManagedObjectContext: context)
        // Add new inventory items to the database with context from Entity Inventory 
        
        newInventory.setValue(amntLemon.text, forKey: "lemons")
        newInventory.setValue(amntCube.text, forKey: "cubes")
        newInventory.setValue(amntSugar.text, forKey: "sugar")
        
        do {
            try context.save()
        } catch {
            //error handling 
            print("There was an error saving data.")
        }
        
        print(newInventory)
        print("Object saved")
        
            } // end funct
    
    // LOAD inventory amounts
    @IBAction func LoadData(sender: UIButton) {
        let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        // References the App Delegate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        // References the Context / Information

        // RETRIEVE Data that was saved
        do {
            let request = NSFetchRequest(entityName: "Inventory")
            // ask for a request
            let results:NSArray = try context.executeFetchRequest(request)
            // store all information sent back into rsults
            
            if (results.count > 0){ // If there is information then print it out
                for res in results{
                    let lem = res.valueForKey("lemons")
                    let sug = res.valueForKey("sugar")
                    let cub = res.valueForKey("cubes")
                    print("Lemons " + (lem! as! String)) // Print out information as strings 
                    print("Sugar " + (sug! as! String))
                    print("Cubes " + (cub! as! String))
                    
                } // end for loop
            }else{                  // If there is no information inform user
                print("There are no results to load")
            } // end if statement
            
        } catch {
            //error handling
            print("There was an error retrieving data.")
        } // end do catch

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
