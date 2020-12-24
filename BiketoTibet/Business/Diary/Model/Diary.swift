//
//  Diary.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/3/30.
//

import SwiftUI

enum Weather: String, Codable {
    case sunny, rain, snow, sunny_snow, sunny_rain, sunny_cloudy, rain_snow
}

struct Diary: Codable, Identifiable, Hashable {
    var id: String?
    var title: String?
    var content: String?
    var weather: Weather?
    var tags: [String]?
    var date: Date?
    var photos: [String]?
    var cover: String?
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = UUID().uuidString
        title = try? container.decode(String.self, forKey: .title)
        content = try? container.decode(String.self, forKey: .content)
        weather = try? container.decode(Weather.self, forKey: .weather)
        
        if let tagsStr = try? container.decode(String.self, forKey: .tags) {
            tags = tagsStr.components(separatedBy: ",")
        }
        
        if let dateStr = try? container.decode(String.self, forKey: .date) {
            date = dateStr.date()
            
            if let photosStr = try? container.decode(String.self, forKey: .photos) {
                photos = photosStr.components(separatedBy: ",").map({ "\(AppHelper.imageHost)\(dateStr)/\(dateStr)_\($0)-small.jpeg" })
            }
            
            if let coverStr = try? container.decode(String.self, forKey: .cover) {
                cover = "\(AppHelper.imageHost)\(dateStr)/\(dateStr)_\(coverStr)-small.jpeg"
            }
        }
    }
}

struct Diary_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
