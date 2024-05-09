
import SwiftUI

struct ShoulderExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()
    
    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("SHOULDERS")
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
                            NavigationLink(destination: InstructionView(exercises: exercises["OverHead"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                
                                    VStack {
                                        Image("OverheadPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Over head".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["SideLateral"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                        
                                    VStack {
                                        Image("SideLateral_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Side lateral".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["FacePull"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                
                                    VStack {
                                        Image("Facepull_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("facepull".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["ReverseFly"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("ReverseFly_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("reverse fly".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["FrontRaise"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("FrontRaise_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Front raise".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["UprightRow"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                    VStack {
                                        Image("UprightRow_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("upright row".uppercased())
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
    ShoulderExercisesView()
}
