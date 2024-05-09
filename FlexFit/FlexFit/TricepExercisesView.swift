
import SwiftUI

struct TricepExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()

    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("TRICEPS")
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
                            NavigationLink(destination: InstructionView(exercises: exercises["CablePush"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("PushDown_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Cable push".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["KickBacks"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("KickBack_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("KickBacks".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["SkullCrusher"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("SkullCrusher_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Skull crusher".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["CloseBench"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("CloseGrip_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Close bench".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["TricepExtension"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("TricepExtension_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Tricep ext.".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["Dips"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("Dips_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Dips".uppercased())
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
    TricepExercisesView()
}
