//
//  CatCellTableViewCell.swift
//  AlfaChuck
//
//  Created by Lukas Talacek on 07.09.2020.
//

import UIKit

class CatCellTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        super.setSelected(false, animated: true)

        // Configure the view for the selected state
    }
    
    

}
