//
//  LoginVC.swift
//  IamHere
//
//  Created by Imran Rasheed on 06/09/2022.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var loginBtn : UIButton!
    @IBOutlet weak var signupLbl: UILabel!
    @IBOutlet weak var emailTF : UITextField!
    @IBOutlet weak var passwordTF : UITextField!
    @IBOutlet weak var forgotPasswordLbl : UILabel!
    var viewModel = LoginViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        emailTF.delegate = self
        passwordTF.delegate = self
        loginBtn.configure(13)
        emailTF.textfiledRoundview(13)
        passwordTF.textfiledRoundview(13)
        passwordTF.isSecureTextEntry = true
        passwordTF.enablePasswordToggle()
        let tap = UITapGestureRecognizer(target: self, action: #selector(redirectToSignup))
        signupLbl.addGestureRecognizer(tap)
        
        let forgotPasswordtTap = UITapGestureRecognizer(target: self, action: #selector(redirectToForgotPassword))
        forgotPasswordLbl.addGestureRecognizer(forgotPasswordtTap)
        
    }
    
    @objc func redirectToSignup(){
        RedirectionHelper.redirectToSignup(self)
    }
    
    @objc func redirectToForgotPassword(){
        RedirectionHelper.redirectToForgotPasswordVC(self)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        let stortyBoard = UIStoryboard(name: "Main", bundle: nil)
                let vc = stortyBoard.instantiateViewController(identifier: "ForgotPasswordVC")
           self.navigationController?.pushViewController(vc, animated: true)
        self.view.endEditing(true)
        viewModel.validateInput(emailTF.text, password: passwordTF.text) { [weak self] (success, message) in
            if success {
                self?.performAPICall()
            } else {
                self?.showAlert("Error!", message: message!, actions: ["Ok"]) { (actionTitle) in
                    print(actionTitle)
                }
            }
        }
    }
   
    func didLoginSuccessFully(socialType: SocialLoginType) {
        ///
    }
    
    func showGoogleSignInPresentingViewController() {
        /////
    }
    func performAPICall() {
        
        let requestModel = LoginRequestModel(email: emailTF.text!, password: passwordTF.text!)
        
        viewModel.login(requestModel, completion: {[self] result in
            switch result{
            case .success(let data):
                if let data = data{
                    if data.success{
                        UserDefaults.standard.save(customObject: data, inKey: "userData")
                        RedirectionHelper.redirectToHome()
                    }else{
                        self.showAlert("Error", message: data.message, actions: ["okay"], completion: {_ in
                            self.dismiss(animated: true, completion: nil)
                        })
                    }
                }
            case .failure(let error):
                self.showAlert("Eror", message: error.localizedDescription, actions: ["Okay"], completion: {_ in
                    self.dismiss(animated: true)
                })
                
            }
        })
        
    }
    
}
extension LoginVC: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTF {
            passwordTF.becomeFirstResponder()
        }
        else if textField == passwordTF {
            self.loginAction(loginBtn)
        }
        return true
    }
}
