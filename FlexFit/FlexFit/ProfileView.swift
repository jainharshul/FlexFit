import SwiftUI

struct ProfileView: View {
    @State private var username: String = UserDefaults.standard.string(forKey: "username") ?? ""
    @State private var bmr: Double = UserDefaults.standard.double(forKey: "bmr")
    @State private var gender: String = UserDefaults.standard.string(forKey: "gender") ?? ""
    @State private var age: String = UserDefaults.standard.string(forKey: "age") ?? ""
    @State private var weight: String = UserDefaults.standard.string(forKey: "weight") ?? ""
    @State private var height: String = UserDefaults.standard.string(forKey: "height") ?? ""
    @State private var bmi: Double = UserDefaults.standard.double(forKey: "bmi")

    var body: some View {
        Form {
            Section(header: Text("User Info")) {
                TextField("Username", text: $username, onCommit: saveProfile)

                Text("Gender: \(gender)")
                Text("Age: \(age)")
                Text("Weight: \(weight) lb")
                Text("Height: \(height) in")

                Text("BMR: \(String(format: "%.2f", bmr)) calories/day")
                Text("BMI: \(String(format: "%.2f", bmi))")
            }

            Button(action: saveProfile) {
                Text("Save Profile")
            }
        }
        .navigationTitle("Profile")
        .onAppear {
            loadProfile()
        }
    }

    private func saveProfile() {
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(bmr, forKey: "bmr")
        UserDefaults.standard.set(gender, forKey: "gender")
        UserDefaults.standard.set(age, forKey: "age")
        UserDefaults.standard.set(weight, forKey: "weight")
        UserDefaults.standard.set(height, forKey: "height")
        UserDefaults.standard.set(bmi, forKey: "bmi")
    }

    private func loadProfile() {
        username = UserDefaults.standard.string(forKey: "username") ?? ""
        bmr = UserDefaults.standard.double(forKey: "bmr")
        gender = UserDefaults.standard.string(forKey: "gender") ?? ""
        age = UserDefaults.standard.string(forKey: "age") ?? ""
        weight = UserDefaults.standard.string(forKey: "weight") ?? ""
        height = UserDefaults.standard.string(forKey: "height") ?? ""
        bmi = UserDefaults.standard.double(forKey: "bmi")
    }
}

#Preview {
    ProfileView()
}
