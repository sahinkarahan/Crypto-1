//
//   UIApplication.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 18.12.2024.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

