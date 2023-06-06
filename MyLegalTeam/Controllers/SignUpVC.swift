//
//  SignUpVC.swift
//  ModernFarm
//
//  Created by MacBook on 30/03/2023.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var accountBtn : UIButton!
    @IBOutlet weak var plusBtn : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        accountBtn.layer.cornerRadius = 10
        plusBtn.layer.cornerRadius = 7
        plusBtn.layer.shadowColor = UIColor.white.cgColor
        plusBtn.layer.shadowOpacity = 1.0;
        plusBtn.layer.shadowRadius = 0.0;
        
    }
    

    

}
