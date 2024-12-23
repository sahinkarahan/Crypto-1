//
//  HapticManager.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 19.12.2024.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
