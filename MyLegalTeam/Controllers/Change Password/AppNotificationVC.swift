//
//  AppNotificationVC.swift
//  ModernFarm
//
//  Created by MacBook on 09/04/2023.
//

import UIKit

class AppNotificationVC: UIViewController {

    @IBOutlet weak var checkbox1 :UIButton!
    @IBOutlet weak var checkbox2 :UIButton!
    @IBOutlet weak var checkbox3 :UIButton!
    @IBOutlet weak var checkbox4 :UIButton!
    @IBOutlet weak var checkbox5 :UIButton!
    @IBOutlet weak var checkbox6 :UIButton!
    
    var flag1 = false
    var flag2 = false
    var flag3 = false
    var flag4 = false
    var flag5 = false
    var flag6 = false
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func checkbox1btn(_ sender: UIButton) {
        if (flag1 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag1 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag1 = false
        }
        
        
    }
    
    @IBAction func checkbox2btn(_ sender: UIButton) {
        if (flag2 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag2 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag2 = false
        }
    }
    @IBAction func checkbox3btn(_ sender: UIButton) {
        if (flag3 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag3 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag3 = false
        }
    }
    @IBAction func checkbox4btn(_ sender: UIButton) {
        if (flag4 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag4 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag4 = false
        }
    }
    @IBAction func checkbox5btn(_ sender: UIButton) {
        if (flag5 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag5 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag5 = false
        }
    }
    @IBAction func checkbox6btn(_ sender: UIButton) {
        if (flag6 == false)
        {
            sender.setBackgroundImage(UIImage(named: "CheckBox"), for: UIControl.State.normal)
            flag6 = true
        }
        else{
            sender.setBackgroundImage(UIImage(named: "UnCheck"), for: UIControl.State.normal)
            flag6 = false
        }
    }
}
