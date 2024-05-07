//
//  ContentView.swift
//  FlexFit
//
//  Created by Emmanuel Montoya on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
            UITabBar.appearance().barTintColor = UIColor.black
            UITabBar.appearance().tintColor = UIColor.white
            
    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }        
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    ContentView()
}
