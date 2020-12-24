//
//  BiketoTibetApp.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/12/10.
//

import SwiftUI

@main
struct BiketoTibetApp: App {
    init() {
        AppHelper.initialize()
    }
    
    var body: some Scene {
        WindowGroup {
            DiaryList()
        }
    }
}
