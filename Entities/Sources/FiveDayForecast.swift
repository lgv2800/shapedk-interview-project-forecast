//
//  FiveDayForecast.swift
//  Entities
//
//  Created by Ali Moussa on 31/01/2020.
//  Copyright © 2020 SHAPE A/S. All rights reserved.
//

import Foundation

public struct FiveDayForecast: Decodable {
    
    // MARK: - Properties
    let city: City
    let list: [List]
    
    // MARK: - Structs
    struct List: Decodable {
        let date: Date
        let main: Main
        
        private enum CodingKeys: String, CodingKey {
            case date = "dt"
            case main
        }
    }
    
    struct Main: Decodable {
        let temp: Double
        let temp_min: Double
        let temp_max: Double
        let humidity: Int
        
        private enum CodingKeys: String, CodingKey {
            case temp
            case temp_min
            case temp_max
            case humidity
        }
    }
    
    struct City: Decodable {
        let name: String
        let country: String
        
        private enum CodingKeys: String, CodingKey {
            case name
            case country
        }
    }
    
    // MARK: - Coding Keys
    enum CodingKeys: String, CodingKey {
        case city
        case list
    }
    
}
