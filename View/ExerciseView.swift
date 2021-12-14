//
//  ExerciseView.swift
//  GymApp
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct ExerciseView: View {
    
    @State private var exercise = ""
    @State private var numberOfSets = ""
    @State private var numberOfReps = ""
    @State private var weight = ""
    
    var body: some View {
        Form {
            Section(header: Text("Exercise Information")) {
                TextField("Exercise", text: $exercise)
                TextField("Sets", text: $numberOfSets)
                    .keyboardType(.decimalPad)
                TextField("Reps", text: $numberOfReps)
                    .keyboardType(.decimalPad)
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
