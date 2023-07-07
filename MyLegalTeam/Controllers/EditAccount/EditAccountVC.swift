//
//  EditAccountVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 04/07/2023.
//

import UIKit

class EditAccountVC: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneNmbrTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var saveBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.textfiledRoundview(13)
        phoneNmbrTF.textfiledRoundview(13)
        emailTF.textfiledRoundview(13)
        saveBtn.configure(13)
}
    
    
    @IBAction func didClickSaveBtn(_ sender: Any) {
    }
    
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}


