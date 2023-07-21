//
//  LawyersCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class LawyersCell: UITableViewCell {

    @IBOutlet weak var chatImg: UIImageView!
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var starbtn: UIButton!
    @IBOutlet weak var shapeBtn: UIButton!
   
    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 10
                bgView.layer.shadowColor = UIColor.gray.cgColor
                bgView.layer.shadowOpacity = 0.3
                bgView.layer.shadowOffset = CGSize.zero
                bgView.layer.shadowRadius = 6
        self.bgView.layer.borderWidth = 0.30
        self.bgView.layer.borderColor = UIColor.gray.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
