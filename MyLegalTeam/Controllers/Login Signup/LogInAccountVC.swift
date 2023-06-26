//
//  LogInAccountVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/06/2023.
//

import UIKit

class LogInAccountVC: UIViewController {

    @IBOutlet weak var segments: UISegmentedControl!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var googleView: UIView!
    @IBOutlet weak var facebookView: UIView!
    @IBOutlet weak var forgotpasswordLbl: UILabel!
    @IBOutlet weak var createAccountLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView()
        segments.layer.cornerRadius = 13
            segments.layer.masksToBounds = true

        createAccountLbl.isUserInteractionEnabled = true
        let view = UITapGestureRecognizer(target: self, action: #selector(SignUpController))
        createAccountLbl.addGestureRecognizer(view)
    }
        @objc func SignUpController(){
            RedirectionHelper.redirectToSignUpController(self)
        
            
           }
    @IBAction func didClicklogInBtn(_ sender: UIButton) {
        RedirectionHelper.redirectToSignUpController(self)
    }
    
    @IBAction func didClickSegments(_ sender: Any) {
        switch segments.selectedSegmentIndex {
        case 0:
            emailLabel.text = "Phone Number"
            emailTF.text = "+923337373200"
            emailTF.textColor = UIColor.lightGray
        case 1:
            emailLabel.text = "Email"
            emailTF.text = "example@gmail.com"
            emailTF.textColor  = UIColor.lightGray
            
        default:
            break
        }
        
    }
    func uiView()   {
        emailLabel.text = "Email"
        emailTF.textfiledRoundview(13)
        passwordTF.textfiledRoundview(13)
        loginBtn.configure(13)
        googleView.layer.cornerRadius = 13
        facebookView.layer.cornerRadius = 13
            googleView.layer.shadowRadius = 2;
            googleView.layer.shadowOpacity = 0.3;
            googleView.layer.masksToBounds = false;
            googleView.clipsToBounds = false;
        facebookView.layer.shadowRadius = 2;
        facebookView.layer.shadowOpacity = 0.3;
        facebookView.layer.masksToBounds = false;
        facebookView.clipsToBounds = false;
        passwordTF.enablePasswordToggle()
        forgotpasswordLbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(OTPScreenVC))
        forgotpasswordLbl.addGestureRecognizer(tap)
        
        
    }

@objc func OTPScreenVC(){
    RedirectionHelper.redirectToFindYourVC(self)
}
   
}
