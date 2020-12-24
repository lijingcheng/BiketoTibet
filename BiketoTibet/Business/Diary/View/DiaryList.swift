//
//  DiaryList.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/4/27.
//

import SwiftUI

struct DiaryList: View {
    let viewModel = DiaryViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("clr_main").ignoresSafeArea()
                
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.diarys, id: \.self) { item in
                            NavigationLink(destination: DiaryDetail(diary: item)) {
                                DiaryRow(diary: item)
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .background(Color("clr_main"))
                }
                .navigationBarTitle(Text("Biketo Tibet"))
            }
        }
        .background(Color("clr_main"))
    }
}
