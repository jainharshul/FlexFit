
import SwiftUI

struct QuadExercisesView: View {
    
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
                            NavigationLink(destination: ChestExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("BarbellSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Barbell squat".uppercased())
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
                            
                            
                            
                            NavigationLink(destination: TricepExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("SplitSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Split Squat".uppercased())
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
                            
                            
                            
                            NavigationLink(destination: QuadExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("LegExtension_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Leg Extension".uppercased())
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
                            
                            
                            
                            NavigationLink(destination: ShoulderExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("LegPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Leg press".uppercased())
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
                            
                            
                            
                            NavigationLink(destination: BicepExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("PistolSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("pistol squat".uppercased())
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
                            
                            
                            
                            NavigationLink(destination: AbExercisesView()) {
                                ZStack(alignment: .bottom) {
                                    Color.black
                                        .cornerRadius(30)
                                    
                                    VStack {
                                        Image("GobletSquat_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Goblet squat".uppercased())
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
    QuadExercisesView()
}
