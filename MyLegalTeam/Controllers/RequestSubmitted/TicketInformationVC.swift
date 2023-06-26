//
//  TicketInformationVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 09/06/2023.
//

import UIKit

class TicketInformationVC: UIViewController {

    @IBOutlet weak var attorneysBtn: UIButton!
    @IBOutlet weak var bailbondsmanBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        attorneysBtn.configure(13)
        bailbondsmanBtn.configure(13)

        
    }
    

    @IBAction func didClickAttorneysBtn(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "LogInAccountVC")
        self.navigationController?.pushViewController(controller!, animated: true)
        
    }
    
    @IBAction func didClickBailbondsmanBtn(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "LogInAccountVC")
        self.navigationController?.pushViewController(controller!, animated: true)
    }
}
