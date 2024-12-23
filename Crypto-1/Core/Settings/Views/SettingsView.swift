//
//  SettingsView.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 21.12.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack{
            List{
                Section("Settings") {
                    Text("Very soon")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
