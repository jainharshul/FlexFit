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
        
        
            VStack {
                Text(exercises.name)
                    .font(.title.bold())
                    .padding(.leading)
                    
                    .padding(.top, 20)
                Image(exercises.id)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
                Text("Instructions")
                    
                    .font(.title.bold())
                ScrollView{
                Text(exercises.description)
                    .padding()
                    .padding()
                    

                    
            }
        }
        
    }
}

#Preview {
    let exercises: [String: Exercises] = Bundle.main.decode("ExerciseInstructions.json")
    
    return InstructionView(exercises: exercises["BenchPress"]!)
        .preferredColorScheme(.light)
}
