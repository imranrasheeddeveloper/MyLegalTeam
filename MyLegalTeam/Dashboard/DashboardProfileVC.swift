//
//  DashboardProfileVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 10/07/2023.
//

import UIKit

class DashboardProfileVC: UIViewController {
    
    @IBOutlet weak var tableView : UITableView!
    let data = ["Account Info", "Contact List", "Language","General Setting", "Change Password", "Change Log In PIN","FAQs","Rate Us"]
    
    let profileImg = ["accountInfo", "contactList", "Language","generalSetting", "ChangePassword", "ChangeLogInPIN","FAQs","RateUs" ]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "ProfileCell", bundle: nil),
                           forCellReuseIdentifier: "ProfileCell")
        
        tabBarController?.tabBar.tintColor = UIColor.primaryColor
        tabBarController?.tabBar.unselectedItemTintColor = UIColor.green
    }
    
    }
extension DashboardProfileVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        
        cell.profileLbl.text = data[indexPath.row]
        cell.profileImg.image = UIImage(named: profileImg[indexPath.row])
        cell.selectionStyle = .none
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}
