//
//  PasswordResetVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 09/06/2023.
//

import UIKit

class PasswordResetVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var newPasswordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var resetBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        newPasswordTF.textfiledRoundview(13)
        confirmPasswordTF.textfiledRoundview(13)
        resetBtn.configure(13)
        newPasswordTF.enablePasswordToggle()
        confirmPasswordTF.enablePasswordToggle()
        
    }
    

    @IBAction func didClickResetBtn(_ sender: Any) {
    }
    
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
