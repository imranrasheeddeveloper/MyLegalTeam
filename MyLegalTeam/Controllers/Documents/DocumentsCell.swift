//
//  DocumentsCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 10/07/2023.
//

import UIKit

class DocumentsCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imgView : UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
