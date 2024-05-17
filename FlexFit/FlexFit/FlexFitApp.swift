//
//  FlexFitApp.swift
//  FlexFit
//
//  Created by Emmanuel Montoya on 4/22/24.
//

import SwiftUI

@main
struct FlexFitApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    
    var body: some Scene {
        WindowGroup {
                    ContentView()
                        .preferredColorScheme(isDarkMode ? .dark : .light)
                }
        
        
//        WindowGroup {
//            ContentView()
//        }
    }
}
