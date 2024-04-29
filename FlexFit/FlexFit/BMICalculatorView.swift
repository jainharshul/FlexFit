//
//  BMICalculatorView.swift
//  FlexFit
//
//  Created by Harshul Jain on 4/27/24.
//

import SwiftUI

struct BMICalculatorView: View {
    @State private var weight: String = ""
    @State private var height: String = ""
    @State private var result: Double?
    @State private var showingResult: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("BMI Calculator")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding()
                .padding()
                .padding(.top)


            HStack {
                Text("Height (in):")
                    .foregroundColor(.white)
                Spacer()
                TextField("Enter height", text: $height)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .keyboardType(.decimalPad)
            }

            HStack {
                Text("Weight (lb):")
                    .foregroundColor(.white)
                Spacer()
                TextField("Enter weight", text: $weight)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .keyboardType(.decimalPad)
            }

            Button("Calculate") {
                calculateBMI()
            }
            .foregroundColor(.white)
            .frame(width: 200, height: 50)
            .background(Rectangle().fill(Color(red: 0.36, green: 0.43, blue: 0.52)))
            .cornerRadius(10)
            .padding()

            if showingResult, let result = result {
                Text("Your BMI is \(String(format: "%.1f", result))")
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

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.22, green: 0.22, blue: 0.22))
        .edgesIgnoringSafeArea(.all)
    }

    func calculateBMI() {
        // BMI is calculated as weight in kilograms divided by height in meters squared.
        // Convert height from inches to meters and weight from pounds to kilograms
        let weightInKg = (Double(weight) ?? 0) * 0.45359237
        let heightInMeters = (Double(height) ?? 0) * 0.0254
        if heightInMeters > 0 {
            result = weightInKg / (heightInMeters * heightInMeters)
            showingResult = true
        }
    }
    
    func resetFields() {
        weight = ""
        height = ""
        result = nil
        showingResult = false // Reset the flag to hide the result
    }
}

#Preview {
    BMICalculatorView()
}
