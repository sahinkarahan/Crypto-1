//
//  CircleButtonAnimationView.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 16.12.2024.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scaleEffect(animate ? 1.2 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(Animation.easeOut(duration: 1.2), value: animate)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundColor(.red)
        .frame(width: 100, height: 100)
}
