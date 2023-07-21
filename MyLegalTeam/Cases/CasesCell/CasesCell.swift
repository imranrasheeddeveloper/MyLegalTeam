//
//  CasesCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class CasesCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var acceptBtn: UIButton!
    @IBOutlet weak var rejectBtn: UIButton!
    @IBOutlet weak var caseProfileImg: UIImageView!
    @IBOutlet weak var namelbl: UILabel!
    @IBOutlet weak var emaillbl: UILabel!
    @IBOutlet weak var hrlabel: UILabel!
    @IBOutlet weak var requestDescription: UILabel!
    @IBOutlet weak var requestTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        uiView()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func uiView()   {
        bgView.layer.cornerRadius = 10
                bgView.layer.shadowColor = UIColor.gray.cgColor
                bgView.layer.shadowOpacity = 0.3
                bgView.layer.shadowOffset = CGSize.zero
                bgView.layer.shadowRadius = 6
        self.bgView.layer.borderWidth = 0.30
        self.bgView.layer.borderColor = UIColor.gray.cgColor
        acceptBtn.clipsToBounds = true
        acceptBtn.layer.cornerRadius = 13
        acceptBtn.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        rejectBtn.clipsToBounds = true
        rejectBtn.layer.cornerRadius = 13
        rejectBtn.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner ]
        
    }
    
}
