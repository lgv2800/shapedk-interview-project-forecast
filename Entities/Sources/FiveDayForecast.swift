//
//  FiveDayForecast.swift
//  Entities
//
//  Created by Ali Moussa on 31/01/2020.
//  Copyright © 2020 SHAPE A/S. All rights reserved.
//

import Foundation

public struct FiveDayForecast: Codable {
    
    // MARK: - Properties
//    let city: String
//    let name: String
//    let country: String
//    let list: String
//    let date: Date
//    let main: String
    
    let city: City
    let list: [List]
    
    struct List: Codable {
        let date: Date
        let main: Main
        
        private enum CodingKeys: String, CodingKey {
            case date = "dt"
            case main
        }
    }
    
    struct Main: Codable {
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
    
    struct City: Codable {
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
    
    /*
    // MARK: - Decoding
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let list = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .list)
        date = try list.decode(Date.self, forKey: .date)
        
        let main = try list.nestedContainer(keyedBy: CodingKeys.self, forKey: .main)
        temp = try main.decode(Double.self, forKey: .temp)
        temp_min = try main.decode(Double.self, forKey: .temp_min)
        temp_max = try main.decode(Double.self, forKey: .temp_max)
        humidity = try main.decode(Int.self, forKey: .humidity)
        
        let city = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .city)
        name = try city.decode(String.self, forKey: .name)
        country = try city.decode(String.self, forKey: .country)
    }*/
    
}
