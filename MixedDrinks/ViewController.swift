//
//  ViewController.swift
//  MixedDrinks - Lemonade Game
//
//  Created by Rosie  on 1/3/16.
//  Copyright © 2016 Rosie . All rights reserved.
//

import UIKit
import CoreData
import Darwin

// GLOBAL VARIABLES 
let appDel:AppDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
// References the App Delegate
let context: NSManagedObjectContext = appDel.managedObjectContext
// References the Context / Information

// MAIN CONTROLLER
class ViewController: UIViewController {
    // Variables for the Lemonade Game
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // end funct

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // end funct
    
    // Added Functions for the lemonade game

} // end class



// STATUS CONTROLLER
class Status: UIViewController {
    // Variables for PURCHASE YOUR SUPPLIES
    @IBOutlet weak var amntLemon: UITextField!
    @IBOutlet weak var amntSugar: UITextField!
    @IBOutlet weak var amntCube: UITextField!
    // Variables for CURRENT STATUS 
    @IBOutlet weak var curLemon: UITextField!
    @IBOutlet weak var curSugar: UITextField!
    @IBOutlet weak var curCube: UITextField!
    
    // Loads previous game data into the current status controller
    override func viewWillAppear(animated: Bool) {
        
        // Do any additional setup after loading the view, typically from a nib.
        // RETRIEVE Data that was saved
        do {
            let request = NSFetchRequest(entityName: "Inventory")
            // ask for a request
            let results:NSArray = try context.executeFetchRequest(request)
            // store all information sent back into rsults
            
            if (results.count > 0){ // If there is information then print it out
                for res in results{
                    let lem = res.valueForKey("lemons")
                    curLemon.text = (lem! as! String)
                    
                    let sug = res.valueForKey("sugar")
                    curSugar.text = res.valueForKey("sugar")! as? String
                    let cub = res.valueForKey("cubes")
                    curCube.text = res.valueForKey("cubes")! as? String
                    
                    print("Lemons " + (lem! as! String)) // Print out information as strings
                    print("Sugar " + (sug! as! String))
                    print("Cubes " + (cub! as! String))
                    
                } // end for loop
            }else{                  // If there is no information inform user
                let newInventory = NSEntityDescription.insertNewObjectForEntityForName("Inventory", inManagedObjectContext: context)
                
                // Add new inventory items to the database with context from Entity Inventory
                // Adds the current data to the purchased amounts
                newInventory.setValue("0", forKey: "lemons")
                newInventory.setValue("0", forKey: "cubes")
                newInventory.setValue("0", forKey: "sugar")
            } // end if statement
            
        } catch {
            //error handling
            print("There was an error retrieving data.")
        } // end do catch
        
    } // end funct
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Added Functions for the lemonade game
    // Add new purchases into the inventory 
    // ** To be added ** update current inventory status
    @IBAction func startDay(sender: UIButton) {
        
        // UPDATING after purchases
        do {
            let request = NSFetchRequest(entityName: "Inventory")
            // ask for a request
            let results:NSArray = try context.executeFetchRequest(request)
            // store all information sent back into rsults
            
            if (results.count > 0){ // If there is information then print it out
                for res in results{
                    
                    // gets the last know values of the game
                    let lem = res.valueForKey("lemons")
                    let sug = res.valueForKey("sugar")
                    let cub = res.valueForKey("cubes")
                    
                    let newInventory = NSEntityDescription.insertNewObjectForEntityForName("Inventory", inManagedObjectContext: context)
                    
                    // Add new inventory items to the database with context from Entity Inventory
                    // Adds the current data to the purchased amounts
                    let aLem:Int = Int(curLemon.text!)! + Int(amntLemon.text!)!
                    let aSug:Int = Int(curSugar.text!)! + Int(amntSugar.text!)!
                    let aCub:Int = Int(curCube.text!)! + Int(amntCube.text!)!
                    
                    // Sets the new current data to the new amounts
                    newInventory.setValue(String(aLem), forKey: "lemons")
                    newInventory.setValue(String(aCub), forKey: "cubes")
                    newInventory.setValue(String(aSug), forKey: "sugar")
                    
                    do {
                        try context.save()
                        
                    } catch {
                        //error handling
                        print("There was an error saving data.")
                    }
                    
                    print(newInventory)
                    print("Object saved")
                    
                    print("Lemons " + (lem! as! String)) // Print out information as strings
                    print("Sugar " + (sug! as! String))
                    print("Cubes " + (cub! as! String))
                    
                    
                } // end for loop
            }else{                  // If there is no information inform user
            } // end if statement
            
        } catch {
            //error handling
            print("There was an error retrieving data.")
        } // end do catch

    } // end funct

    
    // ** To be added **  Link to next view controller 
    // ** To be added **  Take in drink mixer amounts and subtract from current inventory amounts - update invn.
    @IBAction func updateAndStart(sender: UIButton) {
    }
    
    @IBAction func REDO(sender: UIButton) {
        // Needed to delete core data and restart the game but once this is clicked, then the data is set back to all zeros when the game realizes there is no previous data to retrieve
        let request = NSFetchRequest(entityName: "Inventory")
            
        do {
            let incidents = try context.executeFetchRequest(request)
                
            if incidents.count > 0 {
                    
                for result: AnyObject in incidents{
                    context.deleteObject(result as! NSManagedObject)
                    print("NSManagedObject has been Deleted")
                }
                try context.save() }
        } catch {}
        
        exit(0)
        
    } // end fuct
    
} // end class


// GAME CONTROLLER
class Play: UIViewController {
    // Variables for the Lemonade Game
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // end funct
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // end funct
    
    // Added Functions for the lemonade game
    
} // end class
