
import SwiftUI

struct AbExercisesView: View {
    
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
                                        Image("FrontPlank_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("front plank".uppercased())
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
                                        Image("LegRaise_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("leg raise".uppercased())
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
                                        Image("Vups_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("V-ups".uppercased())
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
                                        Image("SitUps_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("sit ups".uppercased())
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
                                        Image("CableCrunch_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Cable Crunch".uppercased())
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
                                        Image("BicycleCrunch_image")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .scaledToFit()
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(30)
                                        
                                        Text("Bycicle crunch".uppercased())
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
    AbExercisesView()
}
