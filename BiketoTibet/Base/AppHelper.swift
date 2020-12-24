//
//  AppHelper.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/12/10.
//

import UIKit

struct AppHelper {
    public static let imageHost = "https://lijingcheng.github.io/images/biketotibet/"
    
    public static func initialize() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "clr_main")
        appearance.shadowColor = .clear
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 18, weight: .medium)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 24, weight: .medium)]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        UIWindow.appearance().backgroundColor = .black
    }
}

