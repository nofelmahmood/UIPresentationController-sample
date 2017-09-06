//
//  CustomTableViewCell.swift
//  UIPresentationController-sample
//
//  Created by Nofel Mahmood on 05/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
