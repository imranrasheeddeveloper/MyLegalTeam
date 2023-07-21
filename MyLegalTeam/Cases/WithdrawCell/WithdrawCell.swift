//
//  WithdrawCell.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class WithdrawCell: UITableViewCell {

    @IBOutlet weak var withdrawImg: UIImageView!
   
    @IBOutlet weak var withdrawName: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var starlbl: UIButton!
    
    @IBOutlet weak var withdrawTitle: UILabel!
    
    @IBOutlet weak var withDrawDescription: UILabel!
    @IBOutlet weak var rejectBtn: UIButton!
   
    @IBOutlet weak var bgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
