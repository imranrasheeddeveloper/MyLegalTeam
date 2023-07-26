//
//  FindYourVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 20/06/2023.
//

import UIKit

class FindYourVC: UIViewController {

    @IBOutlet weak var enterMobileNumberlbl: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var findBtn: UIButton!
    @IBOutlet weak var mobilenmbrlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTF.textfiledRoundview(13)
        findBtn.configure(13)

        
        mobilenmbrlbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(setemail))
        mobilenmbrlbl.addGestureRecognizer(tap)
    }

  @objc func setemail(){
    mobilenmbrlbl.text = "Search by email instead"
    switch (emailTF.text?.isEmpty)! {
    case (0 != 0):
        enterMobileNumberlbl.text = "Enter your Phone Number"
        emailTF.text = ""
        emailTF.textColor = UIColor.lightGray
        
    case (1 != 0):
        enterMobileNumberlbl.text = "Enter your Email Address"
        emailTF.text = "example@gmail.com"
        emailTF.textColor  = UIColor.lightGray
    default:
        break
    }
}
    @IBAction func didClickbackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didFindBtn(_ sender: UIButton) {
        RedirectionHelper.redirectToOTPScreenVC(self)
        
    }
}
