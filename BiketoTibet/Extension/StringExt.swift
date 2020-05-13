//
//  StringExt.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/5/4.
//  Copyright © 2020 lijingcheng. All rights reserved.
//

import Foundation

extension String {
    public func date(withFormat format: String = "yyyyMMdd") -> Date? {
        let dateFormatter = Date.formatter
        dateFormatter.dateFormat = format
        
        return dateFormatter.date(from: self)
    }
}
