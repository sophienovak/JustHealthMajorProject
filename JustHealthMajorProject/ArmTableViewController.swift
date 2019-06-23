//
//  ArmTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 28/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class ArmTableViewController: UITableViewController {

    var armExercises=["Push Ups","Bicep Curls"," Triceps Overhead","Kettle Bells","Clean and Press"]
    
    var armImages=["pushArm","bicepArm","tricepArm","kettlebellArm","cleanpressArm"]
    
    var armExample=["Begin by doing a plank on your hands, keeping your back and arms straight, proceed to bend your arms until your chest reaches elbow height. Then straighten. Repeat this 10 times if you can!","Get a weight for each hand, as heavy or light as you want (could even be a tin of beans). Bend one arm at a time towards your chest but keeping your elbow pointing down at the floor, continue this with the other arm. Repeat this 10 times per arm for 2-3 sets.","Get one weight for both hands, again any weight is fine. Hold the weight in both hands above your heads, keeping your arms straight. Then bend your elbows so that the weight goes behind your head, try and keep your elbows in close to your ears as possible. Then straighten your arms again. Repeat this 10 times for 3 sets.","Get a slightly heavier weight than before, if possible. Hold it in both hands and put it between your legs, making sure your legs are slightly wider than your hips and your knees are bent. Using both legs and arms, swing the kettle bell until it is shoulder height, do not use your back! Repeat this 20 times for 3 sets.","Get any size weight for each arm. Begin by standing with both weights either side, then bring one weight up, bending your elbows until it is at shoulder height. Make sure you bend your knees! Then proceed to push the weight directly above your head, then bring it down using the same technique. Repeat on both arms for 20 times for 2 sets."]
    
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
        return self.armExercises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="ArmCell"
        let cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ArmTableViewCell

        cell.nameLabel?.text=armExercises[indexPath.row]
        cell.repsLabel?.text=armExample[indexPath.row]
        
        cell.thumbnailImage?.image=UIImage(named:armImages[indexPath.row])

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
