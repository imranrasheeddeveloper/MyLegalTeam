//
//  OTPScreenVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 12/06/2023.
//

import UIKit

class OTPScreenVC: UIViewController {

    @IBOutlet weak var activatorIndicator: UIActivityIndicatorView!
    @IBOutlet weak var verifyLbl: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var tf3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tf1.backgroundColor = .primaryColor
        tf2.backgroundColor = .primaryColor
        tf3.backgroundColor = .primaryColor
        tf4.backgroundColor = .primaryColor
        

        tf1.addTarget(self,action: #selector(self.textFieldDidChange(textField:)),for: UIControl.Event.editingChanged)
        tf2.addTarget(self,action: #selector(self.textFieldDidChange(textField:)),for: UIControl.Event.editingChanged)
        tf3.addTarget(self,action: #selector(self.textFieldDidChange(textField:)),for: UIControl.Event.editingChanged)
        tf4.addTarget(self,action: #selector(self.textFieldDidChange(textField:)),for: UIControl.Event.editingChanged)
        verifyLbl.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(activityIndicator))
        verifyLbl.addGestureRecognizer(tap)
    }
    @objc func activityIndicator(){
        activatorIndicator.startAnimating()

    }
   

    
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tf1.becomeFirstResponder()
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        let text = textField.text
        
        if text?.utf16.count == 1{
            
            switch textField {
            case tf1:
                tf2.becomeFirstResponder()
            case tf2:
                tf3.becomeFirstResponder()
            case tf3:
                tf4.becomeFirstResponder()
            case tf4:
                tf4.resignFirstResponder()
                
            default:
                break
            }
        }
        
        else{
            
        }
    }
    

}
