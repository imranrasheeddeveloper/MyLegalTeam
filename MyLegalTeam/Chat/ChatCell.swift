//
//  ChatCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 11/07/2023.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet weak var profileImg : UIImageView!
    @IBOutlet weak var profilelbl: UILabel!
    @IBOutlet weak var profileSublbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
