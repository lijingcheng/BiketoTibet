//
//  DiaryRow.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//

import SwiftUI
import struct Kingfisher.KFImage

struct DiaryRow: View {
    @State var diary: Diary

    var body: some View {
        VStack(alignment: .leading) {
            if diary.cover != nil {
                KFImage(URL(string: diary.cover!), options: [.transition(.fade(0.2))])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.gray.opacity(0.2))
            }
            
            HStack {
                VStack(alignment: .leading) {
                    Text("\(diary.title ?? "")(\(diary.date?.string(withFormat: "M月d日") ?? ""))")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 5))
                    
                    HStack(spacing: 5) {
                        ForEach(diary.tags!, id: \.self) { item in
                            Text(item)
                                .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                                .font(.system(size: 11))
                                .background(Color("clr_tag_bg"))
                                .foregroundColor(Color.white)
                                .cornerRadius(5)
                        }
                    }
                    .padding(.all, 10)
                }
                
                Spacer()
                
                Image("ic_\(diary.weather?.rawValue ?? "")")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .background(Color("clr_row_bg"))
        .cornerRadius(10)
    }
}
