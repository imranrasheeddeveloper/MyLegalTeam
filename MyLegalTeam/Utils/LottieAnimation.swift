////
////  LottieAnimation.swift
////  IamHere
////
////  Created by Imran Rasheed on 03/11/2022.
////
//
//import Foundation
//import Lottie
//
//class LottieAnimation{
//    static var shared = LottieAnimation()
//    var animationView: LottieAnimationView!
//
//    func  addLottieAnimation(string : String ,view : UIView ) {
//        view.backgroundColor = .black
//        view.alpha = 0.8
//        animationView = .init(name: string)
//        animationView.translatesAutoresizingMaskIntoConstraints = false
//        animationView.contentMode = .scaleAspectFit
//        animationView.loopMode = .loop
//        animationView.animationSpeed = 1
//        view.addSubview(animationView)
//        animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
//        animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        animationView.heightAnchor.constraint(equalToConstant: 250).isActive = true
//        animationView.widthAnchor.constraint(equalToConstant: 250).isActive = true
//        animationView.play()
//    }
//    func removeLottieAnimation(view : UIView){
//        view.backgroundColor = .white
//        view.alpha = 1
//        DispatchQueue.main.async { [self] in
//            animationView.removeFromSuperview()
//        }
//        
//    }
//}
//
