//
//  DiaryViewModel.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//

import Foundation

struct DiaryViewModel {
    var diarys: [Diary] = {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "diary", ofType: "json")!), options: .mappedIfSafe)
            
            return data.decodeTo([Diary].self) ?? []
        } catch {
             return []
        }
    }()
}
