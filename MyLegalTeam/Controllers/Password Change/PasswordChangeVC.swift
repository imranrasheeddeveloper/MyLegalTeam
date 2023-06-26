//
//  PasswordChangeVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 08/06/2023.
//

import UIKit

class PasswordChangeVC: UIViewController {

    @IBOutlet weak var backToLoginBtn : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        backToLoginBtn.configure(13)

       
    }
    

    @IBAction func didClickLoginBtn(_ sender: Any) {
    }
    
}
