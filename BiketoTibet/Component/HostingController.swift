//
//  HostingController.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/5/11.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import SwiftUI

class HostingController<ContentView>: UIHostingController<ContentView> where ContentView: View {
    override dynamic open var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}
