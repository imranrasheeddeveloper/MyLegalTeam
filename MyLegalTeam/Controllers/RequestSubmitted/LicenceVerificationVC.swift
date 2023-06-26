//
//  LicenceVerificationVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 09/06/2023.
//

import UIKit

class LicenceVerificationVC: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.configure(13)

       
    }
    
    @IBAction func didClickNextBtn(_ sender: Any) {
    }
    
    @IBAction func didClickbackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
