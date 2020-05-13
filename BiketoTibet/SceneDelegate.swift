//
//  SceneDelegate.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/24.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            App.initialize()
            
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = HostingController(rootView: SplashView())
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
