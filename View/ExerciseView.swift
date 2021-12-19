//
//  ExerciseView.swift
//  GymApp
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct ExerciseView: View {
    
    @State private var exercises = [String: String]()
    @State private var exercise = ""
    @State private var numberOfSets = 3
    @State private var numberOfReps = 8
    @State private var weight = ""
    
    var body: some View {
        Form {
            Section(header: Text("Exercise Information")) {
                TextField("Exercise", text: $exercise)
                Stepper("Sets: \(numberOfSets)", value: $numberOfSets, in: 1...6, step: 1)
                Stepper("Reps: \(numberOfReps)", value: $numberOfReps, in: 1...20, step: 1)
                TextField("Weight", text: $weight)
                    .keyboardType(.decimalPad)
            }
        }
        HStack {
            Button(action: {
                // add another form
            }, label: {
                Text("Add Another Exercise")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            Button(action: {
                // save workout and populate to main page
            }, label: {
                Text("Save Workout")
                    .bold()
                    .frame(width: 150, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
    }
}


struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
