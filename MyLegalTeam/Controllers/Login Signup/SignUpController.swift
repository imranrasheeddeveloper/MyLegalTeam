//
//  SignUpController.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/06/2023.
//

import UIKit

class SignUpController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var loginlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView()
        loginlbl.isUserInteractionEnabled =  true
        let tap = UITapGestureRecognizer(target: self, action: #selector(login))
        loginlbl.addGestureRecognizer(tap)
        
    }
        @objc func login(){
            self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func backBtnClick(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func uiView()   {
        firstNameTF.textfiledRoundview(13)
        lastNameTF.textfiledRoundview(13)
        emailTF.textfiledRoundview(13)
        phoneTF.textfiledRoundview(13)
        passwordTF.textfiledRoundview(13)
        confirmPasswordTF.textfiledRoundview(13)
        signUpBtn.configure(13)
        passwordTF.enablePasswordToggle()
        confirmPasswordTF.enablePasswordToggle()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification:NSNotification) {

        guard let userInfo = notification.userInfo else { return }
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)

        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + 20
        scrollView.contentInset = contentInset
    }

    @objc func keyboardWillHide(notification:NSNotification) {

        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    
}
