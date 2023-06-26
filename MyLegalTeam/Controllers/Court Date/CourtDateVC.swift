//
//  CourtDateVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 14/06/2023.
//

import UIKit

@available(iOS 13.4, *)
class CourtDateVC: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var firstNameTF: UITextField!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var citationNameTF: UITextField!
    @IBOutlet weak var courtTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        uiView()
       

    }
    

    @IBAction func didClickSubmitBtn(_ sender: Any) {
        self.view.endEditing(true)

        if firstNameTF.text!.isEmpty || ((firstNameTF.text?.isEmpty) != nil)
            {
                let alert = UIAlertController(
                    title: "Invalid Login",
                    message: "Please enter First Name",
                    preferredStyle: UIAlertController.Style.alert)
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                }
                alert.addAction(OKAction)

            present(alert, animated: true, completion: nil)
                return
            }
        }
    @objc func dateChange(datePicker: UIDatePicker){
        dateTF.text = formatDate(date: datePicker.date)
        
    }
    
    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd yyyy"
        return formatter.string(from: date)
    }
    
    func uiView()  {
        firstNameTF.textfiledRoundview(13)
        lastNameTF.textfiledRoundview(13)
        citationNameTF.textfiledRoundview(13)
        courtTF.textfiledRoundview(13)
        dateTF.textfiledRoundview(13)
        submitBtn.configure(13)
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
        datePicker.frame.size = CGSize(width: 0, height: 300)
        datePicker.preferredDatePickerStyle = .wheels

        dateTF.inputView = datePicker
        dateTF.text = formatDate(date: Date())
        
        let imageIcon = UIImageView()
               imageIcon.image = UIImage(named: "dateIcon")
               let contentView = UIView()
               contentView.addSubview(imageIcon)
               contentView.frame = CGRect (x: 0, y: 0, width:  UIImage(named: "dateIcon")!.size.width, height:  UIImage(named: "dateIcon")!.size.width)
               imageIcon.frame = CGRect (x: 335, y: 0, width:  UIImage(named: "dateIcon")!.size.width, height:  UIImage(named: "dateIcon")!.size.width)
        dateTF.leftView = contentView
        dateTF.leftViewMode = .always
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
        @objc func keyboardWillShow(notification:NSNotification) {

            guard let userInfo = notification.userInfo else { return }
            var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            keyboardFrame = self.view.convert(keyboardFrame, from: nil)

            var contentInset:UIEdgeInsets = self.scrollView.contentInset
            contentInset.bottom = keyboardFrame.size.height + 20
            scrollView.contentInset = contentInset
        }

        @objc func keyboardWillHide(notification:NSNotification) {

            let contentInset:UIEdgeInsets = UIEdgeInsets.zero
            scrollView.contentInset = contentInset
        }
    }
    

