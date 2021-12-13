//
//  ContentView.swift
//  Shared
//
//  Created by John Keatings on 2021-12-13.
//

import SwiftUI

struct ContentView: View {
    let workoutAreas = ["Chest/Shoulders", "Legs/Back"]
    let workoutTypes = ["Workout One", "Workout Two"]
    @State private var workoutArea = "Chest/Shoulders"
    @State private var workoutType = "Workout One"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select Training Areas", selection: $workoutArea) {
                    ForEach(workoutAreas, id: \.self) {
                        Text($0)
                    }
                }
                Picker("Select Workout", selection: $workoutType)
                    {
                    ForEach(workoutTypes, id: \.self) {
                        Text($0)
                    }
                }
                Button("Get Started") {
                    print("nice")
                }
            }
            .navigationTitle("Workout")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
