//
//  AccountInfoVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 04/07/2023.
//

import UIKit

class AccountInfoVC: UIViewController {

    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editBtn.configure(13)
        tableView.register(UINib(nibName: "AccountInfoCell", bundle: nil),
                           forCellReuseIdentifier: "AccountInfoCell")
        tableview.register(UINib(nibName: "ContactInfoCell", bundle: nil),
                           forCellReuseIdentifier: "ContactInfoCell")
        navigationController?.hidesBarsOnSwipe = true
//        tabBarController?.hidesBottomBarWhenPushed = true
   
    }
    
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
extension AccountInfoVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tableView,
                let cell = tableView.dequeueReusableCell(withIdentifier: "AccountInfoCell") as? AccountInfoCell {
            cell.selectionStyle = .none
                return cell
            } else if tableView == tableview,
                let cell = tableView.dequeueReusableCell(withIdentifier: "ContactInfoCell") as? ContactInfoCell {
                cell.selectionStyle = .none
                return cell
            }
        return UITableViewCell.init()
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
   
    }

