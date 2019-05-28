//
//  CellTableViewCell.swift
//  SelkectTableView
//
//  Created by Ksush Shishk on 23.05.2019.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
