//
//  CourtDataVC.swift
//  MyLegalTeam
//
//  Created by MacBook on 16/06/2023.
//

import UIKit

@available(iOS 13.4, *)
class CourtDataVC: UIViewController {

    @IBOutlet weak var courtDataTF: UITextField!
    @IBOutlet weak var enterDescriptionTF: UITextField!
   
    @IBOutlet weak var dateTF: UITextField!
    
    @IBOutlet weak var updateBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       uiView()
    }
    
    @objc func dateChange(datePicker: UIDatePicker){
        dateTF.text = formatDate(date: datePicker.date)
        
    }
    
    func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd yyyy"
        return formatter.string(from: date)
    }
    func uiView()   {
        courtDataTF.textfiledRoundview(13)
        enterDescriptionTF.textfiledRoundview(13)
        dateTF.textfiledRoundview(13)
        updateBtn.configure(13)

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
    }
    
    @IBAction func didClickBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func didClickNextBtn(_ sender: Any) {
    }
    
}
