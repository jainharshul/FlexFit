import SwiftUI

struct BicepExercisesView: View {
    let exercises: [String: Exercises] = loadExerciseData()
    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("BICEPS")
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
                            NavigationLink(destination: InstructionView(exercises: exercises["SpiderCurl"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("SpiderCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("spider curl".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["BarbellCurl"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("BarBellCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("barbell curl".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                        
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["HammerCurl"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("HammerCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Hammer Curl".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["ConcentrationCurl"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)

                                    VStack {
                                        Image("ConcentrationCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("con. curl".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["DragCurl"]!)){
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("DragCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Drag curl".uppercased())
                                            .padding(.horizontal, 16)
                                            .foregroundColor(.white)
                                            .font(.headline.bold())
                                            .padding(.bottom)
                                    }
                                    .cornerRadius(30)
                                    .shadow(radius: 4)
                                }
                            }
                            
                            
                            
                            NavigationLink(destination: InstructionView(exercises: exercises["ZottmanCurl"]!)) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                        .buttonStyle(PlainButtonStyle())
                                        .opacity(0.5)
                                        .shadow(radius: 4)
                                    
                                    VStack {
                                        Image("ZottmanCurl_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                            .padding(.top)
                                        
                                        Text("Zottman curl".uppercased())
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
    BicepExercisesView()
}
