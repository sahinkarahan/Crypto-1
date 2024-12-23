//
//  StatisticModel.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 19.12.2024.
//

import Foundation

struct StatisticModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    
    init(title: String, value: String, percentageChange: Double?) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
    
    
}

