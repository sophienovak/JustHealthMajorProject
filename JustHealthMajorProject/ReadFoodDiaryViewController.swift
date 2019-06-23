//
//  ReadFoodDiaryViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit
import CoreData

class ReadFoodDiaryViewController: UIViewController {

    @IBOutlet weak var showFoods: UITextView!
    
    @IBAction func deleteFood(_ sender: Any) {
        let fetchrequest=NSFetchRequest<NSFetchRequestResult>(entityName:"BreakfastNotes")
        
        let batchDeleteRequest=NSBatchDeleteRequest(fetchRequest:fetchrequest)
        
        do{
            try managedObjectContext.execute(batchDeleteRequest)
            showFoods.text="Deleted"
        }
        catch let error as NSError{
            showFoods.text=error.localizedFailureReason
        }
    }
    
    
    let managedObjectContext=(UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let entityDescription=NSEntityDescription.entity(forEntityName: "BreakfastNotes", in: managedObjectContext)
        
        let request=NSFetchRequest<NSFetchRequestResult>(entityName:"BreakfastNotes")
        
        request.entity=entityDescription
        do {
            let result=try managedObjectContext.fetch(request)
            
            let formatter=DateFormatter()
            formatter.dateFormat="EEEE MMM d, yyyy hh:mm a"
            
            if(result.count>0){
                for anote in result {
                let match=anote as! NSManagedObject
                let thenote=match.value(forKey: "foodnote") as? String
                let thedate=match.value(forKey: "fooddate") as? Date
                    
                let thenotedate = formatter.string(from: thedate!)
                    
                showFoods.text=showFoods.text! + thenote! + "\n"
                showFoods.text=showFoods.text! + thenotedate + "\n"
                    showFoods.text=showFoods.text + "\n"
                }
            }
            else{
                showFoods.text="No foods saved"
            }
        }
        catch let error as NSError{
            showFoods.text=error.localizedFailureReason
        }
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
