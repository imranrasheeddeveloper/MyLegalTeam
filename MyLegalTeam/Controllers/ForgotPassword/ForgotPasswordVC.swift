//
//  ForgotPasswordVC.swift
//  ModernFarm
//
//  Created by MacBook on 05/04/2023.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    @IBOutlet weak var emailTF : UITextField!
    @IBOutlet weak var resetPasswordBtn : UIButton!
    @IBOutlet weak var loginLbl : UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.textfiledRoundview(13)
        resetPasswordBtn.roundview(13)
        let tap = UITapGestureRecognizer(target: self, action: #selector(redirectToLogin))
        loginLbl.addGestureRecognizer(tap)
    }
    
    @objc func redirectToLogin(){
        RedirectionHelper.redirectToLogin(self)
    }
   
    
    @IBAction func didClickResetPassword(_ sender: UIButton) {
        RedirectionHelper.redirectToResetPasswordVC(self)
    }
}
