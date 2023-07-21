//
//  ChatVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 11/07/2023.
//

import UIKit

class ChatVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var tableView : UITableView!
    
    
    var data = ["Smith Mathew", "Merry An.", "John Walton","Monica Randawa","Innoxent Jay","Harry Samit","Jonnas Autron"]
    let profileSublbl = ["Hi, David. Hope you’re doing....","Are you ready for today’s part..","I’am sending you a parcel rece..","Hope you’re doing well today..","Let’s get back to the work, You..","Listen david, i have a problem..","Hi, David. Hope you’re doing...."]
    let profileImg = ["Smith Mathew","Ellipes","Smith Mathew","Ellipes","Smith Mathew","Ellipes","Smith Mathew","Ellipes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.delegate = self
        
        tabBarController?.tabBar.tintColor = UIColor.primaryColor
        tableView.register(UINib(nibName: "ChatCell", bundle: nil),
                           forCellReuseIdentifier: "ChatCell")
        searchTF.textfiledRoundview(13)
        let imageView = UIImageView(frame: CGRect(x: 8.0, y: 8.0, width: 24.0, height: 24.0))
        let image = UIImage(named: "Search")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 32, height: 40))
        view.addSubview(imageView)
        searchTF.leftViewMode = UITextField.ViewMode.always
        searchTF.leftView = view
        tableView.reloadData()
    }
    
    @IBAction func searchTF(_ sender: UITextField) {
        if let searchTF = sender.text {
            
            data = data.filter{$0.lowercased().contains(searchTF.lowercased())}
                tableView.reloadData()
            
        }
    }}
extension ChatVC: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell", for: indexPath) as! ChatCell
        cell.profilelbl.text = data[indexPath.row]
        cell.profileImg.image = UIImage(named: profileImg[indexPath.row])
        cell.profileSublbl.text = profileSublbl[indexPath.row]
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
