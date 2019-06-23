//
//  BreakfastTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class BreakfastTableViewController: UITableViewController {
    
    var breakfastName=["Avocado on toast","Healthy pancakes","Overnight oats","Porridge","Scarambled egg"]
    
    var calories=["501kcal for two slices of toast with avocado","53kcal per pancake","348kcal per jar","175kcal per bowl","150kcal for one slice of toast"]
    
    var ingredients=["1 avocado, 1/2 lemon, 2 slices of bread, salt and pepper","50g self-raising flour, 50g wholemeal flour, 2 eggs, 150ml skimmed milk","80g granola and oats, 2 tbsp greek yoghurt, mixed berries","50g porridge oats, 350ml milk or water or both, 1tbsp greek yoghurt","2 eggs, 6 tbsp single cream, 50g butter, 1 slice of bread"]
    
    var recipeBreak=["1. Toast the two slices of bread 2. Cut the avocado in half, take the stone out and scoop the flesh out and put into bowl. 3. Squeeze in lemon juice and add salt and pepper to taste, mash up. 4. Put the avocado on top of the toast","1. Sift the flours into a bowl, add the egg yolks and a splash of milk, stir. Add remaining milk and stir. 2. Whisk the egg whites until they are set, then fold into batter. 3. Heat pan over medium heat and pour enough batter for one pancake, cook until bubbles appear. Carefully flip until its golden brown","1. Place all ingredients into mason jar and place in fridge overnight.","1. Put all porrigde oats into a pan and pour 350ml milk or water. Bring to boil and simmer for 4-5 minutes. Add greek yoghurt on top.","1. Lightly whisk the eggs, add all single cream. Meanwhile heat pan and add butter and toast the bread. 2. Pour in egg mixture and do not stir for 20 seconds. Then stir with wooden spoon, folding it. Repeat this step but leave it for 10 seconds instead. 3. Remove from the heat and put on toast"]

    var breakImages=["avocadoBreak", "breakfastRec","granolaBrek","porridgeBreak","scrambledeggBreak"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.breakfastName.count
    }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cellIdentifier="BreakfastCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BreakfastTableViewCell
            
            cell.nameLabel?.text=breakfastName[indexPath.row]
            
            cell.calorieLabel?.text=calories[indexPath.row]
            
                cell.ingredientLabel?.text=ingredients[indexPath.row]
            
            cell.recipeLabel?.text=recipeBreak[indexPath.row]
            
            cell.thumbnailImage?.image=UIImage(named:breakImages[indexPath.row])
            

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
