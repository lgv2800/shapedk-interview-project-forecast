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
    public let city: String
    public let name: String
    public let country: String
    public let list: String
    public let date: Date
    public let main: String
    public let temp: Double
    public let temp_min: Double
    public let temp_max: Double
    public let humidity: Int
    
    // MARK: - Coding Keys
    enum CodingKeys: String, CodingKey {
        case city = "city"
        case name = "name"
        case country = "country"
        case list = "list"
        case date = "dt"
        case main = "main"
        case temp = "temp"
        case temp_min = "temp_min"
        case temp_max = "temp_max"
        case humidity = "humidity"
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
