
//
//  FindLocationRouter.swift
//  forecast
//
//  Created by Jakob Vinther-Larsen on 19/02/2019.
//  Copyright © 2019 SHAPE A/S. All rights reserved.
//

import MapKit
import API
import Entities

final class FindLocationRouter {
    let api: ForecastClient
//    let forecasts: [FiveDayForecast]
    
    init(api apiClient: ForecastClient) {
        self.api = apiClient
    }
}

extension FindLocationRouter: FindLocationInteractorAction {
    func locationSelected(at coordinate: CLLocationCoordinate2D) {
        api.perform(FiveDayForecast.getForecast(lat: coordinate.latitude, long: coordinate.longitude)) { (result) in
           
            switch result  {
            case .success(let fiveDayForecast):
                dump(fiveDayForecast)
            case .failure(_):
                print("Error")
            }

        }
    }
}
