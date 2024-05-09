import SwiftUI

struct ChestExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()
    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("CHEST")
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
                            NavigationLink(destination: InstructionView(exercises: exercises["BenchPress"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("BenchPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Bench press".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["PushUps"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)

                                    VStack {
                                        Image("PushUps_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Push ups".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["CableCross"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("CableCrossover_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Cable Cross".uppercased())
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
                                        
                                        Text("dips".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["InclinePress"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("InclinePress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Incline Press".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["MachineFly"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("ChestFly_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Machine Fly".uppercased())
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
    ChestExercisesView()
}


