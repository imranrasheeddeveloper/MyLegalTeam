//
//  ContactInfoCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 04/07/2023.
//

import UIKit

class ContactInfoCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 10
               bgView.layer.shadowColor = UIColor.gray.cgColor
        self.bgView.layer.borderWidth = 0.1
        self.bgView.layer.borderColor = UIColor.gray.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
