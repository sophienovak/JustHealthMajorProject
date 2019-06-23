//
//  AbsTableViewCell.swift
//  JustHealthMajorProject
//
//  Created by Sophie Novak on 28/04/2019.
//  Copyright © 2019 Sophie Novak. All rights reserved.
//

import UIKit

class AbsTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var repsLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
