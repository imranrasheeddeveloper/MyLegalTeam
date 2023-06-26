//
//  NewTaskVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 16/06/2023.
//

import UIKit

@available(iOS 13.4, *)
class NewTaskVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var setReminderBtn: UIButton!
    @IBOutlet weak var reminderTitleTF: UITextField!
    
    @IBOutlet weak var reminderDescriptionTF: UITextField!
    
    @IBOutlet weak var reminderDateTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        uiVIEW()
           }
           
           @objc func dateChange(datePicker: UIDatePicker){
            reminderDateTF.text = formatDate(date: datePicker.date)
               
           }
           
           func formatDate(date: Date) -> String {
               let formatter = DateFormatter()
               formatter.dateFormat = "MMMM dd yyyy"
               return formatter.string(from: date)
           }
           
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
        
    }
    @IBAction func didClickReminderBtn(_ sender: Any) {
        
    }
    
    
    func uiVIEW()   {
        reminderDateTF.textfiledRoundview(13)
        reminderDescriptionTF.textfiledRoundview(13)
        reminderDateTF.textfiledRoundview(13)
        setReminderBtn.configure(13)
        
        let datePicker = UIDatePicker()
               datePicker.datePickerMode = .date
               datePicker.addTarget(self, action: #selector(dateChange(datePicker:)), for: UIControl.Event.valueChanged)
               datePicker.frame.size = CGSize(width: 0, height: 300)
               datePicker.preferredDatePickerStyle = .wheels

        reminderDateTF.inputView = datePicker
        reminderDateTF.text = formatDate(date: Date())
               
               let imageIcon = UIImageView()
                      imageIcon.image = UIImage(named: "dateIcon")
                      let contentView = UIView()
                      contentView.addSubview(imageIcon)
                      contentView.frame = CGRect (x: 0, y: 0, width:  UIImage(named: "dateIcon")!.size.width, height:  UIImage(named: "dateIcon")!.size.width)
                      imageIcon.frame = CGRect (x: 335, y: 0, width:  UIImage(named: "dateIcon")!.size.width, height:  UIImage(named: "dateIcon")!.size.width)
        reminderDateTF.leftView = contentView
        reminderDateTF.leftViewMode = .always
        
    }
    
       }

        
    
    

    


