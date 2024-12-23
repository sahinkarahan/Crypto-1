//
//  Crypto_1App.swift
//  Crypto-1
//
//  Created by Şahin Karahan on 16.12.2024.
//

import SwiftUI

@main
struct Crypto_1App: App {
    
    @StateObject var vm = HomeViewModel()
    @State private var showLaunchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                NavigationStack{
                    HomeView()
                        .navigationBarHidden(true)
                }
                .environmentObject(vm)
                
                
                
                ZStack{
                    if showLaunchView{
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                    
                }
                .zIndex(2.0)

            }
        }
    }
}
