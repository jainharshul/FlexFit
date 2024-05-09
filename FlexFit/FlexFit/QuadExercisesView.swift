
import SwiftUI

struct QuadExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()

    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("QUADS")
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
                            NavigationLink(destination: InstructionView(exercises: exercises["BarbellSquat"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                
                                    VStack {
                                        Image("BarbellSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Barbell squat".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["SplitSquat"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                        
                                    VStack {
                                        Image("SplitSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Split Squat".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["LegExtension"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                        
                                    VStack {
                                        Image("LegExtension_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Leg Extension".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["LegPress"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                        
                                    VStack {
                                        Image("LegPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Leg press".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["PistolSquat"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                
                                    VStack {
                                        Image("PistolSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("pistol squat".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["GobletSquat"]!)) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                
                                    VStack {
                                        Image("GobletSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Goblet squat".uppercased())
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
    QuadExercisesView()
}
