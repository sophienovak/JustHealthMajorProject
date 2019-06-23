//
//  LunchTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class LunchTableViewController: UITableViewController {

    var lunchName=["Chicken salad","Pork noodles","Paella","Linguine","Pan-fried salmon"]
    
    var calories=["236kcal","423kcal","431kcal","450kcal","524kcal"]
    
    var ingredients=["1 chicken breast, 1/2 garlic clove, 1tbsp paprika, 1/2 lemon, 1/2 tbsp olive oil, corn, lettuce, 1/4 cucumber","2 spring onions, oil, broccoli, noodles, pork chunks, mushrooms, sweet and sour sauce, beansprouts","1/4 onion, 150g paella rice, 200g chopped tomatoes with garlic, 300ml chicken stock, handful of prawns","65g linguine, 1/2 lime, 1/2 avocado, 1/2 onion","Salmon fillet, oil, 20g unsalted butter, lemon juice"]
    
    var recipeLunch=["Cut chicken breasts how you like. Mix garlic, paprika, lemon juice and oil together and marinate the chicken for 15 minutes.   Heat pan and cook chicken until done.   Mix corn, lettuce and cucumber and top with chicken and drizzle over choice of dressing","Boil a pan of water, chop onions and fry the broccoli.   Put noodles into boiling water until soft. Add pork to the pan until it changes colour, then add the onions and mushrooms until they start to soften.   Stir in the sauce, drain and put noodles into pan with the beansprouts until the beansprouts soften slightly."," Heat pan and add the onion until its soft. Add paella and the can of tomatoes and chicken stock.   Cook for around 20 minutes until all the water is almost evaporated. Stir in the prawns and simmer until cooked.   Once all the water is evaporated and the prawns are cooked, serve."," Cook pasta according to the instructions. Meanwhile, put lime juice and zest in a bowl with the avocado flesh, tomatoes, onion and mix well.   Drain pasta and toss into bowl and mix well, can serve hot or cold.","Season the salmon with salt and pepper, put butter into pan over medium heat. Once the butter starts bubbling add salmon, skin-side-down and fry until crisp.   Flip fillets over and cook for a few more minutes until done."]
    
    var lunchImages=["chickenSaladLunch","noodlesLunch","paellaLunch","pastaLunch","salmonDinner"]
    
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
        return self.lunchName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="LunchCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! LunchTableViewCell

        cell.nameLabel?.text=lunchName[indexPath.row]
        
        cell.calorieLabel?.text=calories[indexPath.row]
        
        cell.ingredientLabel?.text=ingredients[indexPath.row]
        
        cell.recipeLabel?.text=recipeLunch[indexPath.row]
        
        cell.thumbnailImage?.image=UIImage(named:lunchImages[indexPath.row])

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
