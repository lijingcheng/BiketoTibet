//
//  Diary.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import Foundation
import SwiftUI

struct Diary: Codable, Identifiable {
    var id: String?
    var title: String?
    var content: String?
    var weather: String?
    var tags: [String]?
    var date: Date?
    var photos: [String]?
    var cover: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = UUID().uuidString
        title = try? container.decode(String.self, forKey: .title)
        content = try? container.decode(String.self, forKey: .content)
        weather = try? container.decode(String.self, forKey: .weather)
        
        if let tagsStr = try? container.decode(String.self, forKey: .tags) {
            tags = tagsStr.components(separatedBy: ",")
        }
        
        if let dateStr = try? container.decode(String.self, forKey: .date) {
            date = dateStr.date()
            
            if let photosStr = try? container.decode(String.self, forKey: .photos) {
                photos = photosStr.components(separatedBy: ",").map({ "\(App.imageHost)\(dateStr)/\(dateStr)_\($0)-small.jpeg" })
            }
            
            if let coverStr = try? container.decode(String.self, forKey: .cover) {
                cover = "\(App.imageHost)\(dateStr)/\(dateStr)_\(coverStr)-small.jpeg"
            }
        }
    }
}
