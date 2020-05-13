//
//  DiaryList.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/4/27.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import SwiftUI

struct DiaryList: View {
    let viewModel = DiaryViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.diarys) { item in
                ZStack {
                    DiaryRow(diary: item)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 10, trailing: 5))
                    
                    NavigationLink(destination: DiaryDetail(diary: item)) {
                        EmptyView()
                    }
                }
            }
            .navigationBarTitle(Text("Biketo Tibet"))
        }
    }
}
