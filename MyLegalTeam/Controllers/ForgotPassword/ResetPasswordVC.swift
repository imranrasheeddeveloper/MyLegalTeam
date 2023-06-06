//
//  ResetPasswordVC.swift
//  ModernFarm
//
//  Created by MacBook on 05/04/2023.
//

import UIKit

class ResetPasswordVC: UIViewController {

    @IBOutlet weak var newPasswordTF : UITextField!
    @IBOutlet weak var confirmPasswordTF : UITextField!
    @IBOutlet weak var savePasswordBtn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView()  {
        newPasswordTF.textfiledRoundview(13)
        confirmPasswordTF.textfiledRoundview(13)
        savePasswordBtn.configure(13)
        newPasswordTF.enablePasswordToggle()
        confirmPasswordTF.enablePasswordToggle()
    }
}
