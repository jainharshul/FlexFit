//
//  HomeView.swift
//  FlexFit
//
//  Created by Harshul Jain on 4/27/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(.flexfitAppiconTransparent)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))

                VStack {
                    Text("Welcome to FlexFit")
                        .foregroundColor(.white)
                        .font(.title.bold())

                    NavigationLink(destination: BMRCalculatorView()) {
                        Text("Calculate BMR")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    }

                    NavigationLink(destination: BMICalculatorView()) {
                        Text("Calculate BMI")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    }

                    NavigationLink(destination: WorkoutsMainPageView()) {
                        Text("Look up exercises")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    }
                }
            }
            .padding()
            .frame(maxHeight: .infinity)
            .background(Rectangle()
                .foregroundColor(Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)))
            .edgesIgnoringSafeArea(.all)
        }
        .navigationViewStyle(StackNavigationViewStyle()) // This helps ensure proper navigation behavior on all devices
    }
}


#Preview {
    HomeView()
}
