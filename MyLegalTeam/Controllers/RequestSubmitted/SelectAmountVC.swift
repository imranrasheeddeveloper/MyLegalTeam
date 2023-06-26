//
//  SelectAmountVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 09/06/2023.
//

import UIKit

class SelectAmountVC: UIViewController {

    @IBOutlet weak var enterAmountTF: UITextField!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var nextBtn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterAmountTF.textfiledRoundview(13)
        nextBtn.configure(13)

       
    }
    

    
    @IBAction func didClickbackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didClickNextBtn(_ sender: Any) {
    }
}
extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}
