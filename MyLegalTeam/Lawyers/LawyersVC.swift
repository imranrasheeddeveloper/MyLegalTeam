//
//  LawyersVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/07/2023.
//

import UIKit

class LawyersVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "LawyersCell", bundle: nil),
                           forCellReuseIdentifier: "LawyersCell")
        tabBarController?.tabBar.tintColor = UIColor.primaryColor
    }

}
extension LawyersVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LawyersCell", for: indexPath) as! LawyersCell
        
        return cell

    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
        
    }
    
}
