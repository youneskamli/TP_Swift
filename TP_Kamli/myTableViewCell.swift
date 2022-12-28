//
//  myTableViewCell.swift
//  TP_Kamli
//
//  Created by Younes Kamli on 09/12/2022.
//

import Foundation
import UIKit

class myTableViewCell: UITableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var myLabel: UILabel!
}
