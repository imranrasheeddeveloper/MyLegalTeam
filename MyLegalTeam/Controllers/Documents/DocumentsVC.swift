//
//  DocumentsVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 10/07/2023.
//

import UIKit

class DocumentsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let data = ["Custody","Child support"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "DocumentsCell", bundle: nil),
                           forCellReuseIdentifier: "DocumentsCell")
        tableView.removeExtraCellLines()
    }

}
extension DocumentsVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DocumentsCell", for: indexPath) as! DocumentsCell
        cell.selectionStyle = .none
        cell.label.text = data[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
