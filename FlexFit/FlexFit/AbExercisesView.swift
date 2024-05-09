
import SwiftUI

struct AbExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()
    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("ABS")
                        .font(.title.bold())
                        .padding(.leading)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.gray.opacity(0.2))
                            .frame(height: 80)
                        Text("Please select an exercise you would like to workout")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                    
                    ScrollView {
                        VStack{
                            NavigationLink(destination: InstructionView(exercises: exercises["FrontPlank"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("FrontPlank_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("front plank".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["LegRaise"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("LegRaise_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("leg raise".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["V-Ups"]!)) {
                                    ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("Vups_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("V-ups".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["SitUps"]!)) {
                                    ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("SitUps_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("sit ups".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["CableCrunch"]!)) {
                                    ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("CableCrunch_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Cable Crunch".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["BicycleCrunch"]!)) {
                                    ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("BicycleCrunch_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Bycicle crunch".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            )
    }
}
#Preview {
    AbExercisesView()
}
