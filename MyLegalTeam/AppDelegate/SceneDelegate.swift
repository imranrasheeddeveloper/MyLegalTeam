//
//  SceneDelegate.swift
//  IamHere
//
//  Created by Imran Rasheed on 06/09/2022.
//

import UIKit
import SocketIO
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard  let scene = (scene as? UIWindowScene) else { return }
        let obj = UserDefaults.standard.retrieve(object: LoginResponse.self, fromKey: "userData")
        if obj != nil{

            RedirectionHelper.redirectToHome()
//            let storyboard = UIStoryboard(name: "Dashboard", bundle: nil)
//            let rootVC = storyboard.instantiateViewController(identifier: "tabbar")
//            let rootNC = UINavigationController(rootViewController: rootVC)
//            self.window?.rootViewController = rootNC
//            self.window?.makeKeyAndVisible()
            

        }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
//        let obj = UserDefaults.standard.retrieve(object: UserResponseModel.self, fromKey: "UserProfile")
//        if obj != nil{
//            SocketHelper.shared.establishConnection(completion: {_ in
//                SocketHelper.shared.makeUserOnline()
//            })
//        }
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}
