//
//  ReminderVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 19/06/2023.
//

import UIKit

class ReminderVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var switchController: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        switchController.isUserInteractionEnabled =  true
        let tap = UITapGestureRecognizer(target: self, action: #selector(CourtReminderVC))
        switchController.addGestureRecognizer(tap)
               
            }
            @objc func CourtReminderVC(){
                RedirectionHelper.CourtReminderVC(self)
    }
    

    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
