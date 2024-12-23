//
//  Color.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 16.12.2024.
//

import Foundation
import SwiftUI


extension Color {
    
    static let theme  = ColorTheme()
    static let launch = LaunchTheme()
    
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("CustomGreenColor")
    let red = Color("CustomRedColor")
    let secondaryText = Color("SecondaryTextColor")
    
}


struct LaunchTheme {
    
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
