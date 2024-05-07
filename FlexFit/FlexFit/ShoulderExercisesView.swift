
import SwiftUI

struct ShoulderExercisesView: View {
    
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
                                        Image("OverheadPress_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Over head".uppercased())
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
                                        Image("SideLateral_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Side lateral".uppercased())
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
                                        Image("Facepull_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("facepull".uppercased())
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
                                        Image("ReverseFly_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("reverse fly".uppercased())
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
                                        Image("FrontRaise_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Front raise".uppercased())
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
                                        Image("UprightRow_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("upright row".uppercased())
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
    ShoulderExercisesView()
}
