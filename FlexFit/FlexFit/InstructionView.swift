//
//  InstructionView.swift
//  FlexFit
//
//  Created by csuftitan on 4/18/24.
//

import SwiftUI

struct InstructionView: View {
    
    let exercises: Exercises
    var body: some View{
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
        
            VStack {
                Text(exercises.name)
                    .font(.title.bold())
                    .padding(.leading)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                Image(exercises.id)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                Text("Instructions")
                    .foregroundColor(.white)
                    .font(.title.bold())
                ScrollView{
                Text(exercises.description)
                    .padding()
                    .padding()
                    .foregroundColor(.white)

                    
            }
        }
        )
    }
}

#Preview {
    let exercises: [String: Exercises] = Bundle.main.decode("ExerciseInstructions.json")
    
    return InstructionView(exercises: exercises["BenchPress"]!)
        .preferredColorScheme(.light)
}
