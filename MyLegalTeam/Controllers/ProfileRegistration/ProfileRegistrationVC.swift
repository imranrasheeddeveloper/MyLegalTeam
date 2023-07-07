//
//  ProfileRegistrationVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 08/06/2023.
//

import UIKit

class ProfileRegistrationVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var name = ["Personal Information","Identification","License Verification","Charges"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.removeExtraCellLines()
        
        tableView.register(UINib(nibName: "ProfileRegistrationCell", bundle: nil),
                           forCellReuseIdentifier: "ProfileRegistrationCell")
            }
}

extension ProfileRegistrationVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileRegistrationCell", for: indexPath) as! ProfileRegistrationCell

        cell.label.text = name[indexPath.row]
        cell.selectionStyle = .none
        
        if indexPath.row == name.count - 4 {
            cell.tintColor = UIColor.primaryColor
            let image = UIImage(named:"CheckBox")?.withRenderingMode(.alwaysTemplate)
            let checkmark  = UIImageView(frame:CGRect(x:0 , y:0, width:(image?.size.width)!, height:(image?.size.height)!));
                checkmark.image = image
            cell.accessoryView = checkmark
            
        }
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let alertMessage = UIAlertController(title: "Request has been Sent", message: "Your request for approve you as a Lawyer has sent successfully", preferredStyle: .alert)
        let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 172, height: 100)))
            imageView.image =  UIImage(named:"requestSend")
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, imageView.isOpaque, 0.0)
        defer { UIGraphicsEndImageContext() }
        let context = UIGraphicsGetCurrentContext()
        imageView.layer.render(in: context!)
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()
        let action = UIAlertAction(title: "", style: .default, handler: nil)
        action.setValue(finalImage?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
          alertMessage .addAction(action)
            let action1 = UIAlertAction(title: "Thank You", style: .default, handler: nil)
            alertMessage .addAction(action1)

            self.present(alertMessage, animated: true, completion: nil)
    }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

