//
//  App.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/4/9.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import UIKit

enum Weather: String {
    case sunny, rain, snow, sunny_snow, sunny_rain, sunny_cloudy, rain_snow
}

struct App {
    public static let imageHost = "https://lijingcheng.github.io/images/biketotibet/"
    
    public static func initialize() {
        UITableView.appearance().backgroundColor = UIColor(named: "clr_main")
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
        
        UITableViewCell.appearance().selectionStyle = .none
        UITableViewCell.appearance().backgroundColor = UIColor(named: "clr_main")
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "clr_main")
        appearance.shadowColor = .clear
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 18, weight: .medium)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 24, weight: .medium)]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    public static func transition(_ rootViewController: UIViewController?) {
        rootViewController?.modalTransitionStyle = .crossDissolve
    
        UIView.setAnimationsEnabled(false)
        UIView.transition(with: UIApplication.shared.windows.first!, duration: 0.5, options: .transitionCrossDissolve, animations: {
            UIApplication.shared.windows.first?.rootViewController = rootViewController
        }, completion: { _ in
            UIView.setAnimationsEnabled(true)
        })
    }
}
