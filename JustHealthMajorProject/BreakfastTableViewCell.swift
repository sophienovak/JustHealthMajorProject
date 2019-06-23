//
//  BreakfastTableViewCell.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 30/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class BreakfastTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var calorieLabel: UILabel!
    
    @IBOutlet weak var ingredientLabel: UILabel!
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
