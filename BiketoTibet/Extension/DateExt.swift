//
//  DateExt.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/4/9.
//

import Foundation

extension Date {
    public static var formatter: DateFormatter {
        return DateFormatter()
    }
    
    public func string(withFormat format: String = "yyyy.MM.dd") -> String {
        let dateFormatter = Date.formatter
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
}
