//
//  FiveDayForecast.swift
//  API
//
//  Created by Ali Moussa on 31/01/2020.
//  Copyright © 2020 SHAPE A/S. All rights reserved.
//

import Entities
import Client

extension FiveDayForecast {
    public static func getForecast(lat: Double, long: Double) -> Request<FiveDayForecast,
        APIError> {
        return Request(
                url: URL(string: "forecast")!,
                method: .get,
                parameters: [QueryParameters(
                    [
                        URLQueryItem(name: "lat", value: String(lat)),
                        URLQueryItem(name: "lon", value: String(long))
                    ]
                )],
                resource: decodeResource(FiveDayForecast.self),
                error: APIError.init,
                needsAuthorization: true
        )
    }
}
