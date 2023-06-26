//
//  CourtReminderVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 19/06/2023.
//

import UIKit

class CourtReminderVC: UIViewController {
    
    @IBOutlet weak var switchController: UISwitch!
    @IBOutlet weak var backBtn: UIButton!
    //    var name = [ "Court Data"]
    @IBOutlet weak var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.removeExtraCellLines()
        tableView.register(UINib(nibName: "CourtReminderCell", bundle: nil),
                           forCellReuseIdentifier: "CourtReminderCell")
    }
    @IBAction func didClickbackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension CourtReminderVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourtReminderCell", for: indexPath) as! CourtReminderCell
       
//        cell.courtDateLbl.text =  [indexPath.row]
        self.tableView.separatorStyle = .none
        cell.selectionStyle = .none
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    }
