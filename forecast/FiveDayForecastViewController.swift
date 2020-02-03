//
//  FiveDaysForecastViewController.swift
//  forecast
//
//  Created by Ali Moussa on 03/02/2020.
//  Copyright © 2020 SHAPE A/S. All rights reserved.
//

import Foundation
import UIKit

class FiveDayForecastViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        view = UIView()
        view.backgroundColor = .lightGray
    }
    
    func setupConstraints() {
        
    }
    
}
