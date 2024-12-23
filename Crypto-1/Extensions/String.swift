//
//  String.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 20.12.2024.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
    
}
