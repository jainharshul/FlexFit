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
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.gray.opacity(0.2))
                            .frame(height: 50)
                            .padding(.leading)
                        Text("Please select the muscle you want to workout")
                            .font(.headline)
                            .padding(.top, 10)
                            .foregroundColor(.white)
                    }
                    .padding(.leading)
                    .padding(.horizontal)
                    
                    ScrollView {
                        VStack{
                            NavigationLink(destination: InstructionView(exercises: exercises["BenchPress"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("BenchPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Bench press".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black)
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["PushUps"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("PushUps_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Push ups".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["CableCross"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("CableCrossover_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Cable Cross".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["Dips"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("Dips_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("dips".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["InclinePress"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("InclinePress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Incline Press".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["MachineFly"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("ChestFly_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Machine Fly".uppercased())
                                            .padding(.horizontal, 16)
                                            .padding(8)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(8)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .fixedSize(horizontal: true, vertical: false)
                                            .lineLimit(1)
                                            .frame(maxWidth: 140)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            .buttonStyle(PlainButtonStyle())
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


