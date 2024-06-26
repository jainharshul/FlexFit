import SwiftUI

struct BMRCalculatorView: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var age: String = ""
    @State private var gender: String = "Male"
    @State private var result: Double?
    @State private var showingResult: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("BMR Calculator")
                .font(.largeTitle)
                
                .padding()

            HStack {
                Text("Age:")
                    
                Spacer()
                TextField("Enter age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            HStack {
                Text("Gender:")
                    
                Spacer()
                Picker("Gender", selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            }

            HStack {
                Text("Height(in):")
                    
                Spacer()
                TextField("Enter height (in)", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            HStack {
                Text("Weight(lb):")
                    
                Spacer()
                TextField("Enter weight (lb)", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            Button("Calculate") {
                calculateBMR()
                saveToUserDefaults()
            }
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52)))
            .cornerRadius(10)
            .padding()

            if showingResult, let result = result {
                Text("Results: \(String(format: "%.2f", result)) calories/day")
                    //.foregroundColor(.white)
                    .padding()
            }

            Button("Reset") {
                resetFields()
            }
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Rectangle().fill(Color.red))
            .cornerRadius(10)
            .padding()
            .padding()
            .padding()
            .padding()
            .padding()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .edgesIgnoringSafeArea(.all)
    }
    
    func calculateBMR() {
        let weightInKg = (Double(weight) ?? 0) * 0.453592 // Convert lb to kg
        let heightInCm = (Double(height) ?? 0) * 2.54 // Convert inches to cm
        let ageInt = Double(age) ?? 0

        if gender == "Male" {
            result = 10 * weightInKg + 6.25 * heightInCm - 5 * ageInt + 5
        } else {
            result = 10 * weightInKg + 6.25 * heightInCm - 5 * ageInt - 161
        }
        showingResult = true
    }
    
    func resetFields() {
        weight = ""
        height = ""
        age = ""
        gender = "Male"
        result = nil
        showingResult = false // Reset the flag to hide the result
    }

    func saveToUserDefaults() {
        if let result = result {
            UserDefaults.standard.set(result, forKey: "bmr")
            UserDefaults.standard.set(gender, forKey: "gender")
            UserDefaults.standard.set(age, forKey: "age")
            UserDefaults.standard.set(weight, forKey: "weight")
            UserDefaults.standard.set(height, forKey: "height")
        }
    }
}

#Preview {
    BMRCalculatorView()
}
