//
//  FAQCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 26/06/2023.
//

import UIKit

class FAQCell: UITableViewCell {

    @IBOutlet weak var frequentlylbl: UILabel!
    @IBOutlet weak var viewAlllbl: UILabel!
    @IBOutlet weak var smartPayAccountlbl: UILabel!
    @IBOutlet weak var youCanCreatelbl: UILabel!
    @IBOutlet weak var bgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = 10
        bgView.layer.borderColor = UIColor.buttonBorderColor().cgColor
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
