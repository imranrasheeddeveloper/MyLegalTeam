//
//  PendingRequestCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class PendingRequestCell: UITableViewCell {

    @IBOutlet weak var requestTitlelbl: UILabel!
    @IBOutlet weak var subDescription: UILabel!
    @IBOutlet weak var bgView : UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
