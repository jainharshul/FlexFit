//
//  Exercises.swift
//  FlexFit
//
//  Created by csuftitan on 4/18/24.
//

import Foundation


struct Exercises: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
}


func loadExerciseData() -> [String: Exercises] {
    if let url = Bundle.main.url(forResource: "ExerciseInstructions", withExtension: "json"),
       let data = try? Data(contentsOf: url) {
        do {
            let exercises = try JSONDecoder().decode([String: Exercises].self, from: data)
            return exercises
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
    return [:]
}
