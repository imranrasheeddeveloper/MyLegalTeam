//
//  ChangePasswordVC.swift
//  ModernFarm
//
//  Created by MacBook on 09/04/2023.
//

import UIKit

class ChangePasswordVC: UIViewController {

    @IBOutlet weak var currentPasswordTF : UITextField!
    @IBOutlet weak var newPasswordTF : UITextField!
    @IBOutlet weak var ConfirmNewPasswordTF : UITextField!
    @IBOutlet weak var updatePasswordBtn : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView ()
        
    }
    func setupView ()   {
        currentPasswordTF.textfiledRoundview(13)
        newPasswordTF.textfiledRoundview(13)
        ConfirmNewPasswordTF.textfiledRoundview(13)
        updatePasswordBtn.roundview(13)
        currentPasswordTF.enablePasswordToggle()
        newPasswordTF.enablePasswordToggle()
        ConfirmNewPasswordTF.enablePasswordToggle()
        
    }
    
}
