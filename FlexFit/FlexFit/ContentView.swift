//
//  ContentView.swift
//  FlexFit
//
//  Created by Emmanuel Montoya on 4/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
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
                    Button ("Calculate BMR"){  }
                        .foregroundColor(.white)
                        //.buttonStyle(.bordered)
                        .controlSize(.extraLarge)
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    Button ("Calculate BMI"){  }
                        .foregroundColor(.white)
                        //.buttonStyle(.bordered)
                        .controlSize(.extraLarge)
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    Button ("Look up Exercises"){  }
                        .foregroundColor(.white)
                        //.buttonStyle(.bordered)
                        .controlSize(.extraLarge)
                        .frame(width: 200, height: 50)
                        .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52, opacity: 1.0)))
                    }
            }
        .padding()
        .frame(maxHeight: .infinity)
        .background(Rectangle()
            .foregroundColor(Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
