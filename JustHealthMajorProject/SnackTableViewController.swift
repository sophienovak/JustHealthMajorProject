//
//  SnackTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class SnackTableViewController: UITableViewController {

    var snackName=["Blueberry muffin","Fruit salad","Smoothie","Raspberry jelly","Egg sandwich"]
    
    var calories=["226kcal","100kcal","171kcal","191kcal","444kcal"]
    
    var ingredients=["50g unsalted butter, 70g caster sugar, 2 eggs,  125ml milk, 125g plain flour, blueberries, 1tsp baking powder","Fresh fruit of your choice","200ml carrot juice, 75g pineapple, 1 banana, 10g cashew nuts","Hartley's jelly 570ml water","Bread, 2 eggs, mayonnaise, 2 slices of bacon"]
    
    var recipeSnack=["Heat oven to 180C and line a muffin tin with paper cases. Beat the butter and caster sugar together until fluffy. Add eggs and beat for another minute, then mix the yoghurt, vanilla extract and milk.   Combine the flour and bicarb in a bowl with a pinch of salt, fold in blueberries.   Bake for 5 minutes then reduce temp to 160C and cook for around 17 minutes.","Chop up all of the fruits you have decided and put them all in one large bowl, you can keep the bowl overnight in the fridge","Put all of the ingredients into a blender and blend until smooth. Drink straight away or pour into a bottle for later.","Place jelly cubes into a microwave jug, add 100ml water and heat for around 1 minute. Stir until dissolved and pour in the rest of the water. Leave stand in fridge until set","Fry the slices of bacon until desired crispness. Boil the eggs until they are hard boiled (approx 8 minutes in boiling water). Peel the shell off the egg and mash the egg up on a plate. Add in some mayonnaise to the egg, then butter the bread and place all ingredients inside."]
    
    var snackImages=["blueberrySnack","fruitSnack","smoothieSnack","jellySnack","sandwichSnack"]
    
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
        return self.snackName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="SnackCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SnackTableViewCell

        cell.nameLabel?.text=snackName[indexPath.row]
        
        cell.calorieLabel?.text=calories[indexPath.row]
        
        cell.ingredientLabel?.text=ingredients[indexPath.row]
        
        cell.recipeLabel?.text=recipeSnack[indexPath.row]
        
        cell.thumbnailImage?.image=UIImage(named:snackImages[indexPath.row])

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
