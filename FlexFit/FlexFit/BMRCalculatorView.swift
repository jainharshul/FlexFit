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
                .foregroundColor(.white)
                .padding()

            HStack {
                Text("Age:")
                    .foregroundColor(.white)
                Spacer()
                TextField("Enter age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            HStack {
                Text("Gender:")
                    .foregroundColor(.white)
                Spacer()
                Picker("Gender", selection: $gender) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)
            }

            HStack {
                Text("Height:")
                    .foregroundColor(.white)
                Spacer()
                TextField("Enter height", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            HStack {
                Text("Weight:")
                    .foregroundColor(.white)
                Spacer()
                TextField("Enter weight", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }

            Button("Calculate") {
                calculateBMR()
            }
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52)))
            .cornerRadius(10)
            .padding()
            
            

            HStack {
                Text("Results:")
                    .foregroundColor(.white)
                Spacer()
                Text(result != nil ? "\(result!, specifier: "%.2f") calories/day" : "")
                    .foregroundColor(.white)
                    .frame(width: 150, alignment: .leading)
                    .font(.title3)
            }
            
            if showingResult, let result = result {
                Text("Results: \(String(format: "%.2f", result)) calories/day")
                    .foregroundColor(.white)
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
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
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
    }
    
    func resetFields() {
            weight = ""
            height = ""
            age = ""
            gender = "Male"
            result = nil
            showingResult = false // Reset the flag to hide the result
        }
}

#Preview {
    BMRCalculatorView()
}
