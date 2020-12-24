//
//  DataExt.swift
//  BiketoTibet
//
//  Created by 李京城 on 2020/4/27.
//

import Foundation

extension Data {
    public func decodeTo<T>(_ type: T.Type) -> T? where T: Decodable {
        var data: T?
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: self, options: .mutableLeaves)
            
            if JSONSerialization.isValidJSONObject(jsonObject) {
                data = try JSONDecoder().decode(type, from: JSONSerialization.data(withJSONObject: jsonObject, options: []))
            }
        } catch let error {
            print(error)
        }
        
        return data
    }
}
