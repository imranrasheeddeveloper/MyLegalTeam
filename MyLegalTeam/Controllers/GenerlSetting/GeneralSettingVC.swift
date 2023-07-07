//
//  GeneralSettingVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 03/07/2023.
//

import UIKit

class GeneralSettingVC: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    var name = ["Default Notification Actions","Manage Notifications"]
    let imgIcon = ["Notification","Setting-1" ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.removeExtraCellLines()
        tableView.register(UINib(nibName: "SettingCell", bundle: nil),
                           forCellReuseIdentifier: "SettingCell")
    }
}
extension GeneralSettingVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
        
        cell.label.text = name[indexPath.row]
        cell.imgIcon.image = UIImage(named: imgIcon[indexPath.row])
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

}
