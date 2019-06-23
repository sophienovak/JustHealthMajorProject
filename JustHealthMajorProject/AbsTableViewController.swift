//
//  AbsTableViewController.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 28/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class AbsTableViewController: UITableViewController {

    var abExercises=["Plank","Russian Twists","Bicycle Crunches","Mountain Climbers","Leg Raises"]
    
    var abImages=["plankAb","russianAb","bicycleAb","mountainAb","legRaiseAb"]
    
    var abExample=["Also known as a 'hover' you place your forearms on the floor and go on your toes, you should not bend your back. Keep as straight as possible. You can also try this on your hands instead of your forearms. You should hold your plank as long as you can!","Sit down and hover your legs above the floor, then you should twist your torso from one side to another. This can be done using a weight or not. Repeat this 30 times for 5 sets.","Lay flat on the floor with your legs bent above you, begin to straighten the right leg and you take your right arm to meet with your left leg. Repeat this on both sides, 20 times for 3 sets.","Begin by dooing a plank on your hands, keep your arms straight, start to bring each leg up to your chest one at a time. Do this for 30 seconds 3 times.","Start by laying flat on the floor, keep your legs straight and bring them up off the ground and over your hips. Lower them down but do not touch the floor, then bring them back over your hips again. Repeat this for 30 seconds for 3 sets."]
    
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
        return self.abExercises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="AbsCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! AbsTableViewCell

        cell.nameLabel?.text=abExercises[indexPath.row]
            cell.repsLabel?.text=abExample[indexPath.row]
        cell.thumbnailImage?.image=UIImage(named:abImages[indexPath.row])

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
