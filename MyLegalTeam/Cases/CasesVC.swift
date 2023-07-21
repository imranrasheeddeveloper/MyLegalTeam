//
//  CasesVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class CasesVC: UIViewController {
    

    @IBOutlet weak var segmentsController: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    var data = ["title"]
    var subTitle = ["ruquestDescribtion"]
    
    var currentTableView: Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "CasesCell", bundle: nil),
                           forCellReuseIdentifier: "CasesCell")
        tableView.register(UINib(nibName: "PendingRequestCell", bundle: nil),
                           forCellReuseIdentifier: "PendingRequestCell")
        tableView.register(UINib(nibName: "WithdrawCell", bundle: nil),
                           forCellReuseIdentifier: "WithdrawCell")
        
        currentTableView = 0
        segmentsController.layer.cornerRadius = 10

    }
    @IBAction func didSelectSegments(_ sender: Any) {
        if segmentsController.selectedSegmentIndex == 0
        {
            
        }
    }
    
}
extension CasesVC : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.isHidden == false{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CasesCell") as! CasesCell
            cell.selectionStyle = .none
                return cell
            }
            else {
               let cell = tableView.dequeueReusableCell(withIdentifier: "PendingRequestCell") as! PendingRequestCell

               
                return cell
            }
        }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}
