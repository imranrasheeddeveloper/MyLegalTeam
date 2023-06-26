//
//  CourtReminderCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 19/06/2023.
//

import UIKit

class CourtReminderCell: UITableViewCell {

    @IBOutlet weak var courtDateLbl: UILabel!
    @IBOutlet weak var courtDateReminderLbl: UILabel!
    @IBOutlet weak var timeDatelbl: UILabel!
    @IBOutlet weak var clockBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = 10
        bgView.layer.shadowColor = UIColor.gray.cgColor
        bgView.layer.shadowOpacity = 0.3
        bgView.layer.shadowOffset = CGSize.zero
        bgView.layer.shadowRadius = 6
        bgView.layer.borderWidth = 1
        bgView.layer.borderColor = UIColor.primaryColor.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        func setup(_ slide: OnboardingSlide) {
           
    }
        
        

}

    @IBAction func didClickNextController(_ sender: Any) {
        
    }
}
