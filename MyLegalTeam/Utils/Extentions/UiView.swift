//
//  UiView.swift
//  ModernFarm
//
//  Created by MacBook on 30/03/2023.
//

import UIKit
  

extension UIView {
    
    @IBInspectable var cornerRadious: CGFloat {
        
        get {return self.cornerRadious}
        set {
            
            self.layer.cornerRadius = newValue
        }
    }
    
    
}

