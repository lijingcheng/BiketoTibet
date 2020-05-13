//
//  SplashView.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        Image("launch_screen")
            .resizable()
            .edgesIgnoringSafeArea(.top)
            .edgesIgnoringSafeArea(.bottom)
            .onAppear {
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false, block: { _ in
                    App.transition(HostingController(rootView: DiaryList()))
                })
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
