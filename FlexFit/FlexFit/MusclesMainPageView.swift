
import SwiftUI

struct MusclesMainPageView: View {
    
    let muscleGroups: [(destination: AnyView, imageName: String, muscleName: String)] = [
        (destination: AnyView(ChestExercisesView()), imageName: "chest_image", muscleName: "Chest"),
        (destination: AnyView(TricepExercisesView()), imageName: "tricep_image", muscleName: "Triceps"),
        (destination: AnyView(QuadExercisesView()), imageName: "quad_image", muscleName: "Quads"),
        (destination: AnyView(ShoulderExercisesView()), imageName: "shoulder_image", muscleName: "Shoulders"),
        (destination: AnyView(BicepExercisesView()), imageName: "bicep_image", muscleName: "Biceps"),
        (destination: AnyView(AbExercisesView()), imageName: "abdominal_image", muscleName: "Abs")
    ]
    
    var body: some View {
        Color(red: 0.22, green: 0.22, blue: 0.22, opacity: 1.0)
            .edgesIgnoringSafeArea(.all)
            .overlay(
                VStack(alignment: .leading, spacing: 20) {
                    Text("MUSCLE GROUPS")
                        .font(.title.bold())
                        .padding(.leading)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.gray.opacity(0.2))
                            .frame(height: 80)

                        Text("Please select the muscle you would like to workout")
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(radius: 4)

                    }
                    .padding(.horizontal)

                    
                    ScrollView {
                        VStack{
                            ForEach(muscleGroups, id: \.muscleName) { muscleGroup in
                                NavigationLink(destination: muscleGroup.destination) {
                                    ZStack(alignment: .bottom) {
                                        Color.black
                                            .cornerRadius(30)
                                            .buttonStyle(PlainButtonStyle())
                                            .opacity(0.5)
                                            .shadow(radius: 4)
                                        
                                        VStack {
                                            Image(muscleGroup.imageName)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .scaledToFit()
                                                .frame(width: 150, height: 150)
                                                .cornerRadius(30)
                                                .padding(.top)
                                            
                                            Text(muscleGroup.muscleName.uppercased())
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
                        }
                        .padding(.horizontal)
                    }
                }
            )
    }
}


struct MusclesMainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MusclesMainPageView()
    }
}
