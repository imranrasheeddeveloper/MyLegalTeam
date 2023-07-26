//
//  RedirectionHelper.swift
//  IamHere
//
//  Created by Imran Rasheed on 06/09/2022.
//
import UIKit

struct RedirectionHelper {
    static func redirectToLogin() {
        DispatchQueue.main.async {
            let dashboardVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
            UIApplication.shared.currentUIWindow()?.rootViewController = dashboardVC
            UIApplication.shared.currentUIWindow()?.makeKeyAndVisible()
        }
    }
    static func redirectToHome(){
        DispatchQueue.main.async {
            let dashboardVC = UIStoryboard(name: "Dashboard", bundle: nil).instantiateInitialViewController()
            UIApplication.shared.currentUIWindow()?.rootViewController = dashboardVC
            UIApplication.shared.currentUIWindow()?.makeKeyAndVisible()
        }
    }
    
    static func redirectToLogin(_ vc : UIViewController) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        vc.navigationController?.pushViewController(loginVC, animated: true)
    }
        static func CourtReminderVC(_ vc : UIViewController) {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let loginVC = storyBoard.instantiateViewController(withIdentifier: "CourtReminderVC") as! CourtReminderVC
            vc.navigationController?.pushViewController(loginVC, animated: true)
        }
            static func redirectOTPScreenVC(_ vc : UIViewController){
                let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                let forgotPasswordVC = storyBoard.instantiateViewController(withIdentifier: "OTPScreenVC") as! OTPScreenVC
                vc.navigationController?.pushViewController(forgotPasswordVC, animated: true)
            }
    
    
    static func redirectToSignup(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let signupVC = storyBoard.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        vc.navigationController?.pushViewController(signupVC, animated: true)
    }
        static func redirectToFindYourVC(_ vc : UIViewController){
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let signupVC = storyBoard.instantiateViewController(withIdentifier: "FindYourVC") as! FindYourVC
            vc.navigationController?.pushViewController(signupVC, animated: true)
    }
    static func redirectToOTPScreenVC(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let OTPScreenVC = storyBoard.instantiateViewController(withIdentifier: "OTPScreenVC") as! OTPScreenVC
        vc.navigationController?.pushViewController(OTPScreenVC, animated: true)
        
    }
    static func redirectToSignUpControlle(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let  SignUpController = storyBoard.instantiateViewController(withIdentifier: "SignUpController") as! SignUpController
        vc.navigationController?.pushViewController( SignUpController, animated: true)
    
    }
        static func redirectToSignUpController(_ vc : UIViewController){
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let  SignUpController = storyBoard.instantiateViewController(withIdentifier: "SignUpController") as! SignUpController
            vc.navigationController?.pushViewController( SignUpController, animated: true)
        
    }
    static func redirectToForgotPasswordVC(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let forgotPasswordVC = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordVC") as! ForgotPasswordVC
        vc.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
    
    static func PasswordResetVC(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let forgotPasswordVC = storyBoard.instantiateViewController(withIdentifier: "PasswordResetVC") as! PasswordResetVC
        vc.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
    static func redirectToEmail(_ vc : UIViewController){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let forgotPasswordVC = storyBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        vc.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
        
    

    static func backStack(_ viewController : UIViewController){
        isOnTabBar = false
        DispatchQueue.main.async {
            viewController.navigationController?.popViewController(animated: true)
        }
       
    }
}
public extension UIApplication {
    func currentUIWindow() -> UIWindow? {
        if #available(iOS 13.0, *) {
            let connectedScenes = UIApplication.shared.connectedScenes
                .filter { $0.activationState == .foregroundActive }
                .compactMap { $0 as? UIWindowScene }
            let window = connectedScenes.first?
                .windows
                .first { $0.isKeyWindow }
            return window
        } else {
            // Fallback on earlier versions
        }
       return nil
        
    }
}
