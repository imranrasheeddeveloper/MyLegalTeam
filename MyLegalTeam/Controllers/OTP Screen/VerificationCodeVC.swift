//
//  VerificationCodeVC.swift
//  ModernFarm
//
//  Created by MacBook on 08/04/2023.
//

import UIKit

class VerificationCodeVC: UIViewController {

    @IBOutlet weak var verifyBtn : UIButton!
        @IBOutlet weak var resendEmaillbl : UILabel!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            verifyBtn.configure(13)
            self.navigationController?.navigationBar.isHidden = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(redirectToLogin))
            resendEmaillbl.addGestureRecognizer(tap)
        }
        
        @objc func redirectToLogin(sender:UITapGestureRecognizer) {
            RedirectionHelper.redirectToResetPasswordVC(self)
    }
       
        @IBAction func didClickVerifyBtn(_ sender: UIButton) {
            RedirectionHelper.redirectToResetPasswordVC(self)
        }
    }
        
