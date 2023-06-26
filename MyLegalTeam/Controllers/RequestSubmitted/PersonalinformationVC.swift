//
//  PersonalinformationVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 09/06/2023.
//

import UIKit

class PersonalinformationVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var ssnTF: UITextField!
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTF.textfiledRoundview(13)
        lastNameTF.textfiledRoundview(13)
        emailTF.textfiledRoundview(13)
        phoneTF.textfiledRoundview(13)
        ssnTF.textfiledRoundview(13)
        nextBtn.roundview(13)
        ssnTF.enablePasswordToggle()
        

    }
    

    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextBtnClick(_ sender: Any) {
    }
}
