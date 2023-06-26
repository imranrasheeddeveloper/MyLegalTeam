//
//  UIAlert.swift
//  MyLegalTeam
//
//  Created by MacBook on 21/06/2023.
//

import UIKit
extension UIAlertAction{
    func addImage(image: UIImage)   {
        let imgAction = UIAlertAction(title: "", style: .default, handler: nil)
        imgAction .isEnabled = false
        imgAction.setValue(image.withRenderingMode(.alwaysOriginal), forKey: "image")
//        self.addImage(image:)
        
    }
    
    
    
}
