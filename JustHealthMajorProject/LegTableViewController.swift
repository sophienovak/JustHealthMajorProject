//
//  LegTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 28/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class LegTableViewController: UITableViewController {
    
    var legExercises=["Squats","Lunges","Deadlift","Box Jumps","Skaters"]
    
    var legImages=["legEx","lungeLeg","deadliftLeg","boxjumpLeg","skaterLeg"]
    
    var legExample=["Stand with your feet outside your hips and toes slightly facing outwards, bend your knees but keep your chest up. It will feel as if you are going to sit back on a chair, once your hips are at knee height then extend your legs so they are straight again. Repeat this 30 times for 5 sets.","Stand with your feet below your hips, then take one leg straight forward. Bend the rear knee until it almost touches the floor, then extend it back up. Repear this 20 times for 4-5 sets on each leg.","Get a heavy weight if you have one, if not any weight will do. Stand up straight with your feet directly below your hips with the weight in each hand in front of you. Begin by slightly bending your knees and pushing your hips right back until you feel the tension in the back of your legs. Lower until the weights are level with your knees and then extend back up. Repeat this move 20 times for 2 sets.","Firstly, get a non-slip mat and a stable box which you are able to jump on. Put the box onto the non-slip mat, simply bend your knees and jump onto the box. You can have the box as big or as small as you like to start and get comfortable. Once you have jumped onto the box, keep your knees bent and jump backwards off it onto the floor. Repeat this 10 times for 3 sets.","Begin standing with your feet directly below your hips, then cross your left leg behind your right leg as you bend your right knee, then jump to the other side. Repeat this 15 times for 2-3 sets."]

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
        return self.legExercises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="LegCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! LegTableViewCell

        cell.nameLabel?.text=legExercises[indexPath.row]
        cell.repsLabel?.text=legExample[indexPath.row]
        
        cell.thumbnailImage?.image=UIImage(named:legImages[indexPath.row])

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
