//
//  FAQVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 26/06/2023.
//

import UIKit

class FAQVC: UIViewController {

    
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var tableView: UITableView!
        var name = [ "Court Data"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "FAQCell", bundle: nil),
                           forCellReuseIdentifier: "FAQCell")
        searchTF.textfiledRoundview(13)
        
    }
}
extension FAQVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FAQCell", for: indexPath) as! FAQCell
        cell.selectionStyle = .none
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    }
