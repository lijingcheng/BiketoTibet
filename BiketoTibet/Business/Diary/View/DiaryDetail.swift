//
//  DiaryDetail.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//

import SwiftUI
import struct Kingfisher.KFImage

struct DiaryDetail: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var diary: Diary
    
    var body: some View {
        ZStack {
            Color("clr_main").ignoresSafeArea()
            
            ScrollView {
                LazyVStack(alignment: .center, spacing: 10) {
                    HStack(alignment: .center, spacing: 5) {
                        Text(diary.date?.string() ?? "")
                            .font(.system(size: 15))
                            .foregroundColor(Color.gray)
                        
                        Image("ic_\(diary.weather?.rawValue ?? "")")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    
                    Text(diary.content ?? "")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                    
                    if diary.photos != nil {
                        ForEach(0..<diary.photos!.count) { index in
                            KFImage(URL(string: self.diary.photos![index]), options: [.transition(.fade(0.2))])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .background(Color.gray.opacity(0.2))
                                .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                }
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15))
                .background(Color("clr_main"))
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarTitle(Text(diary.title ?? ""))
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left").font(Font.system(size: 20).bold()).frame(width: 44).foregroundColor(Color.white)
            }).offset(x: -16))
        }
    }
}
