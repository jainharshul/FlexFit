//
//  SettingsView.swift
//  FlexFit
//
//  Created by Harshul Jain on 4/27/24.
//


import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false

        var body: some View {
            NavigationView {
                Form {
                    Toggle(isOn: $isDarkMode) {
                        Text("Dark Mode")
                    }
                }
                .navigationBarTitle("Settings")
            }
        }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
