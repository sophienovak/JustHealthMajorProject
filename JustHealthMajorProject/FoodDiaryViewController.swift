//
//  FoodDiaryViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class FoodDiaryViewController: UIViewController, UITextViewDelegate {

    var changed:Bool=false
    
    @IBOutlet weak var reportLabel: UILabel!
    
    
    @IBOutlet weak var breakfastTxtArea: UITextView!
    
    
    let managedObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBAction func saveFood(_ sender: Any) {
        
        let enddesc=NSEntityDescription.entity(forEntityName: "BreakfastNotes", in: managedObjectContext)
        
        let newfood=BreakfastNotes(entity: enddesc!, insertInto:managedObjectContext)
        
        newfood.foodnote=breakfastTxtArea.text
        let now=NSDate()
        newfood.fooddate=now
        
        do {
            try managedObjectContext.save()
            textViewDidEndEditing(breakfastTxtArea)
            reportLabel.text="The food has been saved"
        }
        catch let error as NSError{
            reportLabel.text=error.localizedFailureReason
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        breakfastTxtArea.resignFirstResponder()
        changed=false
    }
    
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if changed == false{
            textView.text=""
            changed=true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

         breakfastTxtArea.delegate=self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
