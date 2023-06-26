//
//  SelectYourStatesVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 16/06/2023.
//

import UIKit

class SelectYourStatesVC: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var stateLbl = ["Alabama","Alaska","Arizona","Arkansas","California", "Colorado","Connecticut","Delaware","District of Columbia","Florida","Georgia","Hawaii","Alaska" ]
    var filteredData: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.backgroundColor = UIColor.white
//        searchBar.roundedCorners(corners: UIRectCorner(rawValue: 13), radius: 13)
        searchBar.delegate = self
        filteredData = stateLbl
        tableView.removeExtraCellLines()
        tableView.register(UINib(nibName: "SelectYourStatesCell", bundle: nil),
                           forCellReuseIdentifier: "SelectYourStatesCell")

       
    }

}
extension SelectYourStatesVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectYourStatesCell", for: indexPath) as! SelectYourStatesCell
        cell.stateLbl.text = stateLbl[indexPath.row]
        
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? stateLbl : stateLbl.filter({(dataString: String) -> Bool in
                
                return dataString.range(of: searchText, options: .caseInsensitive) != nil
            })

            tableView.reloadData()
        }
        }
        

